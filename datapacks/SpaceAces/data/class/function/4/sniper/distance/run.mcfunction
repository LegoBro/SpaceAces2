## Stores stuff and does stuff
execute store result score xp Numbers run data get entity @s XpLevel
execute unless score @s last_shot = xp Numbers run function class:4/sniper/distance/reload

return 1