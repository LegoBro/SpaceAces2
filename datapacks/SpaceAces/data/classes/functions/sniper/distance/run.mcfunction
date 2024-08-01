## Stores stuff and does stuff
execute store result score xp Numbers run data get entity @s XpLevel
execute unless score @s last_shot = xp Numbers run function classes:sniper/distance/reload
