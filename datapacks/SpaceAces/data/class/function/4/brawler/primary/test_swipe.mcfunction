execute positioned ^ ^ ^1 positioned ~ ~1.5 ~ run particle minecraft:sweep_attack ~ ~ ~
execute at @s run playsound minecraft:entity.player.attack.sweep hostile @a ~ ~ ~
scoreboard players operation #Team Team = @s Team
execute anchored eyes positioned ^ ^ ^1 as @e[distance=..3,tag=!ignore,tag=!ignore.projectiles] unless score @s Team = #Team Team run tag @s add class.brawler.target
execute anchored eyes positioned ^ ^ ^1 facing entity @e[distance=..3,tag=!ignore,tag=!ignore.projectiles] feet run function class:4/brawler/primary/swipe
tag @e[tag=class.brawler.target] remove class.brawler.target
scoreboard players set @s rightClick 0
scoreboard players set @s shoot 1

return 1