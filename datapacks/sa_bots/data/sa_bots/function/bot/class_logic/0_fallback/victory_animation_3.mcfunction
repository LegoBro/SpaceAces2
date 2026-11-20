#look at player, jump, swing arms


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

#swing arm every few seconds
execute store result score #random sab.var run random value 15..17
scoreboard players operation #var sab.var = @s sab.botID
scoreboard players operation #var sab.var += #2sec sab.var
scoreboard players operation #var sab.var %= #random sab.var
execute if score #var sab.var matches 0 run swing @s