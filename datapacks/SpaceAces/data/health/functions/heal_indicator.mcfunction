## Indicator for healing
# Chunk for indicator
tag @s add indicator
summon area_effect_cloud ~ ~1.5 ~ {CustomNameVisible:1b,Particle:"item_slime",ReapplicationDelay:500,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:50,DurationOnUse:0f,Age:0,WaitTime:0,Tags:["heal_indicator"]}
data merge block 0 1 0 {Text1:"[\"\",{\"score\":{\"name\":\"@e[tag=indicator,limit=1,sort=nearest]\",\"objective\":\"healing\"},\"color\":\"green\"}]"}
data modify entity @e[tag=heal_indicator,limit=1,sort=nearest] CustomName set from block 0 1 0 Text1
effect give @s minecraft:poison 1 0 true
scoreboard players operation @s health += @s healing
scoreboard players reset @s healing
tag @s remove indicator
