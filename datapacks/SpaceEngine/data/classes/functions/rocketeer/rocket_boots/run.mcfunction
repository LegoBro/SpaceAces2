## Rocket boots, epic
execute if entity @s[x_rotation=90] run function classes:rocketeer/rocket_boots/launch
execute if entity @s[nbt={ActiveEffects:[{Id:28b}]}] if block ~ ~-.5 ~ air run function classes:rocketeer/rocket_boots/display
