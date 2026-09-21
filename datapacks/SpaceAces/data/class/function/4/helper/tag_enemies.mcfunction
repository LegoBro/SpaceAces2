## Tags all enemies with is_enemy
scoreboard players operation #Team Team = @s Team
tag @e[tag=is_on_team] remove is_enemy
execute as @e[tag=hb,tag=hb] unless score @s Team = #Team Team run tag @s add is_enemy