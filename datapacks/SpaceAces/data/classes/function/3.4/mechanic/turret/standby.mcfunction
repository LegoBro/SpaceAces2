execute if entity @s[tag=standard,team=blue] if entity @e[distance=..15,tag=!invis,sort=nearest,limit=1,team=red] run function classes:3.4/mechanic/turret/standard
execute if entity @s[tag=sniper,team=blue] if entity @e[distance=..25,tag=!invis,sort=nearest,limit=1,team=red] run function classes:3.4/mechanic/turret/sniper
execute if entity @s[tag=rocket_launcher,team=blue] if entity @e[distance=..20,tag=!invis,sort=nearest,limit=1,team=red] run function classes:3.4/mechanic/turret/rocket
execute if entity @s[tag=standard,team=red] if entity @e[distance=..15,tag=!invis,sort=nearest,limit=1,team=blue] run function classes:3.4/mechanic/turret/standard
execute if entity @s[tag=sniper,team=red] if entity @e[distance=..25,tag=!invis,sort=nearest,limit=1,team=blue] run function classes:3.4/mechanic/turret/sniper
execute if entity @s[tag=rocket_launcher,team=red] if entity @e[distance=..20,tag=!invis,sort=nearest,limit=1,team=blue] run function classes:3.4/mechanic/turret/rocket
scoreboard players add @s[scores={reload=5..}] reload 1
scoreboard players set @s[tag=standard,scores={reload=7..}] reload 0
scoreboard players set @s[tag=sniper,scores={reload=30..}] reload 0
scoreboard players set @s[tag=rocket_launcher,scores={reload=40..}] reload 0
execute unless entity @e[distance=..1,tag=turret_base,sort=nearest,limit=1] run kill @s
scoreboard players operation place_id id = @s id
execute as @a if score @s id = place_id id unless score @s Class matches 9 run kill @e[distance=..1,tag=turret_base,sort=nearest,limit=1]

return 1