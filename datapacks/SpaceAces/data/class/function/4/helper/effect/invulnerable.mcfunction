# Invulnerable
tag @s add invulnerable
scoreboard players remove @s invulnerable 1
execute if score @s invulnerable matches 1.. run return 0
## Reset
tag @s remove invulnerable
scoreboard players reset @s invulnerable

return 1