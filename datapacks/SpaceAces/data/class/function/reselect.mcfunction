execute if score @s Class matches 1 run function class:4/scout/select
execute if score @s Class matches 2 run function class:4/soldier/select
execute if score @s Class matches 3 run function class:4/sniper/select
execute if score @s Class matches 4 run function class:4/bomber/select
execute if score @s Class matches 5 run function class:4/gunner/select
execute if score @s Class matches 6 run function class:4/healer/select
execute if score @s Class matches 7 run function class:4/brawler/select
execute if score @s Class matches 8 run function class:4/mobility/select
execute if score @s Class matches 9 run function class:4/mechanic/select
execute if score @s Class matches 10 run function class:4/scientist/select
execute if score @s Class matches 11 run function class:4/infiltraitor/select
execute if score @s Class matches 12 run function class:4/pyro/select
execute if score @s Class matches 13 run function class:4/seeker/select
execute if score @s Class matches 14 run function class:4/shocksmith/select
execute if score @s Class matches 15 run function class:4/rocketeer/select

scoreboard players set @s reload 500000
scoreboard players set @s totalShots 0
scoreboard players set @s shoot 0
scoreboard players set @s ability.1.cooldown 0
scoreboard players set @s ability.2.cooldown 0
scoreboard players operation @s health = @s maxHealth
effect give @s minecraft:saturation 1 100
playsound minecraft:ui.button.click block @s ~ ~ ~ 1 2 0
xp set @s 0 levels
xp set @s 0
scoreboard players reset @s last_shot
tag @s add reselect
tag @s remove resistive
scoreboard players set @s displayHealth 9
clear @s[gamemode=adventure]
execute if entity @s[team=blue] run function health:update_armor_blue
execute if entity @s[team=red] run function health:update_armor_red

return 1