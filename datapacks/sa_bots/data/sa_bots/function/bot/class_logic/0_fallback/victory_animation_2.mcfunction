#crouch over and over, look at nearby player


#forget target when we start this animation
execute if score @s sab.botScriptedAction matches 11001 run function sa_bots:bot/combat_logic/look_at_target/forget_target

#possibly look at teammates
tag @s add sab.botMayShootTeammates

#if we have no targets, look around randomly
execute unless score @s sab.lockedOntoEnemy matches 1.. run function sa_bots:bot/class_logic/0_fallback/victory_animation_look_around_randomly

#manual control, don't move
scoreboard players set @s sab.botNavigationMode 4
scoreboard players set @s sab.botManualControlTime 10
function sa_bots:bot/class_logic/force_no_movement_input

#crouch and uncrouch randomly
execute store result score #random sab.var run random value 18..22
scoreboard players operation #var sab.var = @s sab.botID
scoreboard players operation #var sab.var += #2sec sab.var
scoreboard players operation #var sab.var %= #random sab.var
execute if score #var sab.var matches 0..10 run scoreboard players set @s sab.botCrouchTime 3