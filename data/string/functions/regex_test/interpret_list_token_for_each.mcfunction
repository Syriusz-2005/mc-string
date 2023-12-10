#> string:regex_test/interpret_list_token_for_each
# @internal
# @input string:internal regex_test.interpret {strArray: string; tokenList: Token[]}
# @input string:in {token: TokenList}
# @output #tokenResult string.math
# @macro {anchor: int; index: int}

execute if score #tokenIndex string.math >= #tokenListLength string.math run return 1

# $say stepping for of the token list $(anchor) $(index)

$data modify storage string:in token set from storage string:internal regex_test.interpret.tokenList[$(index)]
$function string:regex_test/interpret_token {anchor: $(anchor)}

execute if score #tokenResult string.math matches 0 run return 0

execute store result storage string:internal regex_test.interpretTokenList.macro.anchor int 1 run scoreboard players get #currAnchor string.math
$scoreboard players set #tokenIndex string.math $(index)
scoreboard players add #tokenIndex string.math 1
execute store result storage string:internal regex_test.interpretTokenList.macro.index int 1 run scoreboard players get #tokenIndex string.math
function string:regex_test/interpret_list_token_for_each with storage string:internal regex_test.interpretTokenList.macro