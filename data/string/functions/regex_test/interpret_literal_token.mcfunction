#> string:regex_test/interpret_literal_token
# @internal
# @input string:internal regex_test.interpret {strArray: string}
# @input string:in {token: LiteralToken}
# @output #tokenResult string.math
# @macro {anchor: int}

# $say interpreting the literal token for $(anchor)

$data modify storage string:internal regex_test.interpret.currentChar set from storage string:internal regex_test.interpret.strArray[$(anchor)]
data modify storage string:internal regex_test.interpret.expectedChar set from storage string:in token.char

data modify storage string:in str1 set from storage string:internal regex_test.interpret.currentChar
data modify storage string:in str2 set from storage string:internal regex_test.interpret.expectedChar

execute store result score #tokenResult string.math run function string:equals/call


# moving the local anchor one step
scoreboard players add #currAnchor string.math 1