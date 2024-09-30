file(READ "${CMAKE_ARGV4}" FILE)



# Replace argumentless macros and functions with Python functions
string(REGEX REPLACE
    "(\n[\t ]*)(macro|function)\\( *([a-zA-Z_][a-zA-Z0-9_]*) *\\)"
    "\\1def \\3():"
    FILE
    "${FILE}")

# Replace macros and functions with arguments with Python functions
string(REGEX REPLACE
    "(\n[\t ]*)(macro|function)\\( *([a-zA-Z_][a-zA-Z0-9_]*) *([a-zA-Z_][a-zA-Z0-9_]*( *)?)+\\)"
    "\\1def \\3(\\4):"
    FILE
    "${FILE}")

execute_process(COMMAND ${CMAKE_COMMAND} -E echo "${FILE}")
