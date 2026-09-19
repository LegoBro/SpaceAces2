#Called when damage is taken, or when healing is applied; updates health

# These apply damage
#execute as @s[scores={raw_damage=1..}] at @s if entity @p[scores={raw_dealt=-1..},distance=..5] run scoreboard players operation @s lastHurter = @p[scores={raw_dealt=-1..},distance=..5] id
scoreboard players reset * raw_dealt

execute if entity @s[scores={2xdamage=1..}] run scoreboard players operation @s 2xdamage *= 20 Numbers
execute if entity @s[scores={2xdamage=1..}] run scoreboard players operation @s 2xdamage /= 10 Numbers
execute if entity @s[scores={2xdamage=1..}] run scoreboard players operation @s damage += @s 2xdamage
scoreboard players reset @s[scores={2xdamage=1..}] 2xdamage
execute if score @s[type=minecraft:player] damage matches 1.. run effect give @s minecraft:wither 1 0 true
execute if entity @s[scores={raw_damage=1..}] run scoreboard players operation @s raw_damage /= 10 Numbers
execute if entity @s[scores={raw_damage=1..}] run scoreboard players operation @s damage += @s raw_damage
scoreboard players reset @s[scores={raw_damage=1..}] raw_damage
scoreboard players set @s[tag=invulnerable] damage 0
scoreboard players operation @s[tag=resistive] damage /= 2 Numbers
execute if score @s[tag=!entity] damage matches 1.. run scoreboard players operation @s health -= @s damage
execute if score @s[tag=!entity] damage matches 1.. run scoreboard players operation @s game_dmg_take += @s damage

## Damage display
execute if score @s damage matches 1.. run scoreboard players set @s damage_display 10

# indicator
execute if score @s damage matches 1.. run function health:indicator/damage

execute if score @s[tag=entity] damage matches 1.. run function health:entity
execute at @s if score @s damage matches 1..49 run playsound minecraft:entity.generic.hurt player @a ~ ~ ~ 1 1 0
execute at @s if score @s damage matches 50.. run playsound minecraft:entity.generic.hurt player @a ~ ~ ~ 1 .5 0
scoreboard players set @s damage 0

#execute positioned ~ ~1.6 ~ run particle minecraft:block{block_state:{id:"minecraft:blue_stained_glass"}} ^ ^ ^.3 0.1 0.1 0.1 0 1 force @s

#Display Health
scoreboard players operation @s[tag=!entity] displayHealth = @s health
scoreboard players operation @s[tag=!entity] displayHealth -= 2 Numbers
scoreboard players operation @s[tag=!entity] displayHealth *= 10 Numbers
scoreboard players operation @s[tag=!entity] displayHealth /= @s maxHealth

#Armor
execute if entity @s[tag=!entity] run function health:update
damage @s[tag=!entity] 1 minecraft:bad_respawn_point at ^ ^ ^

#Run if you die
execute if entity @s[gamemode=adventure,tag=!entity,tag=!escape,scores={health=..0}] at @s run function health:death
execute if entity @s[gamemode=adventure,tag=escape,tag=!entity,scores={health=..0},team=blue] at @s run function health:knocked_down

return 1