execute positioned ^ ^ ^1 positioned ~ ~1.5 ~ run particle minecraft:sweep_attack ~ ~ ~
execute at @s run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~
execute if entity @s[team=blue] anchored eyes positioned ^ ^ ^1 facing entity @e[distance=..3,tag=!ignore,team=red] feet run function classes:brawler/swipe
execute if entity @s[team=red] anchored eyes positioned ^ ^ ^1 facing entity @e[distance=..3,tag=!ignore,team=blue] feet run function classes:brawler/swipe
    
return 1