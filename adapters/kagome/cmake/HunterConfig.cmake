#Copyright (c) 2019 Web3 Technologies Foundation
#
#This file is part of Polkadot Host Test Suite
#
#Polkadot Host Test Suite is free software: you can redistribute it and/or modify
#it under the terms of the GNU General Public License as published by
#the Free Software Foundation, either version 3 of the License, or
#(at your option) any later version.
#
#Polkadot Host Tests is distributed in the hope that it will be useful,
#but WITHOUT ANY WARRANTY; without even the implied warranty of
#MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
#GNU General Public License for more details.
#
#You should have received a copy of the GNU General Public License
#along with Foobar.  If not, see <https://www.gnu.org/licenses/>.

# The version of kagome to be tested
hunter_config(kagome
  GIT_SUBMODULE hosts/kagome
  CMAKE_ARGS TESTING=OFF
)

hunter_config(soralog
    URL  "https://github.com/igor-egorov/soralog/archive/0e2882f82857c59f49394083fffaf4a6c52b6bcf.tar.gz"
    SHA1 "0785cf125d861677b970734bade6cecf04898d97"
    CMAKE_ARGS TESTING=OFF EXAMPLES=OFF EXPOSE_MOCKS=ON
    KEEP_PACKAGE_SOURCES
    )

# Extend local hunter config with kagome's settings
include(
  ${CMAKE_SOURCE_DIR}/../../hosts/kagome/cmake/Hunter/config.cmake
  OPTIONAL RESULT_VARIABLE HUNTER_CONFIG_FOUND
)

if(NOT HUNTER_CONFIG_FOUND)
  message(WARNING "Failed to include Hunter config of Kagome")
endif()
