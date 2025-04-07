#Commands ran when game is launched
execute at @a run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 1.0 2.0 1.0
scoreboard players set Mission Numbers 200
scoreboard objectives modify display displayname {"text":"Status:",color:"green","type":"text"}
scoreboard players set Prestart Numbers 1
tellraw @a ["",{"text":"[",color:"dark_gray","bold":true,"type":"text"},{"text":"All players ready, mission startup engaged",color:"gray",click_event:{"action":"run_command",command:"/trigger worm_hole set 1"},"bold":false,"type":"text"},{"text":"]",color:"dark_gray","type":"text"}]
scoreboard objectives setdisplay sidebar display
return 1