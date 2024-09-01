## Indicator for healing
# Chunk for indicator
tag @s add indicator
summon minecraft:area_effect_cloud ~ ~1.5 ~ {CustomNameVisible:1b,Particle:{type:"minecraft:item_slime"},ReapplicationDelay:500,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:50,DurationOnUse:0.0f,Age:0,WaitTime:0,Tags:["heal_indicator","new"]}
data modify block 0 1 0 front_text.messages[0] set value '["",{"score":{"name":"@e[tag=indicator,sort=nearest,limit=1]","objective":"healing"},"color":"green","type":"score"}]'
data modify entity @e[tag=heal_indicator,tag=new,sort=nearest,limit=1] CustomName set from block 0 1 0 front_text.messages[0]
tag @e[tag=heal_indicator,tag=new,sort=nearest,limit=1] remove new
effect give @s minecraft:poison 1 0 true
scoreboard players operation @s health += @s healing
scoreboard players reset @s healing
tag @s remove indicator

return 1