#> string:regex_test/interpret_alternate_token
# @internal
# @input string:internal regex_test.interpret {strArray: string}
# @input string:in {left: Token; right: Token}
# @output #tokenResult string.math
# @macro {anchor: int}

data modify storage string:in token set from storage string:in left
$function string:regex_test/interpret_token {anchor: $(anchor)}

execute if score #tokenResult string.math matches 1 run return 1

data modify storage string:in token set from storage string:in right
$function string:regex_test/interpret_token {anchor: $(anchor)}
