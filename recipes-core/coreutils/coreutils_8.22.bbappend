PR := "${PR}.1"

PROVIDES += "df"
RPROVIDES_${PN}-df += "df"
PACKAGES =+ "${PN}-df"

ALTERNATIVE_${PN}-df = "df"
ALTERNATIVE_LINK_NAME[df] = "${base_bindir}/df"
ALTERNATIVE_TARGET[df] = "${base_bindir}/df.coreutils"
ALTERNATIVE_PRIORITY = "100"

FILES_${PN}-df = "${base_bindir}/df.coreutils \
                ${base_bindir}/df "

PROVIDES += "du"
RPROVIDES_${PN}-df += "du"
PACKAGES =+ "${PN}-du"

ALTERNATIVE_${PN}-du = "du"
ALTERNATIVE_LINK_NAME[du] = "${base_bindir}/du"
ALTERNATIVE_TARGET[du] = "${base_bindir}/du.coreutils"
ALTERNATIVE_PRIORITY = "100"

FILES_${PN}-du = "${base_bindir}/df.coreutils \
                ${base_bindir}/df "

PROVIDES += "sort"
RPROVIDES_${PN}-df += "sort"
PACKAGES =+ "${PN}-sort"

ALTERNATIVE_${PN}-sort = "sort"
ALTERNATIVE_LINK_NAME[sort] = "${base_bindir}/sort"
ALTERNATIVE_TARGET[sort] = "${base_bindir}/sort.coreutils"
ALTERNATIVE_PRIORITY = "100"

FILES_${PN}-sort = "${base_bindir}/sort.coreutils \
                ${base_bindir}/sort "