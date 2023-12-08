#> {i: int; end: int}

$data modify storage string:internal split.out append string storage string:internal split.str $(i) $(end)

scoreboard players add #split.index string.math 1
scoreboard players add #split.end string.math 1

execute store result storage string:internal split.repeatArgs.i int 1 run scoreboard players get #split.index string.math
execute store result storage string:internal split.repeatArgs.end int 1 run scoreboard players get #split.end string.math

execute if score #split.index string.math < #split.length string.math run function string:split/repeat with storage string:internal split.repeatArgs