scoreboard players set @s ultimate_charge 0

execute if score @s ultimate.cooldown matches 1 run tag @s remove class.scientist.toxic_carpet

return 1