## Rocket boots, epic
execute if entity @s[x_rotation=90] run function class:rocketeer/rocket_boots/launch
execute if entity @s[nbt={active_effects:[{id:"minecraft:slow_falling"}]}] if block ~ ~-.5 ~ minecraft:air run function class:rocketeer/rocket_boots/display

return 1