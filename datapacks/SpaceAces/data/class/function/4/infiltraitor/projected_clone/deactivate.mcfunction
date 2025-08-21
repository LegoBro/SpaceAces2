scoreboard players set @s ultimate_charge 0
scoreboard players set @s invulnerable 20
scoreboard players set @s invis 20
effect give @s minecraft:speed 2 2 true
effect give @s minecraft:luck 2 50 true

execute if score @s damage matches 1.. run return run function class:4/infiltraitor/projected_clone/return

return 1