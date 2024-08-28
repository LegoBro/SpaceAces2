tag @s add kill
execute if entity @s[tag=stun] run function classes:shocksmith/stun/land
execute if entity @s[tag=fire_bomb] run function classes:pyro/fire_bomb/land
execute if entity @s[tag=vis_mine] positioned ~ ~-1.5 ~ run function classes:sniper/vis_mine/land
execute if entity @s[tag=sticky_bomb] positioned ~ ~-1.5 ~ run function classes:bomber/sticky_bomb/land
execute if entity @s[tag=flash_grenade] run function classes:mobility/flash_grenade/land
execute if entity @s[tag=poison_jab] run function classes:seeker/poison_jab/land
execute if entity @s[tag=plasma_grenade] run function classes:bomber/grenade_impact
execute if entity @s[tag=hot_air] run function classes:pyro/hot_air_impact
execute if entity @s[tag=rocket] run function classes:rocketeer/rocket_impact
execute if entity @s[tag=chem] run function classes:scientist/chem_impact
execute if entity @s[tag=shock_grenade] run function classes:shocksmith/shock_grenade_impact
return 1