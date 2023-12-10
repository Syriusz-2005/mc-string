#> string:equals/call
# @input string:in {str1: string; str2: string}
# @returns 1 | 0
# @output #isSuccess string.math
# Checks for string equality

data modify storage string:internal str1 set from storage string:in str1

execute store success score #isSuccess string.math run data modify storage string:internal str1 set from storage string:in str2

execute if score #isSuccess string.math matches 1 run return 0

return 1