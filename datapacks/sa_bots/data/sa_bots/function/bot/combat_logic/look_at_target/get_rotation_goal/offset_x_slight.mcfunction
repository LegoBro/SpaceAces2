#executed as e-0-0-0-1 at @s

#offset based on target's move speed
execute if score #dx sab.var matches ..-51 run tp @s ~.6 ~ ~
execute if score #dx sab.var matches -50..-41 run tp @s ~.5 ~ ~
execute if score #dx sab.var matches -40..-31 run tp @s ~.4 ~ ~
execute if score #dx sab.var matches -30..-21 run tp @s ~.3 ~ ~
execute if score #dx sab.var matches -20..-11 run tp @s ~.2 ~ ~
execute if score #dx sab.var matches -10..-5 run tp @s ~.1 ~ ~
#0 is 0
execute if score #dx sab.var matches 5..10 run tp @s ~-.1 ~ ~
execute if score #dx sab.var matches 11..20 run tp @s ~-.2 ~ ~
execute if score #dx sab.var matches 21..30 run tp @s ~-.3 ~ ~
execute if score #dx sab.var matches 31..40 run tp @s ~-.4 ~ ~
execute if score #dx sab.var matches 41..50 run tp @s ~-.5 ~ ~
execute if score #dx sab.var matches 51.. run tp @s ~-.6 ~ ~