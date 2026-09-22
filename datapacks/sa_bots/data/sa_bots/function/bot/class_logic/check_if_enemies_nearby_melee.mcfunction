#return 1.. if yes
#return 0 no


#count nearby enemies
scoreboard players set #count sab.var 0
scoreboard players operation #team sab.var = @s Team
execute positioned ^ ^ ^1 as @e[type=#projectile:has_hb,tag=hb,distance=..2,scores={Team=0..}] unless score @s Team = #team sab.var run scoreboard players add #count sab.var 1

#return count
return run scoreboard players get #count sab.var