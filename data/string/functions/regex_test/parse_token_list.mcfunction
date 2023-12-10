#> {index: int; strLength: number; pathToToken: string}
# @input string:in {str: string; strArray: char[]}
# @output string:out $(pathToToken)

$scoreboard players set #currentIndex string.math $(index)
$execute if score #currentIndex string.math matches 0 run data modify storage string:out $(pathToToken) set value {type: 0, tokens: []}
execute if score #strLength string.math <= #currentIndex string.math run return 1

function string:regex_test/parse_literal_token with storage string:out

scoreboard players add #currentIndex string.math 1
execute store result storage string:out index int 1 run scoreboard players get #currentIndex string.math
function string:regex_test/parse_token_list with storage string:out