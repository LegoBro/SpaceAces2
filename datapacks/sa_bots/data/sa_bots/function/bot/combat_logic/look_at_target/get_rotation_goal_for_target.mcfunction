#executed by an entity that a bot is targeting AND has a line-of-sight to
#executed at the position of the bot


#must be in a loaded chunk!
execute unless loaded ~ ~ ~ run return fail
#=====

#we exist if we ran this function
scoreboard players set #found_target sab.var 2
#look only?
execute if entity @s[tag=sab.possibleTargetSeeOnly] run scoreboard players set #found_target sab.var 3

#this little fellow will grab rotation data for us
tp e-0-0-0-1 ~ ~ ~

#grab the angle we want in order to face the target
#---------------------
scoreboard players set #var sab.var 0
execute if score @s sab.botSkill matches 6.. run scoreboard players set #var sab.var 1
execute if score #var sab.var matches 1 if entity @s[tag=sab.botShootingFriendlyPlayer] run scoreboard players set #var sab.var 0
execute if entity @s[tag=hb_mechanic_turret] run scoreboard players set #var sab.var 2
execute if entity @s[tag=chem_dispenser] run scoreboard players set #var sab.var 3
execute if entity @s[tag=rocket_wall] run scoreboard players set #var sab.var 4

#this is the place to add variation depending on the target's height!
#(higher y means we aim lower down)
execute if score #var sab.var matches 0 positioned ~ ~-.7 ~ facing entity @s feet run rotate e-0-0-0-1 ~ ~
execute if score #var sab.var matches 1 facing entity @s eyes run rotate e-0-0-0-1 ~ ~
execute if score #var sab.var matches 2 positioned ~ ~.5 ~ facing entity @s feet run rotate e-0-0-0-1 ~ ~
execute if score #var sab.var matches 3 positioned ~ ~-.33 ~ facing entity @s feet run rotate e-0-0-0-1 ~ ~
execute if score #var sab.var matches 3 positioned ~ ~.33 ~ facing entity @s feet run rotate e-0-0-0-1 ~ ~
#---------------------
execute as e-0-0-0-1 store result score #yaw_target sab.var run data get entity @s Rotation[0] 100
scoreboard players operation #yaw_target sab.var %= #36000 sab.var
execute as e-0-0-0-1 store result score #pitch_target sab.var run data get entity @s Rotation[1] 100

#clean-up
tp e-0-0-0-1 0 0 0
tag @s remove sab.possibleTarget
tag @s remove sab.possibleTargetSeeOnly