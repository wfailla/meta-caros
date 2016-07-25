SUMMARY = "A test service using hello"
Description = "A test service using hello: You can use it to mock a server which normally use hello for testing and benchmarking your client application."
HOMEPAGE = "https://github.com/travelping/hello_test_server"
LICENSE = "other"
LIC_FILES_CHKSUM = "file://LICENSE;md5=815ca599c9df247a0c7f619bab123dad"
SECTION = "console/tools"

PR = "r1"

inherit caros-app-mix

SRC_URI = "git://github.com/travelping/hello_test_server.git"
SRCREV = "48420349f5fcb37c91ca3c994c81b637384210ca"

REL_NAME = "hello_test_server"
REL_VSN = "0.2.0"
