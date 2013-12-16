###############################################
## PROJECT SETUP
###############################################
CMAKE_MINIMUM_REQUIRED(VERSION 2.8)

PROJECT("My C Project")

###############################################
## OUTPUT DIRECTORY SETUP
###############################################
SET (CMAKE_LIBRARY_OUTPUT_DIRECTORY
	${PROJECT_BINARY_DIR}/bin
	CACHE PATH
	"Single directory for all libraries"
	)
   
SET (CMAKE_RUNTIME_OUTPUT_DIRECTORY
	${PROJECT_BINARY_DIR}/bin
	CACHE PATH
	"Single directory for all executable and dll"
	)

SET (CMAKE_ARCHIVE_OUTPUT_DIRECTORY
	${PROJECT_BINARY_DIR}/lib
	CACHE PATH
	"Single directory for all static libraries"
	)


###############################################
## COMPILER SETTING
###############################################
SET(CMAKE_RC_COMPILER "gcc")
STRING(REGEX MATCH ".*/(.*gcc)"  STROUT ${CMAKE_C_COMPILER})
SET(TARGET_PLATFORM "${CMAKE_MATCH_1}")
SET(CMAKE_BUILD_TYPE Debug)

## SET FLAGS
SET(OPTIMIZATION "-Od")

## Should we remove -Wall flag??
#SET(CMAKE_C_FLAGS             "-Wall -ARCH=sm_21")
#SET(CMAKE_CXX_FLAGS           "-Wall -std=c++0x")	
#SET(CMAKE_EXE_LINKER_FLAGS    "-pg")
#SET(CMAKE_C_FLAGS             "-ARCH=sm_21")
SET(CMAKE_CXX_FLAGS           "")	
SET(CMAKE_EXE_LINKER_FLAGS    "")

IF(UNIX AND NOT WIN32)
    SET(CMAKE_C_FLAGS "${CMAKE_C_FLAGS} -pg -lm -ARCH=sm_21 -D _LINUX")
    SET(CMAKE_CXX_FLAGS "${CMAKE_CXX_FLAGS} -pg -lm -std=c++0x -D _LINUX")	
 	SET(CMAKE_EXE_LINKER_FLAGS "${CMAKE_EXE_LINKER_FLAGS} -lm -pg")
ENDIF(UNIX AND NOT WIN32)

SET(CMAKE_C_FLAGS ${CMAKE_C_FLAGS})
SET(CMAKE_CXX_FLAGS ${CMAKE_CXX_FLAGS})	
SET(CMAKE_EXE_LINKER_FLAGS ${CMAKE_EXE_LINKER_FLAGS})

###############################################
## CTEST SETTING
###############################################	
ENABLE_TESTING()
INCLUDE(ProjectTest.cmake)
INCLUDE(CTest)

###############################################
## SUBDIRECTORY
###############################################	
ADD_SUBDIRECTORY(src)
ADD_SUBDIRECTORY(doc)
