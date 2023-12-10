#> string:regex_test/interpret_token
# @private
# @input string:internal regex_test.interpret {strArray: string}
# @input string:in {token: Token}
# @output #tokenResult string.math
# @macro {anchor: int}


$scoreboard players set #currAnchor string.math $(anchor)

execute store result score #tokenType string.math run data get storage string:in token.type
scoreboard players set #tokenResult string.math 0

#testing for all available tokens
execute if score #tokenType string.math = %literalToken string.math run function string:regex_test/interpret_literal_token with storage string:internal regex_test.interpret.macro

execute if score #tokenType string.math = %tokenList string.math run function string:regex_test/interpret_list_token with storage string:internal regex_test.interpret.macro
