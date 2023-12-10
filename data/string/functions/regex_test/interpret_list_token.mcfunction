#> string:regex_test/interpret_list_token
# @internal
# @input string:internal regex_test.interpret {strArray: string}
# @input string:in {token: TokenList}
# @output #tokenResult string.math
# @macro {anchor: int}


data modify storage string:internal regex_test.interpret.tokenList set from storage string:in token.tokens
execute store result score #tokenListLength string.math run data get storage string:internal regex_test.interpret.tokenList

data modify storage string:internal regex_test.interpretTokenList.macro.index set value 0
$data modify storage string:internal regex_test.interpretTokenList.macro.anchor set value $(anchor)

function string:regex_test/interpret_list_token_for_each with storage string:internal regex_test.interpretTokenList.macro

