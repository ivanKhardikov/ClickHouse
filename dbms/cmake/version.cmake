# This strings autochanged from release_lib.sh:
set(VERSION_REVISION 54433)
set(VERSION_MAJOR 20)
set(VERSION_MINOR 3)
set(VERSION_PATCH 5)
set(VERSION_GITHASH 47a2c0728f72035cdd5b791b2c828628ebf585a2)
set(VERSION_DESCRIBE v20.3.5.21-stable)
set(VERSION_STRING 20.3.5.21)
# end of autochange

set(VERSION_EXTRA "" CACHE STRING "")
set(VERSION_TWEAK "" CACHE STRING "")

if (VERSION_TWEAK)
    string(CONCAT VERSION_STRING ${VERSION_STRING} "." ${VERSION_TWEAK})
endif ()

if (VERSION_EXTRA)
    string(CONCAT VERSION_STRING ${VERSION_STRING} "." ${VERSION_EXTRA})
endif ()

set (VERSION_NAME "${PROJECT_NAME}")
set (VERSION_FULL "${VERSION_NAME} ${VERSION_STRING}")
set (VERSION_SO "${VERSION_STRING}")

math (EXPR VERSION_INTEGER "${VERSION_PATCH} + ${VERSION_MINOR}*1000 + ${VERSION_MAJOR}*1000000")

if(YANDEX_OFFICIAL_BUILD)
    set(VERSION_OFFICIAL " (official build)")
endif()
