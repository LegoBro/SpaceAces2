
scoreboard players operation @s ability.2.cooldown = class.scientist.2.cooldown Numbers
scoreboard players reset @s rightClick

tag @e remove chem_count
execute as @e[tag=chem_dispenser] if score @s owner = #Class_Start id run tag @s add chem_count
execute store result score #chem_count Numbers if entity @e[tag=chem_count]
execute if score #chem_count Numbers matches 3.. as @n[tag=chem_dispenser,tag=chem_count,sort=furthest] at @s run function class:4/scientist/chem_dispenser/death

summon item_display ~ ~0.5 ~ {Tags:["chem_dispenser","entity","hb_turret","hb","class.deployable","class.new","sab.nearby.healing","kill_effect_override","class.helper.animation"],item:{id:paper,components:{item_model:"class/scientist/chem_machine/base"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-0.125f,0f],scale:[1f,1f,1f]},interpolation_duration:20}
summon item_display ~ ~0.5 ~ {Tags:["class.scientist.chem_dispenser.feet","class.chem_dispenser","new","class.helper.animation"],item:{id:paper,components:{item_model:"class/scientist/chem_machine/feet"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,0f,0f],scale:[0.5f,1f,0.5f]},interpolation_duration:20}
summon item_display ~ ~0.5 ~ {Tags:["class.scientist.chem_dispenser.goo","class.chem_dispenser","new","class.helper.animation"],item:{id:paper,components:{item_model:"class/scientist/chem_machine/goo"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-.25f,0f],scale:[1f,0f,1f]},interpolation_duration:20}
summon item_display ~ ~0.5 ~ {Tags:["class.scientist.chem_dispenser.cage","class.chem_dispenser","new","class.helper.animation"],item:{id:paper,components:{item_model:"class/scientist/chem_machine/cage"}},transformation:{left_rotation:[0f,0f,0f,1f],right_rotation:[0f,0f,0f,1f],translation:[0f,-.125f,0f],scale:[1f,1f,1f]},interpolation_duration:20}
playsound minecraft:block.anvil.place player @a ~ ~ ~ 1 0 0
execute as @e[type=minecraft:item_display,tag=chem_dispenser,sort=nearest,limit=1,distance=..3,tag=class.new] at @s run function class:4/scientist/chem_dispenser/prepare_machine

return 1