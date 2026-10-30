scoreboard players set @s dev -1


# Misc?
tellraw @s[tag=!dev.spawnpoints] [{text:" [ ] "},{translate:"dev.spawnpoint",color:yellow,click_event:{action:"run_command",command:"trigger dev set 1000"}}]
tellraw @s[tag= dev.spawnpoints] [{text:" [x] "},{translate:"dev.spawnpoint",color:green ,click_event:{action:"run_command",command:"trigger dev set 1000"}}]
tellraw @s[tag= dev.spawnpoints] [{text:"  "},{translate:"dev.spawnpoint.respawn_time",color:green,click_event:{action:"suggest_command",command:"/data modify entity @n[type=marker,tag=gamemode.spawnpoint] data.respawn_time set value "}}]

# Gamemodes
tellraw @s[tag=!dev.gamemode] [{text:" [ ] "},{translate:"gamemode.options",color:yellow,click_event:{action:"run_command",command:"trigger dev set 2000"}}]
tellraw @s[tag= dev.gamemode] [{text:" [x] "},{translate:"gamemode.options",color:green ,click_event:{action:"run_command",command:"trigger dev set 2000"}}]

tellraw @s[tag=!dev.gamemode.payload,tag=dev.gamemode] [{text:"  [ ] "},{translate:"gamemode.payload",color:yellow,click_event:{action:"run_command",command:"trigger dev set 2010"}}]
tellraw @s[tag= dev.gamemode.payload,tag=dev.gamemode] [{text:"  [x] "},{translate:"gamemode.payload",color:green, click_event:{action:"run_command",command:"trigger dev set 2010"}}]

tellraw @s[tag=!dev.gamemode.setback,tag=dev.gamemode] [{text:"  [ ] "},{translate:"gamemode.setback",color:yellow,click_event:{action:"run_command",command:"trigger dev set 2020"}}]
tellraw @s[tag= dev.gamemode.setback,tag=dev.gamemode] [{text:"  [x] "},{translate:"gamemode.setback",color:green, click_event:{action:"run_command",command:"trigger dev set 2020"}}]
