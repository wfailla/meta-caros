#####################################################
# For this class these variables must be set:
#
# APP_PREFIX          (default is "/opt/apps")
# APPNAME             (default is "${PN}")
# APPVERSION          (default is "${PV}")
# APP_CONTROL         (default is "/usr/caros-apps/libexec/appctl.sh")
#####################################################

inherit systemd

RDEPENDS_${PN} += " app-mgmt "

APPNAME ??= "${PN}"
APPVERSION ??= "${PV}"
APP_PREFIX ??= "/opt/apps"

APP_CONTROL ?= "/usr/caros-apps/libexec/appctl.sh"

PACKAGESPLITFUNCS_prepend = "carossrv_populate_packages carossrv_app "

# this basically undoes systemd.bbclass' service-controlling
# postinst+prerm, by "defusing" systemctl executable
# the implicit daemon-reload from enable+disable stays.
python carossrv_populate_packages() {
    pkg = d.getVar('PN', True)

    sysctl = "systemctl() {\n[ \"$1\" = disable -o \"$1\" = enable ] && /bin/systemctl daemon-reload \n}\n"

    postinst = d.getVar('pkg_postinst_%s' % pkg, True)
    if not postinst:
        postinst = '#!/bin/sh\n'
    postinst += "#!/bin/sh\n# no-op\n%s\n"%sysctl
    d.setVar('pkg_postinst_%s'%pkg, postinst)

    prerm = d.getVar('pkg_prerm_%s' % pkg, True)
    if not prerm:
        prerm = '#!/bin/sh\n'
    prerm += "#!/bin/sh\n# no-op\n%s\n"%sysctl
    d.setVar('pkg_prerm_%s'%pkg, prerm)
}

python carossrv_app () {
    carosService = d.getVar('CAROS_APP_SERVICE_${PN}', True)

    if carosService == None:
        return
    elif ".service" in carosService:
        d.setVar('SYSTEMD_SERVICE_${PN}', carosService)
    else:
        return

    systemdUnitName = carosService.split('.')[0]

    f = open('${APP_CONTROL_FILES}/app-template.service', 'r')
    data = f.read()
    f.close()

    description = d.getVar("DESCRIPTION", True)
    summary = d.getVar("SUMMARY", True)
    appname = d.getVar("APPNAME", True)
    appversion = d.getVar("APPVERSION", True)
    app_prefix = d.getVar("APP_PREFIX", True)
    app_control = d.getVar("APP_CONTROL", True)

    newdata = data.replace('@@DESCRIPTION@@', description)
    newdata = newdata.replace('@@SUMMARY@@', summary)
    newdata = newdata.replace('@@APPNAME@@', appname)
    newdata = newdata.replace('@@APPVERSION@@', appversion)
    newdata = newdata.replace('@@APP_PREFIX@@', app_prefix)
    newdata = newdata.replace('@@APP_CONTROL@@', app_control)
    newdata = newdata.replace('@@SYSTEMD_UNIT_NAME@@', systemdUnitName)

    if False == os.path.exists('${D}${systemd_unitdir}/system'):
        os.makedirs('${D}${systemd_unitdir}/system')

    f = open('${D}${systemd_unitdir}/system/{name}.service'.format(name=systemdUnitName), 'w')
    f.write(newdata)
    f.close()

    files = d.getVar('FILES_${PN}', True)
    d.setVar('FILES_${PN}', '{files} ${systemd_unitdir}/system/{name}.service'.format(files=files, name=systemdUnitName))
}

