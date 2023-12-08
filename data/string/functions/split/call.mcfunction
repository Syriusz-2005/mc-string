#> {str: string}

data modify storage string:internal split.str set from storage string:in str

scoreboard players set #split.index string.math 0
scoreboard players set #split.end string.math 1 
execute store result score #split.length string.math run data get storage string:internal split.str
data modify storage string:internal split.out set value [] 

function string:split/repeat {i: 0, end: 1}

data modify storage string:out split set from storage string:internal split.out