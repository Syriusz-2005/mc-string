#> string:split/call
# @input string:in {str: string}
# @output string:out split
#
# Splits the string into char array
# #### Example usage
# ```mcfunction
# data modify storage string:in str set value 'My string!'
# function string:split/call
# data get storage string:out split
# # ['M', 'y', ' ', 's', 't', 'r', 'i', 'n', 'g', '!'] 
# ```

data modify storage string:internal split.str set from storage string:in str

scoreboard players set #split.index string.math 0
scoreboard players set #split.end string.math 1 
execute store result score #split.length string.math run data get storage string:internal split.str
data modify storage string:internal split.out set value [] 

function string:split/repeat {i: 0, end: 1}

data modify storage string:out split set from storage string:internal split.out