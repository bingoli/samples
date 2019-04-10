cmake_minimum_required(VERSION 3.2)
set(CMAKE_CXX_STANDARD 11)
set(CMAKE_CXX_STANDARD_REQUIRED True)
set(EXE_NAME demo)
PROJECT(${EXE_NAME})

add_subdirectory(a)
add_subdirectory(b)



AUX_SOURCE_DIRECTORY(. DIR_SRCS)
ADD_EXECUTABLE(${EXE_NAME} ${DIR_SRCS})

target_link_libraries(${EXE_NAME} a b)

SET(CMAKE_BUILD_TYPE "Debug")

# SET(CMAKE_CXX_FLAGS_DEBUG "$ENV{CXXFLAGS} -O0 -Wall -g2 -ggdb")