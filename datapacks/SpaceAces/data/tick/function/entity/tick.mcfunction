## Optimization for @s
execute if entity @s[tag=grenade] at @s run function tick:grenade
execute if entity @s[type=minecraft:item_frame] at @s run function tick:item_frame/tick
execute if entity @s[tag=raycast] at @s run function tick:raycast
execute if entity @s[tag=turret_base] at @s run function tick:turret_base
execute if entity @s[tag=turret] at @s run function tick:turret
execute if entity @s[tag=healing_machine] at @s run function classes:scientist/healing_machine/standby
execute if entity @s[tag=active_vis_mine] positioned ~ ~1.5 ~ run function classes:sniper/vis_mine/standby
execute if entity @s[tag=thrown_sword] at @s run function classes:brawler/sword_throw/standby
execute if entity @s[tag=active_fire_bomb] at @s run function classes:pyro/fire_bomb/standby
execute if entity @s[type=minecraft:armor_stand,tag=healing_machine_display] unless entity @s[type=minecraft:slime,distance=..1,tag=healing_machine] at @s run kill @s
execute if entity @s[tag=standby_sticky_bomb,tag=!sticky_bomb] at @s run function classes:bomber/sticky_bomb/standby
execute if entity @s[tag=poison_trail] at @s run function classes:scientist/biohazard/standby
execute if entity @s[type=minecraft:area_effect_cloud,tag=energy_orb] at @s run function classes:shocksmith/energy_sap/follow
execute if entity @s[type=minecraft:armor_stand,tag=over_heal_machine] at @s run function classes:healer/over_heal_machine/standby
# performs health functions
execute if entity @s[tag=entity] at @s run function health:tick
# BOT
execute if entity @s[tag=bot] at @s run function enemies:tick
# !items
kill @s[type=minecraft:item]

kill @s[type=!minecraft:player,x=3,y=195,z=-10,dx=11,dy=1,dz=15]

# kill aoe's summoned by creepers
kill @s[type=minecraft:area_effect_cloud,nbt={effects:[{id:"minecraft:resistance"}]}]