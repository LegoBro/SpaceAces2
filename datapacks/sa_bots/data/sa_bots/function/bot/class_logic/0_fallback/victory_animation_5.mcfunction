#look at player, do nothing


#forget target when we start this animation
execute if score @s sab.botScriptedAction matches 14001 run function sa_bots:bot/combat_logic/look_at_target/forget_target

#possibly look at teammates
tag @s add sab.botMayShootTeammates

#if we have no targets, look around randomly
execute unless score @s sab.lockedOntoEnemy matches 1.. run function sa_bots:bot/class_logic/0_fallback/victory_animation_look_around_randomly

#jump every time we're grounded
tag @s[scores={sab.botMoveState=1,sab.groundedTime=3..}] add sab.botJump

#manual control, don't move
scoreboard players set @s sab.botNavigationMode 4
scoreboard players set @s sab.botManualControlTime 10
function sa_bots:bot/class_logic/force_no_movement_input