scoreboard players set @s SelectedItem 1

#on shoot cooldown? wait a moment
execute if score @s shoot matches 1.. run return \
    run scoreboard players set @s sab.botRightClick10Hz -1
#=====

#not arc aiming yet? wait a moment
execute unless entity @s[tag=sab.botWeaponHasDownwardArc,scores={sab.lockedOntoEnemy=2..}] run return \
    run scoreboard players set @s sab.botRightClick10Hz -1
#=====

scoreboard players set @s sab.botRightClick10Hz 1
