# DoxygenCMakeInputFilter
A small CMake Script to create Doxygen documentation for CMake

## How it works
It replaces all function/macro definitions with python function declarations, and sets the Doxygen parsing of cmake files to python. That's it.

## Example
```cmake
## @package cmake
#  Documentation for this module.
#
#  More details.

## Documentation for a function.
#
#  More details.
# @param arg1 Description of the first argument.
macro(hello_world args)
    message("Hello, World!")
    
endfunction(pyexample_test args)
```

This gets parsed to:
```python
## @package cmake
#  Documentation for this module.
#
#  More details.

## Documentation for a function.
#
#  More details.
# @param arg1 Description of the first argument.
def hello_world(args)
    message("Hello, World!")
    
endfunction(pyexample_test args)
```
