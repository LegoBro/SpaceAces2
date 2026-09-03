#feedback for player
playsound block.note_block.hat master @s[type=player]



#show output in chat?
$scoreboard players set #nav_show_output sab.var $(show_output)
execute if score #nav_show_output sab.var matches 1.. run tellraw @a "\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"


#max distance to all sectors by defaul
execute as @e[type=marker,tag=sab.botWaypointGeneric] run \
    data modify entity @s data.distanceToSector set value [0,[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999],[9999999,9999999]]

#start doing things
scoreboard players set #nav_calc_sequence sab.var 1
scoreboard players set #nav_calc_phase sab.var 0
scoreboard players set #nav_calc_sector sab.var 1
scoreboard players set #nav_calc_sector_progress sab.var 0
scoreboard players set #nav_total_count sab.var 0
