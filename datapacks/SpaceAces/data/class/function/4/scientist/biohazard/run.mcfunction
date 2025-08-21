## Summons gooey mess
summon marker ~ ~ ~ {Tags:["class.scientist.toxic_carpet","class.deployable","ignore.projectiles"]}
execute store result score @e[type=minecraft:marker,tag=class.scientist.toxic_carpet,sort=nearest,limit=1,distance=..3] id run scoreboard players get @s id
execute store result score @e[type=minecraft:marker,tag=class.scientist.toxic_carpet,sort=nearest,limit=1,distance=..3] Team run scoreboard players get @s Team

playsound minecraft:block.slime_block.place hostile @a

return 1