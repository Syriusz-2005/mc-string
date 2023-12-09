#> {i: int; functionReference: string}
#> the function returning 0 causes the function to break (Just like break keyword)

execute if score #index string.math >= #arrLength string.math run return 1

$data modify storage string:internal arr_for_each.element set from storage string:internal arr_for_each.arr[$(i)]
$execute store result score #callbackResult string.math run function $(functionReference) with storage string:internal arr_for_each

execute if score #callbackResult string.math matches 1 run return 1

scoreboard players add #index string.math 1
execute store result storage string:internal arr_for_each.i int 1 run scoreboard players get #index string.math
function string:private/arr_for_each/loop with storage string:internal arr_for_each
