#> string:slice/call
# @public
# @macro {start: int; end: int}
# @input string:in {str: string}
# @output string:out {str: string}
# Slices the given string just like the string source in data command except with dynamic arguments:)
# #### Example usage
# ```mcfunction
# data modify storage string:in str set value 'My string'
# function string:slice/call {start: 3, end: 9}
# data get storage string:out str
# # storage will contain 'string'
# ```
#

$data modify storage string:out str set string storage string:in str $(start) $(end)