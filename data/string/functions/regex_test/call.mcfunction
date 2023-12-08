#> string:in {str: string; regex: string}

data modify storage string:internal regex_test.str set from storage string:in str
data modify storage string:internal regex_test.regex set from storage string:in regex

# splitting the input str into str array
function string:split/call
data modify storage string:internal regex_test.strArray set from storage string:out split

# spliting the regex
data modify storage string:in str set from storage string:internal regex_test.regex
function string:split/call
data modify storage string:internal regex_test.tokensArray set from storage string:out split



tellraw @a {"type": "nbt", "source": "storage", "storage": "string:internal", "nbt": "regex_test"}


data modify storage string:in arr set from storage string:internal regex_test.tokensArray
data modify storage string:in functionReference set value 'regex_test/parse_regex'
function string:private/arr_for_each/call


# recursively parsing the regex into regex tokens
data modify storage string:in str set from storage string:internal regex_test.regex
function string:regex_test/parse_to_tokens
