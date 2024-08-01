execute if entity @s[tag=standard,team=blue] if entity @e[limit=1,sort=nearest,team=red,distance=..15,tag=!invis] run function classes:mechanic/turret/standard
execute if entity @s[tag=sniper,team=blue] if entity @e[limit=1,sort=nearest,team=red,distance=..25,tag=!invis] run function classes:mechanic/turret/sniper
execute if entity @s[tag=rocket_launcher,team=blue] if entity @e[limit=1,sort=nearest,team=red,distance=..20,tag=!invis] run function classes:mechanic/turret/rocket
execute if entity @s[tag=standard,team=red] if entity @e[limit=1,sort=nearest,team=blue,distance=..15,tag=!invis] run function classes:mechanic/turret/standard
execute if entity @s[tag=sniper,team=red] if entity @e[limit=1,sort=nearest,team=blue,distance=..25,tag=!invis] run function classes:mechanic/turret/sniper
execute if entity @s[tag=rocket_launcher,team=red] if entity @e[limit=1,sort=nearest,team=blue,distance=..20,tag=!invis] run function classes:mechanic/turret/rocket
scoreboard players add @s[scores={reload=5..}] reload 1
scoreboard players set @s[scores={reload=7..},tag=standard] reload 0
scoreboard players set @s[scores={reload=30..},tag=sniper] reload 0
scoreboard players set @s[scores={reload=40..},tag=rocket_launcher] reload 0
execute unless entity @e[tag=turret_base,sort=nearest,distance=..1,limit=1] run kill @s
scoreboard players operation place_id id = @s id
execute as @a if score @s id = place_id id unless score @s Class matches 9 run kill @e[tag=turret_base,sort=nearest,distance=..1,limit=1]
