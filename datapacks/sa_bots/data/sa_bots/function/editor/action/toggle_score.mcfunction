#toggle between 0 and 1
$scoreboard players add $(name) sab.var 1
$execute if score $(name) sab.var matches 2.. run scoreboard players set $(name) sab.var 0

#set flag for debug bot entities
scoreboard players set #debug_bot_entity_ticking sab.var 0
execute if score #debug_show_bot_task sab.var matches 1.. run scoreboard players set #debug_bot_entity_ticking sab.var 1
execute if score #debug_show_bot_destination sab.var matches 1.. run scoreboard players set #debug_bot_entity_ticking sab.var 1
execute if score #debug_show_move_target sab.var matches 1.. run scoreboard players set #debug_bot_entity_ticking sab.var 1
execute if score #debug_show_nav_cache sab.var matches 1.. run scoreboard players set #debug_bot_entity_ticking sab.var 1

#feedback
playsound block.note_block.hat master @s

#show menu again
$function sa_bots:editor/menu/$(menu)