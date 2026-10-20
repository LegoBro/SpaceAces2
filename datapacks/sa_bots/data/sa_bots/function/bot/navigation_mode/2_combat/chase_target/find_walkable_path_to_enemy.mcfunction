#executed as bot entity


#find position of the entity we're targeting
scoreboard players operation #get_id sab.var = @s sab.botTargetEntityID
execute as @e[type=#projectile:has_hb,tag=hb,distance=..35] if score @s id = #get_id sab.var unless score @s Team = #team sab.var \
    at @s run tp e-0-0-0-3 ~ ~ ~
#check if we have a walkable path to the target
#...or more accurately, start at the target and work backwards
scoreboard players set #found_direct_path sab.var 0
scoreboard players set #recursions sab.var 36
execute at e-0-0-0-3 if entity @s[distance=..35] \
    facing entity @s feet rotated ~ 0 align y run function sa_bots:bot/navigation_mode/2_combat/chase_target/find_walkable_path_to_enemy_recursive


#send e3 back where it came from
tp e-0-0-0-3 0 50 0

#function output
execute if score #found_direct_path sab.var matches 1.. run return 1
return 0
