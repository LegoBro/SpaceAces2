#no jump allowed if on cooldown
execute if score @s sab.botJumpCooldown matches 1.. run return 0
#=====


#jump
scoreboard players set #velocity sab.var 45

#read jump boost level and use it as a multiplier (if relevant)
execute if data entity @s active_effects[{id:"minecraft:jump_boost"}] run function sa_bots:bot/movement/jump/jump_boost_multiplier

#now apply velocity
execute store result entity @s Motion[1] double 0.01 run scoreboard players get #velocity sab.var


#we are not allowed to jump again for a few ticks
scoreboard players set @s sab.botJumpCooldown 3

#clear tags
tag @s remove sab.botJump
tag @s remove sab.botCoyoteJump