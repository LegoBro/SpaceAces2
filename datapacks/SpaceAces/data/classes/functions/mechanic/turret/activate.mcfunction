scoreboard players operation place_id id = @s id
execute as @e[type=slime,tag=turret_base] at @s if score @s id = place_id id run kill @s
execute if entity @s[team=blue] run summon slime ~ ~ ~ {Team:"blue",NoGravity:1b,PersistenceRequired:1b,NoAI:1b,Tags:["turret_base","hb_turret","entity"],Health:105f,Attributes:[{Name:generic.max_health,Base:105}]}
execute if entity @s[team=red] run summon slime ~ ~ ~ {Team:"red",NoGravity:1b,PersistenceRequired:1b,NoAI:1b,Tags:["turret_base","hb_turret","entity"],Health:105f,Attributes:[{Name:generic.max_health,Base:105}]}
execute store result score @e[tag=turret_base,type=slime,limit=1,sort=nearest] id run scoreboard players get @s id
playsound minecraft:block.anvil.use player @a ~ ~ ~ 1 0 0
scoreboard players set @e[tag=turret_base,type=slime,limit=1,sort=nearest] health 100
