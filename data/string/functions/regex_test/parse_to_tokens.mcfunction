#> string:in {str: string}

execute store result storage string:out strLength int 1 run data get storage string:in str


## parsing the alternate token
data modify storage string:in char set value '|'
function string:find_first/call
execute if data storage string:out index run function string:regex_test/parse_alternate_token with storage string:out
