execute if entity @s[tag=turret_base] at @s run function tick:turret_base
execute if entity @s[tag=turret] at @s run function tick:turret
execute if entity @s[tag=healing_machine] at @s run function classes:4/scientist/healing_machine/standby
execute if entity @s[tag=active_vis_mine] positioned ~ ~ ~ run function classes:4/sniper/vis_mine/standby
execute if entity @s[tag=deploying.vis_mine] if predicate input:on_ground run function classes:4/sniper/vis_mine/deploy
execute if entity @s[tag=thrown_sword] at @s run function classes:4/brawler/sword_throw/standby
execute if entity @s[tag=active_fire_bomb] at @s run function classes:4/pyro/fire_bomb/standby
execute if entity @s[type=minecraft:armor_stand,tag=healing_machine_display] unless entity @s[type=minecraft:slime,distance=..1,tag=healing_machine] at @s run kill @s
execute if entity @s[tag=standby_sticky_bomb,tag=!sticky_bomb] at @s run function classes:4/bomber/sticky_bomb/standby
execute if entity @s[tag=poison_trail] at @s run function classes:4/scientist/biohazard/standby
execute if entity @s[type=minecraft:area_effect_cloud,tag=energy_orb] at @s run function classes:4/shocksmith/energy_sap/follow
execute if entity @s[type=minecraft:armor_stand,tag=over_heal_machine] at @s run function classes:4/healer/over_heal_machine/standby