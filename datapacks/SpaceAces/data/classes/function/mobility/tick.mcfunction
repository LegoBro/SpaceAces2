## Warp Walker (mobility) Main Tick:

# Primary: Flux Burst Rifle

execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function classes:mobility/primary/tick
execute if score @s reload matches 1.. run function classes:mobility/primary/reloading
execute if score @s shoot matches 1.. run function classes:mobility/primary/use


# 1st Ability: Dodge
execute if score @s ability.1.cooldown matches ..0 run function classes:mobility/warp/ready
execute if score @s ability.1.cooldown matches 1.. run function classes:mobility/warp/cooldown

# 2nd Ability: Flash Grenade
execute if score @s ability.2.cooldown matches ..0 run function classes:mobility/flash_grenade/ready
execute if score @s ability.2.cooldown matches 1.. run function classes:mobility/flash_grenade/cooldown

return 1