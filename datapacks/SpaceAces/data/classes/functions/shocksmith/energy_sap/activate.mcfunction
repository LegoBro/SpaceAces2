scoreboard players operation place_id id = @s id
execute if entity @s[team=blue] run effect give @a[team=red,distance=..10] hunger 3 100
execute if entity @s[team=blue] at @e[team=red,distance=..10] run summon area_effect_cloud ~ ~ ~ {Team:"blue",Particle:"iconcrack",ReapplicationDelay:0,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:200,DurationOnUse:0f,Age:0,WaitTime:0,Tags:["energy_orb","blue"]}
execute if entity @s[team=red] run effect give @a[team=blue,distance=..10] hunger 3 100
execute if entity @s[team=red] at @e[team=blue,distance=..10] run summon area_effect_cloud ~ ~ ~ {Team:"red",Particle:"iconcrack",ReapplicationDelay:0,Radius:0f,RadiusPerTick:0f,RadiusOnUse:0f,Duration:200,DurationOnUse:0f,Age:0,WaitTime:0,Tags:["energy_orb","red"]}
playsound item.armor.equip_chain player @a ~ ~ ~ 1 0
execute as @e[tag=energy_orb,distance=..10] unless score @s id = @s id run scoreboard players operation @s id = place_id id
