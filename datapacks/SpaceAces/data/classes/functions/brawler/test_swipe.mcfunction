execute positioned ^ ^ ^1 positioned ~ ~1.5 ~ run particle minecraft:sweep_attack ~ ~ ~
    execute as @s at @s run playsound entity.player.attack.sweep hostile @a ~ ~ ~
    execute if entity @s[team=blue] positioned ^ ^ ^1 positioned ~ ~1.5 ~ facing entity @e[distance=..3,tag=!ignore,team=red] feet run function classes:brawler/swipe
    execute if entity @s[team=red] positioned ^ ^ ^1 positioned ~ ~1.5 ~ facing entity @e[distance=..3,tag=!ignore,team=blue] feet run function classes:brawler/swipe
    