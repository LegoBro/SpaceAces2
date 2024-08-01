#Commands ran every tick, all the time

#Entities that run independantly
execute as @a at @s run function tick:player/tick
execute as @e[tag=grenade] at @s run function tick:grenade
execute as @e[type=item_frame] at @s run function tick:item_frame/tick
execute as @e[tag=raycast] at @s run function tick:raycast
execute as @e[tag=turret_base] at @s run function tick:turret_base
execute as @e[tag=turret] at @s run function tick:turret
execute as @e[tag=healing_machine] at @s run function classes:scientist/healing_machine/standby
execute as @e[tag=active_vis_mine] at @s positioned ~ ~1.5 ~ run function classes:sniper/vis_mine/standby
execute as @e[tag=thrown_sword] at @s run function classes:brawler/sword_throw/standby
execute as @e[tag=active_fire_bomb] at @s run function classes:pyro/fire_bomb/standby
execute as @e[type=armor_stand,tag=healing_machine_display] at @s unless entity @e[type=slime,tag=healing_machine,distance=..1] run kill @s
execute as @e[tag=standby_sticky_bomb,tag=!sticky_bomb] at @s run function classes:bomber/sticky_bomb/standby
execute as @e[tag=poison_trail] at @s run function classes:scientist/biohazard/standby
execute as @e[tag=energy_orb,type=area_effect_cloud] at @s run function classes:shocksmith/energy_sap/follow
execute as @e[tag=over_heal_machine,type=armor_stand] at @s run function classes:healer/over_heal_machine/standby

# kill aoe's summoned by creepers
kill @e[nbt={Effects:[{Id:11b}]},type=area_effect_cloud]

# Blue
execute if entity @a[tag=in_game] run particle minecraft:angry_villager 5.75 195.06 9.49 .5 .5 .5 .01 2 force

# Red
execute if entity @a[tag=in_game] run particle minecraft:angry_villager 11.75 195.06 9.49 .5 .5 .5 .01 2 force
execute unless entity @a[tag=in_game] run function tick:no_in_game

kill @e[type=!player,x=3,y=195,z=-10,dx=11,dy=1,dz=15]

# Gamemode running/setup
execute if score Mission Numbers matches 1.. run function gamemode:countdown
execute if score ActiveMode Numbers matches 1.. if score Prestart Numbers matches ..119 run function gamemode:loading_gamemode
execute if score ActiveMode Numbers matches 1.. unless score Prestart Numbers matches ..119 run function gamemode:running

# if player is in training area
execute if entity @a[tag=trainee] run function gamemode:training

# Other console stuff
function gamemode:console/book

# !items
kill @e[type=item]

# spins the heads
function gamemode:floating_heads


# performs health functions
execute as @e[tag=entity] at @s run function health:tick
# BOT
execute as @e[tag=bot] at @s run function enemies:tick

# performs functions for the archive room
function archives:main
