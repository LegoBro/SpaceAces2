## Gets a new id
scoreboard players add $current_id id 1
execute unless score @s id matches 0.. run scoreboard players operation @s id = $current_id id