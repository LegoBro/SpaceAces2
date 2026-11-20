#executed by a bot at 10Hz


#cancel movement and inputs
scoreboard players set @s SelectedItem 0
scoreboard players set @s sab.botRightClick10Hz -1
tag @s[tag=input.swap_hands] remove input.swap_hands
scoreboard players reset @s sab.botWantsToDetonateStickyBomb
scoreboard players set @s sab.botForceAngleTime 0
scoreboard players set @s sab.botIgnoreAimTime 0

#victory animations
execute if score @s sab.botScriptedAction matches 10000..10999 run function sa_bots:bot/class_logic/0_fallback/victory_animation_1
execute if score @s sab.botScriptedAction matches 11000..11999 run function sa_bots:bot/class_logic/0_fallback/victory_animation_2
execute if score @s sab.botScriptedAction matches 12000..12999 run function sa_bots:bot/class_logic/0_fallback/victory_animation_3
execute if score @s sab.botScriptedAction matches 13000..13999 run function sa_bots:bot/class_logic/0_fallback/victory_animation_4
execute if score @s sab.botScriptedAction matches 14000..14999 run function sa_bots:bot/class_logic/0_fallback/victory_animation_5
execute if score @s sab.botScriptedAction matches 15000..15999 run function sa_bots:bot/class_logic/0_fallback/victory_animation_6

#small chance we will re-randomize the animation we're playing
execute store result score #random sab.var run random value 1..10000
execute if score #random sab.var matches 9982.. run function sa_bots:bot/class_logic/0_fallback/pick_random_victory_animation