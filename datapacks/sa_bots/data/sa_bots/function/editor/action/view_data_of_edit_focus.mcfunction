#executed by a player. otherwise this does nothing


#go collect data from the waypoint
scoreboard players set #success sab.var 0
function sa_bots:editor/utility/run_command_waypoint_short_macro \
    {player_score:"@s sab.waypointEditFocus",command:"function sa_bots:editor/action/view_data_of_edit_focus_go",context:"as"}


#show what we found
execute if score #success sab.var matches 1.. run tellraw @s ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n",{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false},{text:"\n---",color:red}]

#feedback
playsound block.note_block.hat master @s


#show menu again
execute if score #success sab.var matches 1.. run scoreboard players set #no_text_push sab.var 1
function sa_bots:editor/menu/2_edit_menu