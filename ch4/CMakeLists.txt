cmake_minimum_required( VERSION 2.8 )

project(useSophus)
set(CMAKE_CXX_STANDARD 17)
set(CMAKE_CXX_STANDARD_REQUIRED ON)

find_package(Sophus REQUIRED)
include_directories( ${Sophus_INCLUDE_DIRS} ) # sohpus is header only

include_directories("/usr/include/eigen3")

add_executable(useSophus useSophus.cpp)
