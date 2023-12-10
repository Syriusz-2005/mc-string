#> string:find_first/call
# @input string:in {str: string; char: char}
# @returns string:out {index: int}
# Finds first char in the string

data remove storage string:out index

function string:split/call

data modify storage string:in arr set from storage string:out split
function string:private/arr_find_first/call