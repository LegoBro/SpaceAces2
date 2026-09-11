scoreboard players set @s dev -1
tellraw @s[tag=!dev.payload] [{text:" - Enable Payload Visuals",color:yellow,click_event:{action:"run_command",command:"tag @s add dev.payload"}}]
tellraw @s[tag= dev.payload] [{text:" - Disable Payload Visuals",color:green,click_event:{action:"run_command",command:"tag @s remove dev.payload"}}]

