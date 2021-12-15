cmake_minimum_required(VERSION 3.3)
project(tile2png)

find_package(PNG REQUIRED)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES
    main.cpp
)

add_executable(tile2png ${SOURCE_FILES})


include_directories(${PNG_INCLUDE_DIR})
target_link_libraries(tile2png ${PNG_LIBRARY} -lz)

