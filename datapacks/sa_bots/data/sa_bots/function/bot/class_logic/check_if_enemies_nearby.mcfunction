#return 1.. if yes
#return 0 no


#count nearby enemies
scoreboard players set #count sab.var 0
scoreboard players operation #team sab.var = @s Team
execute as @e[type=#projectile:players,tag=sab.activePlayer,distance=..20] unless score @s Team = #team sab.var run scoreboard players add #count sab.var 1

#return count
return run scoreboard players get #count sab.var