SUMMARY = "A test service using hello"
Description = "A test service using hello: You can use it to mock a server which normally use hello for testing and benchmarking your client application."
HOMEPAGE = "https://github.com/travelping/hello_test_server"
LICENSE = "other"
SECTION = "console/tools"

PR = "r1"

inherit caros-app-mix

SRC_URI = "git@github.com:travelping/hello_test_server.git"
SRCREV = "7c40d6e62ca3e420f2aebb5b844f9d120955d3bd"

REL_NAME = "hello_test_server"
REL_VSN = "0.2.0"
