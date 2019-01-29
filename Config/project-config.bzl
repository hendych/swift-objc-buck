
## Project Configs

SHARED_CONFIGS = {
    "IPHONEOS_DEPLOYMENT_TARGET": "9.0",  # common target version
    "SDKROOT": "iphoneos", # platform
    "SWIFT_WHOLE_MODULE_OPTIMIZATION": "YES",  # for build performance
    "ALWAYS_EMBED_SWIFT_STANDARD_LIBRARIES": "YES",
    "LD_RUNPATH_SEARCH_PATHS": "@executable_path/Frameworks", # To allow source files in binary
}


DEBUG_CONFIGS = SHARED_CONFIGS + {
    "GCC_OPTIMIZATION_LEVEL": "0",  # clang optimization
    "SWIFT_OPTIMIZATION_LEVEL": "-Onone",  # swiftc optimization
    "ONLY_ACTIVE_ARCH": "YES",
    "GCC_SYMBOLS_PRIVATE_EXTERN": "NO",
}


RELEASE_CONFIGS = SHARED_CONFIGS + {
    "GCC_OPTIMIZATION_LEVEL": "s",  # clang optimization: Fastest, Smallest
    "SWIFT_OPTIMIZATION_LEVEL": "-O",  # swiftc optimization: Optimize for Speed
    "ONLY_ACTIVE_ARCH": "NO",
}


BUNDLE_IDENTIFIER = "com.sample."


## Public Methods

def binary_configs(name):
    binary_specific_config = {
        "DEVELOPMENT_LANGUAGE": "Swift",
        "PRODUCT_BUNDLE_IDENTIFIER": BUNDLE_IDENTIFIER + name,
    }
    configs = {
        "Debug": DEBUG_CONFIGS + binary_specific_config,
        "Profile": RELEASE_CONFIGS + binary_specific_config,
    }

    return configs


def library_configs(name):
    lib_specific_config = {
        "SWIFT_WHOLE_MODULE_OPTIMIZATION": "YES",
    }
    configs = {
        "Debug": DEBUG_CONFIGS + lib_specific_config,
        "Profile": RELEASE_CONFIGS + lib_specific_config,
    }

    return configs


def test_configs(name):
    test_specific_config = {
        "LD_RUNPATH_SEARCH_PATHS": "@executable_path/Frameworks @loader_path/Frameworks",
        "PRODUCT_BUNDLE_IDENTIFIER": BUNDLE_IDENTIFIER + name,
    }
    configs = {
        "Debug": DEBUG_CONFIGS + test_specific_config,
        "Profile": RELEASE_CONFIGS + test_specific_config,
    }

    return configs


## Private Methods

def bridging_header_from(name):
    bridging_header_name = name.replace(" ", "_") + "-Bridging-Header.h"

    return bridging_header_name
