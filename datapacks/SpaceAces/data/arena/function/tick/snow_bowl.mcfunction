## Ticks the Snow Bowl Map when it is active



#only run logic at 5Hz
execute unless score #5Hz sab.var matches 2 run return 1
#=====


#check if the game is using random spawnpoints
execute store result score #random_spawn sab.var if data storage space_aces:selected_gamemode gamemode{respawn:"random"}

#if spawnpoints are random, open the tunnel between bases
execute if score #random_spawn sab.var matches 0 if block 16380 77 -47 air run clone 16380 75 -20 16388 77 -18 16380 77 -47
#otherwise close the tunnel
execute if score #random_spawn sab.var matches 1 unless block 16380 77 -47 air run fill 16380 77 -47 16388 79 -45 air



#players can break through the thin ice above each team's base
execute as @e[type=#projectile:players,tag=sab.activePlayer,x=16344,y=89,z=-6,dx=80,dy=5,dz=15] if predicate input:on_ground at @s if block ~ ~-1 ~ ice run \
    function sa_bots:common/run_2_commands {command_1:"fill ~-.5 ~-1 ~-.5 ~.5 ~-1 ~.5 air replace ice destroy",command_2:"execute if entity @s[tag=sab.botEntity] run scoreboard players set @s sab.botTimeSinceProgress -20"}

#replace ice when nobody is around
execute if entity @e[type=#projectile:players,tag=sab.activePlayer,x=16344,y=69,z=-6,dx=80,dy=100,dz=15] run return 1
#=====
fill 16351 90 2 16358 90 7 ice replace air
fill 16363 90 -5 16369 90 0 ice replace air
fill 16399 90 -5 16405 90 0 ice replace air
fill 16410 90 2 16417 90 7 ice replace air