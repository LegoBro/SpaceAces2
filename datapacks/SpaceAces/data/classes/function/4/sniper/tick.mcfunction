## StarGazer (Sniper) Main Tick:

# Primary: Novapunch

execute unless score @s reload matches 1.. unless score @s shoot matches 1.. run function classes:4/sniper/primary/tick
execute if score @s reload matches 1.. run function classes:4/sniper/primary/reloading
execute unless score @s reload matches 1.. if score @s shoot matches 1.. run function classes:4/sniper/primary/use


# 1st Ability: Starpiercer
execute if score @s ability.1.cooldown matches ..0 run function classes:4/sniper/starpiercer/ready
execute if score @s ability.1.cooldown matches 1.. run function classes:4/sniper/starpiercer/cooldown

# 2nd Ability: Vis Mine
execute if score @s ability.2.cooldown matches ..0 run function classes:4/sniper/vis_mine/ready
execute if score @s ability.2.cooldown matches 1.. run function classes:4/sniper/vis_mine/cooldown

# Boot Launch
execute if entity @s[tag=input.sneak] run function classes:4/sniper/jump/charge
execute if entity @s[tag=input.sneak.stop] run scoreboard players set @s passive.cooldown 0

return 1