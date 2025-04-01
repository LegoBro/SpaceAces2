#These commands are ran by the wormhole sign
tellraw @s ["",{"text":"\n\n\n[","color":"gray","bold":true,"type":"text"},{"text":"Cargo Port","color":"white","clickEvent":{"action":"run_command","value":"/trigger worm_hole set 1"},"bold":false,"type":"text"},{"text":"]","color":"gray","bold":true,"type":"text"},{"text":" - main spawn area","color":"white","bold":false,"type":"text"}]
tellraw @s ["",{"text":"[","color":"gray","bold":true,"type":"text"},{"text":"Training Desk","color":"dark_red","clickEvent":{"action":"run_command","value":"/trigger worm_hole set 2"},"bold":false,"type":"text"},{"text":"]","color":"gray","bold":true,"type":"text"},{"text":" - training to understand class and abilities","color":"white","bold":false,"type":"text"}]
tellraw @s ["",{"text":"[","color":"gray","bold":true,"type":"text"},{"text":"Ship Console","color":"dark_green","clickEvent":{"action":"run_command","value":"/trigger worm_hole set 3"},"bold":false,"type":"text"},{"text":"]","color":"gray","bold":true,"type":"text"},{"text":" - select mission type and settings","color":"white","bold":false,"type":"text"}]
tellraw @s ["",{"text":"[","color":"gray","bold":true,"type":"text"},{"text":"Mission Selection","color":"dark_blue","clickEvent":{"action":"run_command","value":"/trigger worm_hole set 4"},"bold":false,"type":"text"},{"text":"]","color":"gray","bold":true,"type":"text"},{"text":" - change mission map","color":"white","bold":false,"type":"text"}]
tellraw @s ["",{"text":"[","color":"gray","bold":true,"type":"text"},{"text":"Team Selection","color":"gold","clickEvent":{"action":"run_command","value":"/trigger worm_hole set 5"},"bold":false,"type":"text"},{"text":"]","color":"gray","bold":true,"type":"text"},{"text":" - select teams and start game","color":"white","bold":false,"type":"text"}]
tellraw @s ["",{"text":"[","color":"gray","bold":true,"type":"text"},{"text":"Archives","color":"aqua","clickEvent":{"action":"run_command","value":"/trigger worm_hole set 6"},"bold":false,"type":"text"},{"text":"]","color":"gray","bold":true,"type":"text"},{"text":" - learn about characters and creators","color":"white","bold":false,"type":"text"}]

return 1