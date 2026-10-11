scoreboard players add #random sab.var 1

#go left if possible
execute positioned ~-.25 ~ ~ if function sa_bots:bot/navigation_mode/3_stand_near_point/check_if_location_valid run tp @s ~ ~ ~

#recursion until done
execute if score #random sab.var matches ..-1 at @s run function sa_bots:bot/navigation_mode/3_stand_near_point/random_x_negative