DESCRIPTION = "Universal API Multiplexer"
SECTION = "net"
LICENSE = "MPL-2.0"
LIC_FILES_CHKSUM = "file://LICENSE;md5=815ca599c9df247a0c7f619bab123dad"

PR = "r1"

inherit mix

APPNAME = "${PN}"
APPVERSION = "${PV}"

REL_NAME = "${APPNAME}"
REL_VSN = "0.2.3"

APP_PREFIX = "/usr/caros-apps"
SYSCONFIG_PREFIX = "${sysconfdir}"

SRC_URI = "git://github.com/carosio/unimux.git;protocol=git"

SRCREV = "368e47dcc52ce02b65228a42679d6dea40b2ff24"

S = "${WORKDIR}/git"

SYSTEMD_UNIT_NAME = "${APPNAME}"
