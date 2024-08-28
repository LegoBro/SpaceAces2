#Called when damage is taken, or when healing is applied; updates health

# These apply damage
#execute as @s[scores={raw_damage=1..}] at @s if entity @p[scores={raw_dealt=-1..},distance=..5] run scoreboard players operation @s lastHurter = @p[scores={raw_dealt=-1..},distance=..5] id
scoreboard players reset * raw_dealt

execute if entity @s[scores={2xdamage=1..}] run scoreboard players operation @s 2xdamage *= 20 Numbers
execute if entity @s[scores={2xdamage=1..}] run scoreboard players operation @s 2xdamage /= 10 Numbers
execute if entity @s[scores={2xdamage=1..}] run scoreboard players operation @s damage += @s 2xdamage
scoreboard players reset @s[scores={2xdamage=1..}] 2xdamage
execute if score @s damage matches 1.. run effect give @s[type=minecraft:player] minecraft:wither 1 0 true
execute if entity @s[scores={raw_damage=1..}] run scoreboard players operation @s raw_damage /= 10 Numbers
execute if entity @s[scores={raw_damage=1..}] run scoreboard players operation @s damage += @s raw_damage
scoreboard players reset @s[scores={raw_damage=1..}] raw_damage
scoreboard players set @s[tag=invulnerable] damage 0
scoreboard players operation @s[tag=resistive] damage /= 2 Numbers
execute if score @s[tag=!entity] damage matches 1.. run scoreboard players operation @s health -= @s damage
execute if score @s[tag=!entity] damage matches 1.. run scoreboard players operation @s game_dmg_take += @s damage

# Chunk for indicator
tag @s add indicator
execute at @s if score @s damage matches 1.. run summon minecraft:area_effect_cloud ~ ~1.5 ~ {CustomNameVisible:1b,Particle:{type:"minecraft:item_slime"},ReapplicationDelay:500,Radius:0.0f,RadiusPerTick:0.0f,RadiusOnUse:0.0f,Duration:50,DurationOnUse:0.0f,Age:0,WaitTime:0,Tags:["damage_indicator"]}
execute at @s if score @s damage matches 1.. run data modify block 0 1 0 front_text.messages[0] set value '["",{"score":{"name":"@e[tag=indicator,sort=nearest,limit=1]","objective":"damage"},"color":"red","type":"score"}]'
execute at @s if score @s damage matches 1.. run data modify entity @e[tag=damage_indicator,sort=nearest,limit=1] CustomName set from block 0 1 0 front_text.messages[0]
execute if score @s[tag=entity] damage matches 1.. run function health:entity
execute at @s if score @s damage matches 1..49 run playsound minecraft:entity.generic.hurt player @a ~ ~ ~ 1 1 0
execute at @s if score @s damage matches 50.. run playsound minecraft:entity.generic.hurt player @a ~ ~ ~ 1 .5 0
scoreboard players reset @s damage
tag @s remove indicator

execute positioned ~ ~1.6 ~ run particle minecraft:block{block_state:{Name:"minecraft:blue_stained_glass"}} ^ ^ ^.3 0.1 0.1 0.1 0 1 force @s

#Display Health
scoreboard players operation @s[tag=!entity] displayHealth = @s health
scoreboard players operation @s[tag=!entity] displayHealth -= 2 Numbers
scoreboard players operation @s[tag=!entity] displayHealth *= 10 Numbers
scoreboard players operation @s[tag=!entity] displayHealth /= @s maxHealth

#Armor
execute if entity @s[tag=!entity,team=blue] run function health:update_armor_blue
execute if entity @s[tag=!entity,team=red] run function health:update_armor_red

#Run if you die
execute if entity @s[gamemode=adventure,tag=!entity,tag=!escape,scores={health=..0}] at @s run function health:death
execute if entity @s[gamemode=adventure,tag=escape,tag=!entity,scores={health=..0},team=blue] at @s run function health:knocked_down

return 1