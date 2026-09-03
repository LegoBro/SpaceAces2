
scoreboard players operation @s ability.2.cooldown = class.scientist.2.cooldown Numbers
scoreboard players reset @s rightClick

tag @e remove chem_count
execute as @e[tag=chem_dispenser] if score @s id = #Class_Start id run tag @s add chem_count
execute store result score #chem_count Numbers if entity @e[tag=chem_count]
execute if score #chem_count Numbers matches 3.. run kill @n[tag=chem_dispenser,sort=furthest]

summon item_display ~ ~ ~ {Tags:["chem_dispenser","entity","hb_turret","hb","class.deployable","class.new"],item:{id:paper,components:{item_model:"class/scientist/chem_machine"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0.5f,0f],scale:[1f,1f,1f]}}
playsound minecraft:block.anvil.place player @a ~ ~ ~ 1 0 0
execute as @e[type=minecraft:item_display,tag=chem_dispenser,sort=nearest,limit=1,distance=..3,tag=class.new] at @s run function class:4/scientist/chem_dispenser/prepare_machine



return 1