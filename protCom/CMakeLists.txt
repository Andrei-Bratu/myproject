cmake_minimum_required(VERSION 3.5)
project(protCom)

set(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -std=c++11")

set(SOURCE_FILES
    kreceiver.c
    ksender.c
    lib.h doPackage.c doPackage.h)

add_executable(protCom ${SOURCE_FILES} doPackage.c doPackage.h)