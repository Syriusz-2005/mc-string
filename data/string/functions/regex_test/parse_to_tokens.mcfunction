#> string:in {str: string; pathToToken: string}
# @output string:out $(pathToToken)


execute store result storage string:out strLength int 1 run data get storage string:in str
data modify storage string:out pathToToken set from storage string:in pathToToken
execute store result score #strLength string.math run data get storage string:in str

function string:split/call
data modify storage string:in strArray set from storage string:out split


## parsing the alternate token
data modify storage string:in char set value '|'
data remove storage string:out index
function string:find_first/call
execute if data storage string:out index run function string:regex_test/parse_alternate_token with storage string:out
execute if data storage string:out index run return 1


data modify storage string:out index set value 0
function string:regex_test/parse_token_list with storage string:out