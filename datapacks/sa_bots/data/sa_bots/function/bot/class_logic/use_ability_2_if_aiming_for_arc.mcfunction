scoreboard players set @s SelectedItem 2

#not arc aiming yet? wait a moment
execute unless entity @s[tag=sab.botWeaponHasDownwardArc,scores={sab.lockedOntoEnemy=3..}] run return \
    run scoreboard players set @s sab.botRightClick10Hz -1
#=====

scoreboard players set @s sab.botRightClick10Hz 1
