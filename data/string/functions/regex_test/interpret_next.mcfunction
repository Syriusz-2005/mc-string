#> string:regex_test/interpret_next
# @private
# @input string:internal regex_test.interpret {strArray: string}
# @input string:in {tokenTree: Token}
# @macro {anchor: int}

execute if score #anchor string.math >= #strLength string.math run return 0

function string:regex_test/interpret_token with storage string:internal regex_test.interpret.macro

$scoreboard players set #anchor string.math $(anchor)
scoreboard players add #anchor string.math 1
execute store result storage string:internal regex_test.interpret.macro.anchor int 1 run scoreboard players get #anchor string.math
function string:regex_test/interpret_next with storage string:internal regex_test.interpret.macro