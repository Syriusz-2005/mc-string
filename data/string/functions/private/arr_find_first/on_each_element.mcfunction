#> {i: int; element: string}

$data modify storage string:in str1 set from storage string:internal arr_for_each.arr[$(i)]
data modify storage string:in str2 set from storage string:internal arr_find_first.substr
execute store result score #isEqual string.math run function string:equals/call

$execute if score #isEqual string.math matches 1 run data modify storage string:out index set value $(i)
execute if score #isEqual string.math matches 1 run return 1