#Commands ran when game is launched
execute at @a run playsound minecraft:block.conduit.deactivate master @a ~ ~ ~ 1.0 2.0 1.0
scoreboard players set Mission Numbers 200
scoreboard objectives modify display displayname {"text":"Status:","color":"green"}
scoreboard players set Prestart Numbers 1
tellraw @a ["",{"text":"[","color":"dark_gray","bold":true},{"text":"All players ready, mission startup engaged","color":"gray","clickEvent":{"action":"run_command","value":"trigger worm_hole set 1"},"bold":false},{"text":"]","color":"dark_gray"}]
