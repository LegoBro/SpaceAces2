scoreboard players operation place_id id = @s id
execute if entity @s[team=blue] run effect give @a[distance=..10,team=red] minecraft:hunger 3 100
execute if entity @s[team=blue] at @e[distance=..10,team=red] run summon minecraft:area_effect_cloud ~ ~ ~ {Team:"blue",Particle:{type:"minecraft:iconcrack"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:200,DurationOnUse:0.0f,Age:0,WaitTime:0,Tags:["energy_orb","blue"]}
execute if entity @s[team=red] run effect give @a[distance=..10,team=blue] minecraft:hunger 3 100
execute if entity @s[team=red] at @e[distance=..10,team=blue] run summon minecraft:area_effect_cloud ~ ~ ~ {Team:"red",Particle:{type:"minecraft:iconcrack"},ReapplicationDelay:0,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:200,DurationOnUse:0.0f,Age:0,WaitTime:0,Tags:["energy_orb","red"]}
playsound minecraft:item.armor.equip_chain player @a ~ ~ ~ 1 0
execute as @e[distance=..10,tag=energy_orb] unless score @s id = @s id run scoreboard players operation @s id = place_id id

return 1