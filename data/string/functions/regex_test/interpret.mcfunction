#> string:regex_test/interpret
# @public
# @input string:in {tokenTree: Token}
# @output string:out hasMatch
# @output #hasMatch string.math
# Also returns hasMatch as a return value
# Interprets the regex token tree parsed by the string:regex_test/parse_to_tokens function
# It can also be executed by an external call if the user already has the tokenTree, thus skipping the parsing step which may increase performance especially for large regexes


