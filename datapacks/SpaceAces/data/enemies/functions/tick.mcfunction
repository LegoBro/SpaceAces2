execute as @s[type=silverfish,tag=mine_runner] at @s if entity @e[team=blue,distance=..1] run function enemies:silverfish_bomb
execute as @s[tag=ranged] at @s run function enemies:ranged
execute as @s[tag=poison_bot] at @s run function enemies:poison_bot_tick
execute as @s[tag=fire_bot] at @s run function enemies:fire_bot_tick
execute as @s[tag=zap_bot] at @s run function enemies:zap_bot_tick
execute as @s[tag=poison_trail] at @s run function enemies:poison_trail
execute as @e[tag=mechanic] at @s unless entity @e[type=slime,team=red,distance=..16] run function classes:mechanic/turret/activate
execute as @s[tag=boss] at @s run particle minecraft:angry_villager ~ ~1.5 ~ 0 0 0 0 1 force @a
execute as @s[tag=slow_aura] at @s run effect give @a[team=blue,distance=..3] slowness 1 1 true
execute as @s at @s positioned ^ ^ ^1 run scoreboard players add @e[team=blue,distance=...5] damage 1
effect give @s minecraft:resistance 5 50 true
