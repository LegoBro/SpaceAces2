## Ticks for item frames

# changes health pack models when they are charged/used
execute if entity @s[tag=health_pack] run function tick:entity/health_pack/tick

execute if entity @s[nbt=!{ItemRotation:0b}] run data merge entity @s {ItemRotation:0b}

tag @s[tag=!ignore] add ignore

return 1