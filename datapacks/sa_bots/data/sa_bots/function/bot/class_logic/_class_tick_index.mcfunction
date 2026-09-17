#set important variables for Space Aces
scoreboard players operation #Class_Start Team = @s Team
scoreboard players operation #Class_Start id = @s id

#translate sab.botRightClick10Hz into rightClick
scoreboard players remove @s[scores={sab.botRightClick10Hz=0..}] sab.botRightClick10Hz 1
execute if score @s sab.botRightClick10Hz matches 0.. run scoreboard players set @s rightClick 1

#tick for our given class
execute if score @s Class matches 1 run function class:4/scout/tick
execute if score @s Class matches 2 run function class:4/soldier/tick
execute if score @s Class matches 3 run function class:4/sniper/tick
execute if score @s Class matches 4 run function class:4/bomber/tick
execute if score @s Class matches 5 run function class:4/gunner/tick
execute if score @s Class matches 6 run function class:4/healer/tick
execute if score @s Class matches 7 run function class:4/brawler/tick
execute if score @s Class matches 8 run function class:4/mobility/tick
execute if score @s Class matches 9 run function class:4/mechanic/tick
execute if score @s Class matches 10 run function class:4/scientist/tick
execute if score @s Class matches 11 run function class:4/infiltraitor/tick
execute if score @s Class matches 12 run function class:4/pyro/tick
execute if score @s Class matches 13 run function class:4/seeker/tick
execute if score @s Class matches 14 run function class:4/shocksmith/tick
execute if score @s Class matches 15 run function class:4/rocketeer/tick