## Tags all players on your team
scoreboard players operation #Team Team = @s Team
tag @e[tag=is_on_team] remove is_on_team
execute as @e[tag=!ignore,tag=!ignore.projectiles,tag=hb] if score @s Team = #Team Team run tag @s add is_on_team
