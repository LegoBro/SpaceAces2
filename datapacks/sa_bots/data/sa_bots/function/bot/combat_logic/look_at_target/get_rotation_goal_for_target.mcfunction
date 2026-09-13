#executed by an entity that a bot is targeting AND has a line-of-sight to
#executed at the position of the bot


#we exist if we ran this function
scoreboard players set #found_target sab.var 2

#this little fellow will grab rotation data for us
summon marker ~ ~ ~ {UUID:[I;14,0,0,1]}

#grab the angle we want in order to face the target
#---------------------
#this is the place to add variation depending on the target's height!
execute facing entity @s feet run rotate e-0-0-0-1 ~ ~
#---------------------
execute as e-0-0-0-1 store result score #yaw_target sab.var run data get entity @s Rotation[0] 100
scoreboard players add #yaw_target sab.var 18000
scoreboard players operation #yaw_target sab.var %= #36000 sab.var
execute as e-0-0-0-1 store result score #pitch_target sab.var run data get entity @s Rotation[1] 100

#clean-up
kill e-0-0-0-1
tag @s remove sab.possibleTarget