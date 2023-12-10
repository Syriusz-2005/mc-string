#> string:regex_test/interpret
# @public
# @input string:in {tokenTree: Token; str: string}
# @output string:out hasMatch
# @output #hasMatch string.math
# @returns #hasMatch
# Interprets the regex token tree parsed by the string:regex_test/parse_to_tokens function
# It can also be executed by an external call if the user already has the tokenTree, thus skipping the parsing step which may increase performance especially for large regexes

execute store result score #strLength string.math run data get storage string:in str
data modify storage string:internal regex_test.interpret.macro.anchor set value 0
function string:split/call
data modify storage string:internal regex_test.interpret.strArray set from storage string:out split
function string:regex_test/interpret_next with storage string:internal regex_test.interpret.macro

