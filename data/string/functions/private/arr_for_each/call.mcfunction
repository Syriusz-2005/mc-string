#> {arr: any[]; functionReference: string}
# @private this function is designed for internal usage only
# Every call to the *function reference* contains index i and element as macro params
# the function callback returning 1 causes the loop to stop just like with *break* keyword

scoreboard players set #index string.math 0
execute store result score #arrLength string.math run data get storage string:in arr

data modify storage string:internal arr_for_each.functionReference set from storage string:in functionReference
data modify storage string:internal arr_for_each.arr set from storage string:in arr

execute store result storage string:internal arr_for_each.i int 1 run scoreboard players get #index string.math

scoreboard players set #callbackResult string.math 0 
function string:private/arr_for_each/loop with storage string:internal arr_for_each