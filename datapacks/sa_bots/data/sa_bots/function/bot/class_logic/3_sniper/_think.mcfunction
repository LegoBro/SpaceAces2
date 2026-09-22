#executed by bot at 10Hz


#shoot when we see someone
execute if entity @s[scores={sab.lockedOntoEnemy=3..}] run scoreboard players set @s sab.botRightClick10Hz 1

#hold primary weapon
execute unless score @s reload matches 1.. run scoreboard players set @s SelectedItem 0

#use vis mine when reloading
execute if score @s reload matches 1.. if score @s ability.2.cooldown matches ..0 run scoreboard players set @s SelectedItem 2

#todo: sniper rifle and ultimate logic