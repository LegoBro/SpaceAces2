#Commands when game is aborted
scoreboard players reset Mission Numbers
scoreboard players reset Mission display
tellraw @a[tag=awaiting] ["",{"text":"[","color":"dark_gray","bold":true,"type":"text"},{"text":"Mission startup disengaged, all players should be on the blue team!","color":"gray","bold":false,"type":"text"},{"text":"]","color":"dark_gray","type":"text"}]

return 1