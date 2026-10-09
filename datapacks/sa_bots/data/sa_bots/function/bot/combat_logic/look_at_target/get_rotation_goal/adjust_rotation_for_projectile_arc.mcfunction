#executed as e-0-0-0-1 at @s


#adjust based on how far away the target is
#(conveniently, this is already stores as "#los_distance sab.var")
execute if score #los_distance sab.var matches 14..16 run rotate @s ~ ~-3
execute if score #los_distance sab.var matches 17..20 run rotate @s ~ ~-6
execute if score #los_distance sab.var matches 21..30 run rotate @s ~ ~-11
execute if score #los_distance sab.var matches 31..40 run rotate @s ~ ~-16
execute if score #los_distance sab.var matches 41..50 run rotate @s ~ ~-21
execute if score #los_distance sab.var matches 51..60 run rotate @s ~ ~-26
execute if score #los_distance sab.var matches 61..70 run rotate @s ~ ~-31
execute if score #los_distance sab.var matches 71..80 run rotate @s ~ ~-36
execute if score #los_distance sab.var matches 81.. run rotate @s ~ ~-41

#figure out how far our ray can go without hitting a block
#(if we don't run into a ceiling or something, then #valid_distance = #los_distance)
scoreboard players operation #recursions sab.var = #los_distance sab.var
scoreboard players set #valid_distance sab.var 1
execute at @s positioned ^ ^ ^1 run function sa_bots:bot/combat_logic/look_at_target/get_rotation_goal/find_adjusted_ray_length_recursive
#this should prevent bots from pointlessly shooting at the ceiling if there's an enemy down a long hallway

#aim upward as much as needed and as much as possible
execute if score #valid_distance sab.var matches 14..16 run rotate @s ~ ~-3
execute if score #valid_distance sab.var matches 17..20 run rotate @s ~ ~-6
execute if score #valid_distance sab.var matches 21..30 run rotate @s ~ ~-11
execute if score #valid_distance sab.var matches 31..40 run rotate @s ~ ~-16
execute if score #valid_distance sab.var matches 41..50 run rotate @s ~ ~-21
execute if score #valid_distance sab.var matches 51..60 run rotate @s ~ ~-26
execute if score #valid_distance sab.var matches 61..70 run rotate @s ~ ~-31
execute if score #valid_distance sab.var matches 71..80 run rotate @s ~ ~-36
execute if score #valid_distance sab.var matches 81.. run rotate @s ~ ~-41