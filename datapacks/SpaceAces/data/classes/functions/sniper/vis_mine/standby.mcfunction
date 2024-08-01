## Standby for vis mine
execute if entity @s[tag=blue] if entity @e[distance=..2,team=red] run function classes:sniper/vis_mine/trigger/blue
execute if entity @s[tag=red] if entity @e[distance=..2,team=blue] run function classes:sniper/vis_mine/trigger/red
