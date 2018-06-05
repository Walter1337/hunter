# !!! DO NOT PLACE HEADER GUARDS HERE !!!

include(hunter_add_version)
include(hunter_cacheable)
include(hunter_cmake_args)
include(hunter_download)
include(hunter_pick_scheme)

hunter_add_version(
    PACKAGE_NAME
    wxWidgets
    VERSION
    "3.0.2"
    URL
    "https://github.com/Walter1337/wxWidgetsCustom/archive/v3.0.2.tar.gz"
    SHA1
	52d7a5882678a8b0acb6e3808c279d406c2043fb
)

hunter_pick_scheme(DEFAULT url_sha1_cmake)

hunter_cmake_args(
    wxWidgets
    CMAKE_ARGS
        
	WXBUILD_SYSTEM_ZLIB=ON
	WXBUILD_SYSTEM_JPEG=ON
	WXBUILD_SYSTEM_PNG=ON
	WXBUILD_SYSTEM_TIFF=ON
	WXBUILD_SYSTEM_EXPAT=ON
)

hunter_cacheable(wxWidgets)

hunter_download(PACKAGE_NAME wxWidgets)
