cmake_minimum_required( VERSION 2.8 )

project( eigen )

include_directories("/usr/include/eigen3")

add_executable( eigenMatrix eigenMatrix.cpp )
add_executable( useGeometry useGeometry.cpp )
add_executable( coordinateTransform coordinateTransform.cpp )

find_package( Pangolin )
include_directories( ${Pangolin_INCLUDE_DIRS} )
add_executable( visualizeGeometry visualizeGeometry.cpp )
add_executable( plotTrajectory plotTrajectory.cpp )
target_link_libraries( visualizeGeometry ${Pangolin_LIBRARIES} )
target_link_libraries( plotTrajectory ${Pangolin_LIBRARIES} )


