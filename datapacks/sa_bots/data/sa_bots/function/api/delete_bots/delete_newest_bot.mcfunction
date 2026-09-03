#count how many bots exist
execute store result score #count sab.var run data get storage sa_bots:bot_data bots

#do nothing if there are not bots left
execute unless score #count sab.var matches 1.. run return run scoreboard players reset #delete_recursions sab.var
#=====


#remove bot at the end of the list
scoreboard players remove #count sab.var 1
execute store result storage sa_bots:generic id int 1 run scoreboard players get #count sab.var
function sa_bots:bot/storage/remove_newest_bot with storage sa_bots:generic


#count down recursions (if relevant)
execute if score #delete_recursions sab.var matches -2147483648..2147483647 run scoreboard players remove #delete_recursions sab.var 1
execute if score #delete_recursions sab.var matches ..0 run scoreboard players reset #delete_recursions sab.var
#keep going if more recursions
execute if score #delete_recursions sab.var matches 1.. run function sa_bots:api/delete_bots/delete_newest_bot