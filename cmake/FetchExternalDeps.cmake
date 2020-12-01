Include(FetchContent)


# -----------------------------------------------------------------------------
# Fetching Catch2 (only if the BUILD_TESTING variable has been set to true)
# -----------------------------------------------------------------------------
if (BUILD_TESTING)
  FetchContent_Declare(
    Catch2
    GIT_REPOSITORY https://github.com/catchorg/Catch2.git
    GIT_TAG        v2.13.3)

  message(STATUS "    Catch2 (v2.13.3)")
  FetchContent_MakeAvailable(Catch2)

  list(APPEND CMAKE_MODULE_PATH ${catch2_SOURCE_DIR}/contrib)
  include(CTest)
  include(Catch)
endif()