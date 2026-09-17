scoreboard players set @s dev -1


tellraw @s[tag=!dev.spawnpoints] [{text:" [ ] Spawnpoint Visuals",color:yellow,click_event:{action:"run_command",command:"tag @s add dev.spawnpoints"}}]
tellraw @s[tag= dev.spawnpoints] [{text:" [x] Spawnpoint Visuals",color:green,click_event:{action:"run_command",command:"tag @s remove dev.spawnpoints"}}]

tellraw @s[tag=!dev.payload] [{text:" [ ] Payload Visuals",color:yellow,click_event:{action:"run_command",command:"tag @s add dev.payload"}}]
tellraw @s[tag= dev.payload] [{text:" [x] Payload Visuals",color:green,click_event:{action:"run_command",command:"tag @s remove dev.payload"}}]



