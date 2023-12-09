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


# recursively parsing the regex into regex tokens
data remove storage string:internal regex_test.tokenTree
data modify storage string:in str set from storage string:internal regex_test.regex
function string:regex_test/parse_to_tokens

tellraw @a {"text": "after parsing", "color": "red"}
tellraw @a {"type": "nbt", "source": "storage", "storage": "string:internal", "nbt": "regex_test"}
