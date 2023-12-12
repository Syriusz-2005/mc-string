#> string:regex_test/interpret
# @public
# @input string:in {tokenTree: Token; str: string}
# @output string:out hasMatch
# @output #hasMatch string.math
# @returns #hasMatch
# Interprets the regex token tree parsed by the string:regex_test/parse_to_tokens function
# It can also be executed by an external call if the user already has the tokenTree, thus skipping the parsing step which may increase performance especially for large regexes

scoreboard players set #tokenResult string.math 0

execute store result score #strLength string.math run data get storage string:in str
function string:split/call
data modify storage string:internal regex_test.interpret.macro.anchor set value 0
scoreboard players set #anchor string.math 0
data modify storage string:internal regex_test.interpret.strArray set from storage string:out split
function string:regex_test/interpret_for_anchors with storage string:internal regex_test.interpret.macro

scoreboard players operation #hasMatch string.math = #tokenResult string.math

execute if score #tokenResult string.math matches 0 run return 0
return 1