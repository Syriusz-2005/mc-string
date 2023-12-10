#> string:regex_test/call
# @public
# @input string:in {str: string; regex: string}
# @output string:out hasMatch
# @output #hasMatch string.math
# @returns 1 | 0
# returns 1 if the regex matched the given string
# 
# Processing involves:
# 1. Parsing regex into tokenTree
# 1. Interpreting tokenTree for the given string
#
# The parsing step can be skipped if you already have the tokenTree preparsed. In that case please run `function string:regex_test/interpret`

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
data remove storage string:out tokenTree
data modify storage string:in str set from storage string:internal regex_test.regex
data modify storage string:in pathToToken set value 'tokenTree'
function string:regex_test/parse_to_tokens

data modify storage string:in tokenTree set from storage string:out tokenTree
data modify storage string:in str set from storage string:internal regex_test.str
function string:regex_test/interpret