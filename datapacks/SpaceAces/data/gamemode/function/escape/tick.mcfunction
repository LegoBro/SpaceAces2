execute store result score enemiesLeft Numbers if entity @e[tag=bot]
execute store result bossbar minecraft:main value run scoreboard players get waveDelay Numbers
scoreboard players remove waveDelay Numbers 1
execute if score waveDelay Numbers matches 61.. if score wave Numbers matches 2.. if score enemiesLeft Numbers matches 0 run scoreboard players set waveDelay Numbers 60
scoreboard players operation Enemies display = enemiesLeft Numbers
execute if score waveDelay Numbers matches ..0 run function gamemode:escape/wave/finder
scoreboard players operation Energy display = currency Numbers
scoreboard players operation Wave display = wave Numbers
scoreboard players set @a[tag=escape,tag=no_2] ability.1.cooldown 3
scoreboard players set @a[tag=escape,tag=no_3] ability.2.cooldown 3
function help:67dbc8e600a8acbdaf649a934eab1431a03ac4eb5d64691ccf47d5a3b6051548
function help:28f98be0d8c9a8d88f2529ae20beb7ae31a55203e8e9e464b6db2f30fbe18298
execute as @a[tag=escape,team=blue] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 minecraft:air replace minecraft:creeper_head
execute as @a[tag=escape,scores={health=..0},team=!spectator] at @s run function gamemode:escape/knocked_down

# DOOR
execute as @e[type=minecraft:armor_stand,tag=door,tag=opening] at @s run function gamemode:escape/door

function help:bf6b8f923752bc0a2f59861ed5c13a33a14ff206d248f8f7a3fa9810340615cf
item replace entity @a[tag=escape,scores={ypos=14..29}] hotbar.8 with minecraft:filled_map[minecraft:map_id=7]
item replace entity @a[tag=escape,scores={ypos=..13}] hotbar.8 with minecraft:filled_map[minecraft:map_id=14]
item replace entity @a[tag=escape,scores={ypos=30..}] hotbar.8 with minecraft:filled_map[minecraft:map_id=8]
scoreboard players set @a[tag=escape,scores={health=1..},team=red] health 0
tag @e[type=minecraft:item_frame,tag=spawner,tag=!active] add active
#execute as @a[tag=escape,team=blue] at @s run tag @e[type=item_frame,tag=spawner,limit=2,sort=nearest] add active
effect give @a[tag=escape,scores={health=..0}] minecraft:glowing 1 1 true

execute as @e[type=minecraft:area_effect_cloud,tag=terminal,tag=active] at @s if entity @p[distance=..5,tag=escape,tag=hb_crouched_player,team=blue] run function gamemode:escape/terminal
execute as @e[type=minecraft:area_effect_cloud,tag=terminal,tag=active,tag=!glowing] at @s unless entity @p[distance=..25,tag=escape,team=blue] run function gamemode:escape/terminal_begin_glow
execute as @e[type=minecraft:area_effect_cloud,tag=terminal,tag=active,tag=glowing] at @s if entity @p[distance=..25,tag=escape,team=blue] run function gamemode:escape/terminal_end_glow

execute as @a[tag=in_game,tag=escape] at @s if entity @e[type=minecraft:area_effect_cloud,distance=..5,tag=terminal,tag=active] run title @s subtitle {"translate":"near_terminal"}
execute as @a[tag=in_game,tag=escape] at @s if entity @e[type=minecraft:area_effect_cloud,distance=..5,tag=terminal,tag=active] run title @s title ""
execute store result score Terminals display if entity @e[type=minecraft:area_effect_cloud,tag=terminal,tag=!active]
bossbar set minecraft:main name {"text":"Next Wave","type":"text"}

# Win/Lose Conditions
execute unless entity @a[tag=escape,scores={health=1..}] run function gamemode:escape/death
#effect give @a[tag=escape,x=29941,y=1,z=5,distance=..5] glowing 1 1 true

execute if score Terminals display matches 5.. unless entity @e[type=minecraft:magma_cube,tag=ship_leave] run summon minecraft:magma_cube 29940 1 4 {Silent:1b,Invulnerable:1b,Glowing:1b,Tags:["ship_leave"],NoGravity:1b,NoAI:1b,Size:1,active_effects:[{id:"minecraft:invisibility",duration:50000000,show_particles:0b}]}

execute if score Terminals display matches 5.. unless entity @a[x=29941,y=1,z=5,distance=5..,tag=escape] run tag @e[type=minecraft:armor_stand,tag=ship_anchor,limit=1] add win
execute if score Wave display matches 50.. unless entity @a[x=29941,y=1,z=5,distance=5..,tag=escape] run tag @e[type=minecraft:armor_stand,tag=ship_anchor,limit=1] add win
execute if entity @e[type=minecraft:armor_stand,tag=ship_anchor,tag=win,limit=1] run function gamemode:escape/win

execute unless entity @e[type=minecraft:armor_stand,tag=ship_anchor,tag=win,limit=1] run scoreboard players add time Numbers 1

return 1