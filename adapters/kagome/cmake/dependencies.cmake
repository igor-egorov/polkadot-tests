hunter_add_package(yaml-cpp)
find_package(yaml-cpp REQUIRED)

# Fix inconsistency between hunterized and upstream package (+ CMake oddity fix)
if(NOT TARGET yaml-cpp)
  set_target_properties(yaml-cpp::yaml-cpp PROPERTIES IMPORTED_GLOBAL true)
  add_library(yaml-cpp ALIAS yaml-cpp::yaml-cpp)
endif()

hunter_add_package(kagome)
find_package(kagome REQUIRED CONFIG)

hunter_add_package(soralog)
find_package(soralog REQUIRED CONFIG)


message(STATUS "Found kagome: ${kagome_INCLUDE_DIRS}")
message(STATUS "Found soralog: ${soralog_FOUND} ${soralog_LIBRARIES}")

# the deps below are required to be listed despite kagome enumerates them too
find_package(Boost REQUIRED random filesystem program_options)
find_package(leveldb REQUIRED)
find_package(xxhash REQUIRED)
find_package(binaryen REQUIRED)
find_package(OpenSSL REQUIRED)
find_package(Protobuf REQUIRED)
find_package(RapidJSON REQUIRED)
find_package(Microsoft.GSL REQUIRED)
find_package(schnorrkel_crust REQUIRED)
find_package(jsonrpc-lean REQUIRED)
find_package(tsl_hat_trie REQUIRED)
find_package(Boost.DI REQUIRED)
find_package(c-ares REQUIRED)
find_package(libp2p REQUIRED)
find_package(libsecp256k1 REQUIRED)
find_package(fmt REQUIRED)
