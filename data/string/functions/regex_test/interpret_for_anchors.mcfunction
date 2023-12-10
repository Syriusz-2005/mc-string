#> string:regex_test/interpret_for_anchors
# @internal
# @input string:internal regex_test.interpret {strArray: string}
# @input string:in {tokenTree: Token}
# @output #tokenResult string.math
# @macro {anchor: int}

execute if score #anchor string.math >= #strLength string.math run return 0
# $say $(anchor)
data modify storage string:in token set from storage string:in tokenTree
function string:regex_test/interpret_token with storage string:internal regex_test.interpret.macro
execute if score #tokenResult string.math matches 1 run return 1

$scoreboard players set #anchor string.math $(anchor)
scoreboard players add #anchor string.math 1
execute store result storage string:internal regex_test.interpret.macro.anchor int 1 run scoreboard players get #anchor string.math
function string:regex_test/interpret_for_anchors with storage string:internal regex_test.interpret.macro