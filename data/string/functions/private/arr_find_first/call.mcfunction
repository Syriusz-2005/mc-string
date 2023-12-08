#> string:in {arr: string[]; substr: string}
#> string:out {index: int}

data modify storage string:internal arr_find_first.arr set from storage string:in arr
data modify storage string:internal arr_find_first.substr set from storage string:in substr
data modify storage string:internal arr_find_first.functionReference set value 'private/arr_find_first/on_each_element'

data remove storage string:out index
function string:private/arr_for_each/call with storage string:internal arr_find_first