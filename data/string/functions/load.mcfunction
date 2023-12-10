

#declare storage string:in
#declare storage string:internal
#declare storage string:out

scoreboard objectives add string.math dummy

#declare score_holder %literalToken
scoreboard players set %literalToken string.math 2

#declare score_holder %alternateToken
scoreboard players set %alternateToken string.math 1

#declare score_holder %tokenList
scoreboard players set %tokenList string.math 0

#> TokenList = {type: 0; tokens: Token[]}
#> AlternateToken = {type: 1; left: Token; right: Token}
#> LiteralToken = {type: 2; char: char}
#> Token = {} & (LiteralToken | AlternateToken)