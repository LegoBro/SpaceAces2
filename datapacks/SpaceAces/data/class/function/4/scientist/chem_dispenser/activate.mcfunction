
scoreboard players operation @s ability.2.cooldown = class.scientist.2.cooldown Numbers
scoreboard players reset @s rightClick

tag @e remove chem_count
execute as @e[tag=chem_dispenser] if score @s id = #Class_Start id run tag @s add chem_count
execute store result score #chem_count Numbers if entity @e[tag=chem_count]
execute if score #chem_count Numbers matches 3.. run kill @n[tag=chem_dispenser,sort=furthest]

summon minecraft:slime ~ ~ ~ {Silent:1b,PersistenceRequired:0b,NoAI:1b,Size:0,Tags:["chem_dispenser","entity","hb_turret","class.deployable","class.new"],Health:50.0f,attributes:[{id:"minecraft:max_health",base:50.0d}]}
playsound minecraft:block.anvil.place player @a ~ ~ ~ 1 0 0
execute as @e[type=minecraft:slime,tag=chem_dispenser,sort=nearest,limit=1,distance=..3,tag=class.new] at @s run function class:4/scientist/chem_dispenser/prepare_machine



return 1