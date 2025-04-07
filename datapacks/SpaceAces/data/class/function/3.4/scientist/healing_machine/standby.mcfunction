scoreboard players add @s i 1
execute if entity @s[scores={i=50..},team=blue] run scoreboard players add @a[distance=..5,team=blue] healing 1
execute if entity @s[scores={i=50..},team=blue] at @a[distance=..5,team=blue] as @a if score @s id = place_id id run scoreboard players add @s game_healing 1
execute if entity @s[scores={i=50..},team=red] run scoreboard players add @a[distance=..5,team=red] healing 1
execute if entity @s[scores={i=50..},team=red] at @a[distance=..5,team=red] as @a if score @s id = place_id id run scoreboard players add @s game_healing 1
execute as @s[tag=healing_machine,scores={i=50..}] as @e[type=minecraft:armor_stand,tag=healing_machine_display,sort=nearest,limit=1,distance=..3] at @s run tp @s ~ ~ ~ ~5 ~
execute as @s[tag=healing_machine,scores={i=50..}] run particle minecraft:heart ~ ~1 ~ 0.4 0.4 0.4 0 1 force @a
execute as @s[tag=healing_machine,scores={health=40..}] run data merge entity @s {CustomName:'{"bold":true,color:"green","text":"----"}}
execute as @s[tag=healing_machine,scores={health=26..39}] run data merge entity @s {CustomName:'{"bold":true,color:"yellow","text":"---"}}
execute as @s[tag=healing_machine,scores={health=14..25}] run data merge entity @s {CustomName:'{"bold":true,color:"gold","text":"--"}}
execute as @s[tag=healing_machine,scores={health=..13}] run data merge entity @s {CustomName:'{"bold":true,color:"red","text":"-"}}
kill @s[scores={i=200..}]

return 1