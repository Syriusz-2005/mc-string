
$data modify storage string:in str set value '$(str)'
$data modify storage string:in regex set value '$(regex)' 
function string:regex_test/call
tellraw @s {"type": "score", "score": {"name": "#hasMatch", "objective": "string.math"}}
