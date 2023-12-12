#> string:regex_test/interpret_token
# @internal
# @input string:internal regex_test.interpret {strArray: string}
# @input string:in {token: Token}
# @output #tokenResult string.math
# @macro {anchor: int}

# $say interpreting generic token, anchor: $(anchor)

$scoreboard players set #currAnchor string.math $(anchor)
$data modify storage string:internal regex_test.interpret.macro.anchor set value $(anchor)

execute store result score #tokenType string.math run data get storage string:in token.type
scoreboard players set #tokenResult string.math 0

execute if score #tokenType string.math = %alternateToken string.math run function string:regex_test/interpret_alternate_token with storage string:internal regex_test.interpret.macro

#testing for all available tokens
execute if score #tokenType string.math = %literalToken string.math run function string:regex_test/interpret_literal_token with storage string:internal regex_test.interpret.macro

execute if score #tokenType string.math = %tokenList string.math run function string:regex_test/interpret_list_token with storage string:internal regex_test.interpret.macro
