scoreboard players add @s i 1
execute if entity @s[team=blue,scores={i=50..}] run scoreboard players add @a[team=blue,distance=..5] healing 1
execute if entity @s[team=blue,scores={i=50..}] at @a[team=blue,distance=..5] as @a if score @s id = place_id id run scoreboard players add @s game_healing 1
execute if entity @s[team=red,scores={i=50..}] run scoreboard players add @a[team=red,distance=..5] healing 1
execute if entity @s[team=red,scores={i=50..}] at @a[team=red,distance=..5] as @a if score @s id = place_id id run scoreboard players add @s game_healing 1
execute as @e[tag=healing_machine,scores={i=50..}] as @e[limit=1,sort=nearest,tag=healing_machine_display,type=armor_stand] at @s run tp @s ~ ~ ~ ~5 ~
execute as @e[tag=healing_machine,scores={i=50..}] run particle heart ~ ~1 ~ 0.4 0.4 0.4 0 1 force @a
execute as @e[tag=healing_machine,scores={health=40..}] run data merge entity @s {CustomName:"{\"text\":\"----\",\"color\":\"green\",\"bold\":true}"}
execute as @e[tag=healing_machine,scores={health=26..39}] run data merge entity @s {CustomName:"{\"text\":\"---\",\"color\":\"yellow\",\"bold\":true}"}
execute as @e[tag=healing_machine,scores={health=14..25}] run data merge entity @s {CustomName:"{\"text\":\"--\",\"color\":\"gold\",\"bold\":true}"}
execute as @e[tag=healing_machine,scores={health=..13}] run data merge entity @s {CustomName:"{\"text\":\"-\",\"color\":\"red\",\"bold\":true}"}
kill @s[scores={i=200..}]
