$scoreboard players $(operation) #show_nav_channel sab.var 1
execute if score #show_nav_channel sab.var matches ..-1 run scoreboard players set #show_nav_channel sab.var 16
execute if score #show_nav_channel sab.var matches 17.. run scoreboard players set #show_nav_channel sab.var 0

#feedback
playsound block.note_block.hat master @s

#show menu again
execute as @a[tag=sab.botPathEdit,scores={sab.menuPage=15}] run function sa_bots:editor/menu/15_nav_calculations