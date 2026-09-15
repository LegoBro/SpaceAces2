#match base movement speed of a human player
attribute @s movement_speed base set 0.1

#don't take fall damage
attribute @s safe_fall_distance base set 1000.0

#100HP by default
scoreboard players set @s maxHealth 100
scoreboard players set @s health 100