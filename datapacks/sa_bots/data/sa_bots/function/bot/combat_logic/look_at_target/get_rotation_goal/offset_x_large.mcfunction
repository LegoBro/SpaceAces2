#executed as e-0-0-0-1 at @s

#offset based on target's move speed
execute if score #dx sab.var matches ..-51 run tp @s ~1.5 ~ ~
execute if score #dx sab.var matches -50..-41 run tp @s ~1.25 ~ ~
execute if score #dx sab.var matches -40..-31 run tp @s ~1 ~ ~
execute if score #dx sab.var matches -30..-21 run tp @s ~.75 ~ ~
execute if score #dx sab.var matches -20..-11 run tp @s ~5 ~ ~
execute if score #dx sab.var matches -10..-5 run tp @s ~.25 ~ ~
#0 is 0
execute if score #dx sab.var matches 5..10 run tp @s ~-.25 ~ ~
execute if score #dx sab.var matches 11..20 run tp @s ~-5 ~ ~
execute if score #dx sab.var matches 21..30 run tp @s ~-.75 ~ ~
execute if score #dx sab.var matches 31..40 run tp @s ~-1 ~ ~
execute if score #dx sab.var matches 41..50 run tp @s ~-1.25 ~ ~
execute if score #dx sab.var matches 51.. run tp @s ~-1.5 ~ ~

#keep going if we have more recursions left
scoreboard players remove #recursions sab.var 1
execute if score #recursions sab.var matches 1.. at @s run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/offset_x_large