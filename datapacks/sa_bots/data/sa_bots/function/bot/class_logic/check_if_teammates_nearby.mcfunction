#return 1.. if yes
#return 0 no


#count nearby teammates
scoreboard players set #count sab.var 0
scoreboard players operation #team sab.var = @s Team
tag @s add sab.self
execute as @e[type=#projectile:players,tag=sab.activePlayer,distance=..20,tag=!sab.self] if score @s Team = #team sab.var run scoreboard players add #count sab.var 1
tag @s remove sab.self

#return count
return run scoreboard players get #count sab.var