#> {index: string; strLength: number; pathToToken: string}
# @input string:in {str: string; strArray: char[]}
# @output string:out $(pathToToken)

$data modify storage string:out $(pathToToken).tokens insert $(index) value {type: 2}
$data modify storage string:out $(pathToToken).tokens[$(index)].char set from storage string:in strArray[$(index)]
