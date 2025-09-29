## Deployable health
execute if entity @s[tag=entity] at @s run function health:tick

execute if entity @s[tag=active_vis_mine] positioned ~ ~ ~ run function class:4/sniper/vis_mine/standby
execute if entity @s[tag=deploying.vis_mine] if predicate input:on_ground run function class:4/sniper/vis_mine/deploy
execute if entity @s[tag=standby_sticky_bomb,tag=!sticky_bomb] at @s run function class:4/bomber/sticky_bomb/standby
execute if entity @s[type=minecraft:item_display,tag=fused_detonator_standby] at @s run function class:4/infiltraitor/fused_detonator/standby



execute if entity @s[tag=turret_base] at @s run function class:4/mechanic/turret/standby
#execute if entity @s[tag=turret] at @s run function tick:turret
execute if entity @s[tag=chem_dispenser] at @s run function class:4/scientist/chem_dispenser/standby


execute if entity @s[tag=class.brawler.thrown_sword] at @s run function class:4/brawler/sword_throw/standby
execute if entity @s[tag=active_fire_bomb] at @s run function class:4/pyro/fire_bomb/standby
execute if entity @s[tag=class.pyro.trailblazer.trail] at @s run function class:4/pyro/trailblazer/standby

execute if entity @s[tag=class.scientist.toxic_carpet] at @s run function class:4/scientist/biohazard/standby
execute if entity @s[type=minecraft:area_effect_cloud,tag=energy_orb] at @s run function class:4/shocksmith/energy_sap/follow
execute if entity @s[type=minecraft:item_display,tag=class.healer.over_heal_machine] at @s run function class:4/healer/over_heal_machine/standby

execute if entity @s[tag=class.brawler.tornado] positioned ~ ~ ~ run return run function class:4/brawler/tornadic_disruption/standby
execute if entity @s[tag=class.mechanic.projector] positioned ~ ~ ~ run return run function class:4/mechanic/projector/standby

execute if entity @s[tag=class.shocksmith.shocksplosion] positioned ~ ~ ~ run return run function class:4/shocksmith/shocksplosion/standby