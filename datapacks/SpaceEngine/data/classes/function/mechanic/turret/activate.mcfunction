scoreboard players operation place_id id = @s id
execute as @e[type=minecraft:slime,tag=turret_base] at @s if score @s id = place_id id run kill @s
execute if entity @s[team=blue] run summon minecraft:slime ~ ~ ~ {Team:"blue",NoGravity:1b,PersistenceRequired:1b,NoAI:1b,Tags:["turret_base","hb_turret","entity"],Health:105.0f,attributes:[{id:"minecraft:generic.max_health",base:105.0d}]}
execute if entity @s[team=red] run summon minecraft:slime ~ ~ ~ {Team:"red",NoGravity:1b,PersistenceRequired:1b,NoAI:1b,Tags:["turret_base","hb_turret","entity"],Health:105.0f,attributes:[{id:"minecraft:generic.max_health",base:105.0d}]}
execute store result score @e[type=minecraft:slime,tag=turret_base,sort=nearest,limit=1] id run scoreboard players get @s id
playsound minecraft:block.anvil.use player @a ~ ~ ~ 1 0 0
scoreboard players set @e[type=minecraft:slime,tag=turret_base,sort=nearest,limit=1] health 100

return 1