## StarGazer (Sniper) Main Tick:

# Primary: Novapunch

execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function classes:soldier/primary/tick
execute if score @s reload matches 1.. run function classes:soldier/primary/reloading
execute if score @s shoot matches 1.. run function classes:soldier/primary/use


# 1st Ability: Starpiercer
execute if score @s ability.1.cooldown matches ..0 run function classes:sniper/starpiercer/ready
execute if score @s ability.1.cooldown matches 1.. run function classes:sniper/starpiercer/cooldown

# 2nd Ability: Vis Mine
execute if score @s ability.2.cooldown matches ..0 run function classes:sniper/vis_mine/ready
execute if score @s ability.2.cooldown matches 1.. run function classes:sniper/vis_mine/cooldown

return 1