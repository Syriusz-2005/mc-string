#> string:in {str: string}

data modify storage string:in char set value '|'
function string:private/arr_find_first/call

execute store result storage string:out strLength int 1 run data get storage string:in str
execute if data storage string:out index run function string:regex_test/parse_alternate_token with storage string:out