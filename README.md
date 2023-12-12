

# Welcome to the Syriusz's little string utilities library

**🛠️ Under construction 🛠️**

## Getting started

1. Place this datapack in the `datapacks` directory
2. Run the code below
```mcfunction
data modify storage string:in set value 'My string'
data modify storage string:in set value 'My string 2'
function string:equals/call
execute if score #isSuccess string.math matches 0 run say those strings are not equal 
```

## List of utilities

- `function string:equals`
- `function string:find_first`
- `function string:slice`
- `function string:split`
- `function string:regex_test` (Work in progress)

  `string:regex_test` supports:
  - **literal matching** ex. `abab`
  - **Alternate tokens** ex. `a|b|c|d`

  There is an infinitely long list of things it doesn't support, but these will be added in the future.