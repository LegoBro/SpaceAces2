## Applies healing/changing turret
execute if entity @s[scores={health=100..}] as @e[type=armor_stand,sort=nearest,limit=1,tag=turret] run function classes:mechanic/wrench/change

scoreboard players add @s[scores={health=..99}] health 25
scoreboard players set @s[scores={health=101..}] health 100
particle crit ~ ~ ~ .5 .5 .5 0 10 force @a

playsound minecraft:block.anvil.land player @a ~ ~ ~ 1 1.5 0
