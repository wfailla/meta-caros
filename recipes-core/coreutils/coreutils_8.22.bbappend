PR := "${PR}.1"

PROVIDES += "df"
RPROVIDES_${PN}-df += "df"
PACKAGES =+ "${PN}-df"

ALTERNATIVE_${PN}-df = "df"
ALTERNATIVE_LINK_NAME[df] = "${USRBINPATH}/df"
ALTERNATIVE_TARGET[df] = "${USRBINPATH}/df.coreutils"
ALTERNATIVE_PRIORITY = "100"

FILES_${PN}-df = "${USRBINPATH}/df.coreutils \
                ${USRBINPATH}/df "

PROVIDES += "du"
RPROVIDES_${PN}-df += "du"
PACKAGES =+ "${PN}-du"

ALTERNATIVE_${PN}-du = "du"
ALTERNATIVE_LINK_NAME[du] = "${USRBINPATH}/du"
ALTERNATIVE_TARGET[du] = "${USRBINPATH}/du.coreutils"
ALTERNATIVE_PRIORITY = "100"

FILES_${PN}-du = "${USRBINPATH}/df.coreutils \
                ${USRBINPATH}/df "

PROVIDES += "sort"
RPROVIDES_${PN}-df += "sort"
PACKAGES =+ "${PN}-sort"

ALTERNATIVE_${PN}-sort = "sort"
ALTERNATIVE_LINK_NAME[sort] = "${USRBINPATH}/sort"
ALTERNATIVE_TARGET[sort] = "${USRBINPATH}/sort.coreutils"
ALTERNATIVE_PRIORITY = "100"

FILES_${PN}-sort = "${USRBINPATH}/sort.coreutils \
                ${USRBINPATH}/sort "


root@74d36d57cbdc:/REDO/build/tmp/work/core2-64-caros-linux/coreutils# find . -name "du.co*"
./8.22-r0/package/usr/bin/.debug/du.coreutils
./8.22-r0/package/usr/bin/du.coreutils
./8.22-r0/packages-split/coreutils/usr/bin/du.coreutils
./8.22-r0/packages-split/coreutils-dbg/usr/bin/.debug/du.coreutils
root@74d36d57cbdc:/REDO/build/tmp/work/core2-64-caros-linux/coreutils# find . -name "sleep.cor*"
./8.22-r0/image/bin/sleep.coreutils
./8.22-r0/package/bin/.debug/sleep.coreutils
./8.22-r0/package/bin/sleep.coreutils
./8.22-r0/packages-split/coreutils/bin/sleep.coreutils
./8.22-r0/packages-split/coreutils-dbg/bin/.debug/sleep.coreutils
./8.22-r0.1/image/bin/sleep.coreutils
./8.22-r0.1/packages-split/coreutils-dbg/bin/.debug/sleep.coreutils
./8.22-r0.1/packages-split/coreutils/bin/sleep.coreutils
./8.22-r0.1/package/bin/.debug/sleep.coreutils
./8.22-r0.1/package/bin/sleep.coreutils
./8.22-r0.2/image/bin/sleep.coreutils
./8.22-r0.2/packages-split/coreutils-dbg/bin/.debug/sleep.coreutils
./8.22-r0.2/packages-split/coreutils/bin/sleep.coreutils
./8.22-r0.2/package/bin/.debug/sleep.coreutils
./8.22-r0.2/package/bin/sleep.coreutils
