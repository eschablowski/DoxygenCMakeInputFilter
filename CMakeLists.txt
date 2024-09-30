list(APPEND DOXYGEN_FILTER_PATTERNS "*.cmake=\"${CMAKE_COMMAND} -P docs/convert.cmake -- \"")
list(APPEND DOXYGEN_FILE_PATTERNS "*.cmake")
list(APPEND DOXYGEN_EXTENSION_MAPPING "*.cmake=Python")
