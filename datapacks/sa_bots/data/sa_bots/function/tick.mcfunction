#executed by system on every game tick


#------------------------------
#TIME

#various tick timers
scoreboard players add #10Hz sab.var 1
execute if score #10Hz sab.var matches 2.. run scoreboard players set #10Hz sab.var 0
scoreboard players add #5Hz sab.var 1
execute if score #5Hz sab.var matches 5.. run scoreboard players set #5Hz sab.var 0
scoreboard players add #2sec sab.var 1
execute if score #2sec sab.var matches 40.. run scoreboard players set #2sec sab.var 0
#------------------------------


#------------------------------
#TICKING LOGIC

#enable Creative Mode players to use the bot edit menus
scoreboard players enable @a[gamemode=creative] botPathEdit
scoreboard players reset @a[gamemode=!creative] botPathEdit
execute as @a[scores={botPathEdit=1..}] run function sa_bots:editor/input/_input_index

#tick players who are actively editing bot paths
scoreboard players set #player_in_path_editor sab.var 0
execute as @a[tag=sab.botPathEdit] at @s run function sa_bots:editor/_editor_player_tick
execute if score #player_in_path_editor sab.var matches 1.. run function sa_bots:editor/_editor_post_tick

#handle nav calculation when requested (this can also be invoked during gameplay if needed)
execute if score #nav_calc_sector sab.var matches 1.. run function sa_bots:editor/nav/_nav_generate_tick

#handle bots (if any exist)
execute if data storage sa_bots:bot_data bots[0] run function sa_bots:bot/_bot_global_tick
#------------------------------


#------------------------------
#CLEANUP

#count down lifespan on temporary objects
execute as @e[scores={sab.lifespan=-2147483648..2147483647}] at @s run function sa_bots:common/lifespan
#------------------------------

#debug, play game
execute as @a[tag=sab.testGame,scores={Team=3..}] at @s if score @s health matches ..0 run tp @s @e[type=marker,limit=1,sort=random,distance=..200,tag=general_spawn_point]
execute as @a[tag=sab.testGame,scores={Team=1}] at @s if score @s health matches ..0 run tp @s @e[type=marker,limit=1,sort=random,distance=..200,tag=blue_spawn_point]
execute as @a[tag=sab.testGame,scores={Team=2}] at @s if score @s health matches ..0 run tp @s @e[type=marker,limit=1,sort=random,distance=..200,tag=red_spawn_point]
execute as @a[tag=sab.testGame] at @s if score @s health matches ..0 store result score @s Class run random value 1..15
execute as @a[tag=sab.testGame] at @s if score @s health matches ..0 run function class:reselect

#debug, be invincible and untargetable
execute as @a[tag=sab.spectateGame] run scoreboard players set @s healing 100
execute as @a[tag=sab.spectateGame] run scoreboard players set @s invulnerable 5
execute as @a[tag=sab.spectateGame] run tag @s remove hb