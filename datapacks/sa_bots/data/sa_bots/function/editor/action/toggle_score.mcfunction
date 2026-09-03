#toggle between 0 and 1
$scoreboard players add $(name) sab.var 1
$execute if score $(name) sab.var matches 2.. run scoreboard players set $(name) sab.var 0

#feedback
playsound block.note_block.hat master @s

#show menu again
$function sa_bots:editor/menu/$(menu)