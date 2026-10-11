#executed by a bot
#executed at the location we're trying to stand near


#pick a new point, with random x and z offset
tp e-0-0-0-1 ~ ~ ~

#offsets happen in increments of .25 meters, up to 10x per axis, with a minimum offset of 1 in some direction
#x
execute store result score #random sab.var run random value -10..9
execute if score #random sab.var matches 0.. run scoreboard players add #random sab.var 1
execute if score #random sab.var matches 0.. as e-0-0-0-1 run function sa_bots:bot/navigation_mode/3_stand_near_point/random_x_positive
execute if score #random sab.var matches ..-1 as e-0-0-0-1 run function sa_bots:bot/navigation_mode/3_stand_near_point/random_x_negative
#z
execute store result score #random sab.var run random value -10..9
execute if score #random sab.var matches 0.. run scoreboard players add #random sab.var 1
execute if score #random sab.var matches 0.. as e-0-0-0-1 at @s run function sa_bots:bot/navigation_mode/3_stand_near_point/random_z_positive
execute if score #random sab.var matches ..-1 as e-0-0-0-1 at @s run function sa_bots:bot/navigation_mode/3_stand_near_point/random_z_negative

#create sub-target at the new point
execute at e-0-0-0-1 run function sa_bots:bot/waypoint_nav/sub_target/create_sub_target

#random chance of pausing
execute store result score #random sab.var run random value -10..10
scoreboard players operation #random sab.var += @s sab.botSkill
execute if score #random sab.var matches ..0 store result score @s sab.botPauseTime run random value 10..35
#random chance of sneaking if not pausing
execute store result score #random sab.var run random value -8..20
scoreboard players operation #random sab.var += @s sab.botSkill
execute if score #random sab.var matches ..0 unless score @s sab.botPauseTime matches 1.. store result score @s sab.botCrouchTime run random value 10..35

#send Earl back home
tp e-0-0-0-1 0 50 0