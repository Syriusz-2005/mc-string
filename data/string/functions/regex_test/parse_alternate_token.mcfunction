#> {index: int; strLength: number}


# recursively parsing the first part of the spliced regex
data modify storage string:internal regex_test.alternateToken.start set value 0
$data modify storage string:internal regex_test.alternateToken.end set value $(index)
data modify storage string:in str set from storage string:internal regex_test.regex
function string:slice/call with storage string:internal regex_test.alternateToken
data modify storage string:in str set from storage string:out str 
function string:regex_test/parse_to_tokens


# the second part
#incrementing the start index not to include the token itself
$scoreboard players set #incrementedIndex string.math $(index)
scoreboard players add #incrementedIndex string.math 1
execute store result storage string:internal regex_test.alternateToken.start int 1 run scoreboard players get #incrementedIndex string.math
$data modify storage string:internal regex_test.alternateToken.end set value $(strLength)
data modify storage string:in str set from storage string:internal regex_test.regex
function string:slice/call with storage string:internal regex_test.alternateToken
data modify storage string:in str set from storage string:out str 
function string:regex_test/parse_to_tokens