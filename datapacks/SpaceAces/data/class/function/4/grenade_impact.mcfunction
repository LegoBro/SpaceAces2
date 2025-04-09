tag @s[tag=!vis_mine] add kill

execute if entity @s[tag=plasma_grenade] run return run function class:4/bomber/grenade_impact
execute if entity @s[tag=shockround] run return run execute if entity @s[tag=projectile.impact.hitbox] run return run function class:4/shocksmith/primary/hit
execute if entity @s[tag=stun] run return run execute if entity @s[tag=projectile.impact.hitbox] run function class:4/shocksmith/stun/land
execute if entity @s[tag=fire_bomb] run return run function class:4/pyro/fire_bomb/land
execute if entity @s[tag=vis_mine] run return run function class:4/sniper/vis_mine/land
execute if entity @s[tag=sticky_bomb] run return run function class:4/bomber/sticky_bomb/land
execute if entity @s[tag=flash_grenade] run return run function class:4/mobility/flash_grenade/land
execute if entity @s[tag=poison_jab] run return run function class:4/seeker/poison_jab/land
execute if entity @s[tag=hot_air] run return run function class:4/pyro/hot_air_impact
execute if entity @s[tag=rocket] run return run function class:4/rocketeer/rocket_impact
execute if entity @s[tag=rocket_wall] run return run function class:4/rocketeer/rocket_wall/impact
execute if entity @s[tag=wrist_rocket] run return run function class:4/healer/wrist_rocket/impact
execute if entity @s[tag=chem] run return run function class:4/scientist/chem_impact
execute if entity @s[tag=shock_grenade] run return run function class:4/shocksmith/shock_grenade_impact
execute if entity @s[tag=fused_detonator] run return run function class:4/infiltraitor/fused_detonator/land

tellraw @a[tag=dev.projectile] "Grenade Impact Not Found"