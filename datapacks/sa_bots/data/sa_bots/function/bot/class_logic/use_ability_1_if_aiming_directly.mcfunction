scoreboard players set @s SelectedItem 1

#not aiming directly yet? wait a moment
execute unless entity @s[tag=!sab.botWeaponHasDownwardArc,tag=!sab.botWeaponSlowProjectile,scores={sab.lockedOntoEnemy=3..}] run return 0
#=====

scoreboard players set @s sab.botRightClick10Hz 1
