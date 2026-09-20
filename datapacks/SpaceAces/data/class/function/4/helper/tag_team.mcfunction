## Tags all players on your team
scoreboard players operation #team Team = @s Team
tag @e[tag=is_on_team] remove is_on_team
execute as @e[tag=!ignore,tag=!ignore.projectiles,tag=hb,distance=..50] if score @s Team = #team Team run tag @s add is_on_team
