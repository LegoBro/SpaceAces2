#Commands when game is aborted
scoreboard players reset Mission Numbers
scoreboard players reset Mission display
tellraw @a[tag=awaiting] ["",{"text":"[","color":"dark_gray","bold":true},{"text":"Mission startup disengaged, not all players are ready","color":"gray","bold":false},{"text":"]","color":"dark_gray"}]
