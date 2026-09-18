#executed by bot entity


#onground?
execute store result score @s sab.onGround run execute if entity @s[nbt={OnGround:1b}]


#decide how we want to navigate based on state
execute if score @s sab.botNavigationMode matches 0 run function sa_bots:bot/navigation_mode/0_roam/_tick
execute if score @s sab.botNavigationMode matches 1 run function sa_bots:bot/navigation_mode/1_follow_waypoints/_tick

#jot down our coordinates so we can compare next tick
execute store result score @s sab.botMoveLastTickX run data get entity @s Pos[0] 10
execute store result score @s sab.botMoveLastTickY run data get entity @s Pos[1] 10
execute store result score @s sab.botMoveLastTickZ run data get entity @s Pos[2] 10
#difference in coordinates vs target
scoreboard players operation @s sab.botMoveTargetDX = @s sab.botMoveLastTickX
scoreboard players operation @s sab.botMoveTargetDY = @s sab.botMoveLastTickY
scoreboard players operation @s sab.botMoveTargetDZ = @s sab.botMoveLastTickZ
scoreboard players operation @s sab.botMoveTargetDX -= @s sab.botMoveTargetX
scoreboard players operation @s sab.botMoveTargetDY -= @s sab.botMoveTargetY
scoreboard players operation @s sab.botMoveTargetDZ -= @s sab.botMoveTargetZ

#------------------------
#various timers

#look time
scoreboard players remove @s[scores={sab.botLookTime=1..}] sab.botLookTime 1
scoreboard players remove @s[scores={sab.botIgnoreAimTime=1..}] sab.botIgnoreAimTime 1

#crouch time
execute if score @s sab.botCrouchTime matches 1.. run function sa_bots:bot/movement/misc/crouch

#sprinting time
scoreboard players remove @s[scores={sab.botIsSprinting=1..}] sab.botIsSprinting 1

#jump cooldown
scoreboard players remove @s[scores={sab.botJumpCooldown=1..}] sab.botJumpCooldown 1
#------------------------


#------------------------
#show various debug info
function sa_bots:bot/debug/_entity_debug_tick
#------------------------

#perform movement based on state
function sa_bots:bot/movement/_move_type_index

#clean up move target
tp f-0-0-0-1 0 0 0