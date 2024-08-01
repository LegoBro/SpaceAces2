execute store result score enemiesLeft Numbers if entity @e[tag=bot]
execute store result bossbar minecraft:main value run scoreboard players get waveDelay Numbers
scoreboard players remove waveDelay Numbers 1
execute if score waveDelay Numbers matches 61.. if score wave Numbers matches 2.. if score enemiesLeft Numbers matches 0 run scoreboard players set waveDelay Numbers 60
scoreboard players operation Enemies display = enemiesLeft Numbers
execute if score waveDelay Numbers matches ..0 run function gamemode:escape/wave/finder
scoreboard players operation Energy display = currency Numbers
scoreboard players operation Wave display = wave Numbers
scoreboard players set @a[tag=escape,tag=no_2] activate_second 3
scoreboard players set @a[tag=escape,tag=no_3] activate_third 3
data merge block 29889 2 19 {Text2:'{"translate":"unlock","clickEvent":{"action":"run_command","value":"function gamemode:escape/purchase/secondary"}}',Text3:'{"translate":"secondary"}'}
data merge block 30012 16 -45 {Text2:'{"translate":"unlock","clickEvent":{"action":"run_command","value":"function gamemode:escape/purchase/tertiary"}}',Text3:'{"translate":"tertiary"}'}
execute as @a[tag=escape,team=blue] at @s run fill ~1 ~1 ~1 ~-1 ~-1 ~-1 air replace creeper_head
execute as @a[tag=escape,scores={health=..0},team=!spectator] at @s run function gamemode:escape/knocked_down

# DOOR
execute as @e[type=armor_stand,tag=door,tag=opening] at @s run function gamemode:escape/door

effect clear @a[tag=escape,nbt={SelectedItemSlot:8}] minecraft:mining_fatigue
item replace entity @a[tag=escape,scores={ypos=14..29}] hotbar.8 with filled_map{map:7}
item replace entity @a[tag=escape,scores={ypos=..13}] hotbar.8 with filled_map{map:14}
item replace entity @a[tag=escape,scores={ypos=30..}] hotbar.8 with filled_map{map:8}
scoreboard players set @a[team=red,scores={health=1..},tag=escape] health 0
tag @e[type=item_frame,tag=spawner,tag=!active] add active
#execute as @a[tag=escape,team=blue] at @s run tag @e[type=item_frame,tag=spawner,limit=2,sort=nearest] add active
effect give @a[tag=escape,scores={health=..0}] glowing 1 1 true

execute as @e[type=area_effect_cloud,tag=terminal,tag=active] at @s if entity @p[team=blue,tag=escape,distance=..5,tag=hb_crouched_player] run function gamemode:escape/terminal
execute as @e[type=area_effect_cloud,tag=terminal,tag=active,tag=!glowing] at @s unless entity @p[team=blue,tag=escape,distance=..25] run function gamemode:escape/terminal_begin_glow
execute as @e[type=area_effect_cloud,tag=terminal,tag=active,tag=glowing] at @s if entity @p[team=blue,tag=escape,distance=..25] run function gamemode:escape/terminal_end_glow

execute as @a[tag=in_game,tag=escape] at @s if entity @e[type=area_effect_cloud,tag=terminal,tag=active,distance=..5] run title @s subtitle {"translate":"near_terminal"}
execute as @a[tag=in_game,tag=escape] at @s if entity @e[type=area_effect_cloud,tag=terminal,tag=active,distance=..5] run title @s title ""
execute store result score Terminals display if entity @e[type=area_effect_cloud,tag=terminal,tag=!active]
bossbar set minecraft:main name {"text":"Next Wave"}

# Win/Lose Conditions
execute unless entity @a[tag=escape,scores={health=1..}] run function gamemode:escape/death
#effect give @a[tag=escape,x=29941,y=1,z=5,distance=..5] glowing 1 1 true

execute if score Terminals display matches 5.. unless entity @e[type=magma_cube,tag=ship_leave] run summon magma_cube 29940 1 4 {Silent:1b,ActiveEffects:[{Id:14b,Amplifier:0b,Duration:50000000,ShowParticles:0b}],Invulnerable:1b,Glowing:1b,Tags:["ship_leave"],NoGravity:1b,NoAI:1b,Size:1}

execute if score Terminals display matches 5.. unless entity @a[tag=escape,x=29941,y=1,z=5,distance=5..] run tag @e[type=armor_stand,tag=ship_anchor,limit=1] add win
execute if score Wave display matches 50.. unless entity @a[tag=escape,x=29941,y=1,z=5,distance=5..] run tag @e[type=armor_stand,tag=ship_anchor,limit=1] add win
execute if entity @e[type=armor_stand,tag=ship_anchor,limit=1,tag=win] run function gamemode:escape/win

execute unless entity @e[type=armor_stand,tag=ship_anchor,limit=1,tag=win] run scoreboard players add time Numbers 1
