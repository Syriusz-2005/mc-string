#> string:private/arr_find_first/call
# @private
# @input string:in {arr: char[]; char: string}
# @output string:out {index: int}
#
# Finds first element in the char array


data modify storage string:internal arr_find_first.arr set from storage string:in arr
data modify storage string:internal arr_find_first.substr set from storage string:in char
data modify storage string:internal arr_find_first.functionReference set value 'string:private/arr_find_first/on_each_element'


data remove storage string:out index
data modify storage string:in arr set from storage string:internal arr_find_first.arr
data modify storage string:in functionReference set from storage string:internal arr_find_first.functionReference
function string:private/arr_for_each/call