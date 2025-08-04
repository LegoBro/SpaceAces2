scoreboard players operation place_id id = @s id
scoreboard players operation Team Team = @s Team
kill @e[tag=my_turret]
summon minecraft:slime ~ ~ ~ {NoGravity:1b,PersistenceRequired:1b,NoAI:1b,Tags:["turret_base","hb_turret","entity","new","class.deployable","standard"],Health:105.0f,attributes:[{id:"minecraft:max_health",base:105.0d}]}
execute as @e[type=minecraft:slime,tag=turret_base,tag=new,sort=nearest,limit=1,distance=..3] at @s run function class:4/mechanic/turret/summon
playsound minecraft:block.anvil.use player @a ~ ~ ~ 1 0 0

scoreboard players operation @s ability.1.cooldown = class.mechanic.1.cooldown Numbers
scoreboard players reset @s rightClick

return 1