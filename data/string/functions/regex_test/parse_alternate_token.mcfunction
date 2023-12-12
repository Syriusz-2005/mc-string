#> {index: int; strLength: number; pathToToken: string}
# @output string:out $(pathToToken)


$data modify storage string:out $(pathToToken) set value {type: 1}
$data modify storage string:internal regex_test.internal.$(pathToToken).currString set from storage string:in str

# recursively parsing the first part of the spliced regex
data modify storage string:internal regex_test.alternateToken.start set value 0
$data modify storage string:internal regex_test.alternateToken.end set value $(index)
function string:slice/call with storage string:internal regex_test.alternateToken
data modify storage string:in str set from storage string:out str
$data modify storage string:in pathToToken set value '$(pathToToken).left'
function string:regex_test/parse_to_tokens


# the second part
#incrementing the start index not to include the token itself
$scoreboard players set #incrementedIndex string.math $(index)
scoreboard players add #incrementedIndex string.math 1
execute store result storage string:internal regex_test.alternateToken.start int 1 run scoreboard players get #incrementedIndex string.math
$data modify storage string:internal regex_test.alternateToken.end set value $(strLength)
# the logic below is neceserry because of the recursive nature of this function
$data modify storage string:in str set from storage string:internal regex_test.internal.$(pathToToken).currString
function string:slice/call with storage string:internal regex_test.alternateToken
data modify storage string:in str set from storage string:out str
$data modify storage string:in pathToToken set value '$(pathToToken).right'
function string:regex_test/parse_to_tokens


$data remove storage string:internal regex_test.internal.$(pathToToken)