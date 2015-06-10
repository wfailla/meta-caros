PR := "${PR}.1"

PROVIDES += "sleep"
RPROVIDES_${PN}-sleep += "sleep"
PACKAGES =+ "${PN}-sleep"

ALTERNATIVE_${PN}-sleep = "sleep"
ALTERNATIVE_LINK_NAME[sleep] = "${base_bindir}/sleep"
ALTERNATIVE_TARGET[sleep] = "${base_bindir}/sleep.coreutils"
ALTERNATIVE_PRIORITY = "100"

FILES_${PN}-sleep = "${base_bindir}/sleep.coreutils \
                ${base_bindir}/sleep "
