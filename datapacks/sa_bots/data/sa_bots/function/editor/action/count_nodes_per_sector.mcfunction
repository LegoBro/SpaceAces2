#print counts per sector


tellraw @s "\n\n\n"

#show number of nodes in each sector
execute store result score #count sab.var run execute if entity @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.1]
tellraw @s [" ",{translate:"sa_bot.nav_output.sector_n",with:[{text:"1"}],underlined:true,click_event:{action:"run_command",command:"tp @n[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.1]"}},": ",{score:{name:"#count",objective:"sab.var"},color:gold,underlined:false}]
execute store result score #count sab.var run execute if entity @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.2]
tellraw @s [" ",{translate:"sa_bot.nav_output.sector_n",with:[{text:"2"}],underlined:true,click_event:{action:"run_command",command:"tp @n[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.2]"}},": ",{score:{name:"#count",objective:"sab.var"},color:gold,underlined:false}]
execute store result score #count sab.var run execute if entity @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.3]
tellraw @s [" ",{translate:"sa_bot.nav_output.sector_n",with:[{text:"3"}],underlined:true,click_event:{action:"run_command",command:"tp @n[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.3]"}},": ",{score:{name:"#count",objective:"sab.var"},color:gold,underlined:false}]
execute store result score #count sab.var run execute if entity @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.4]
tellraw @s [" ",{translate:"sa_bot.nav_output.sector_n",with:[{text:"4"}],underlined:true,click_event:{action:"run_command",command:"tp @n[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.4]"}},": ",{score:{name:"#count",objective:"sab.var"},color:gold,underlined:false}]
execute store result score #count sab.var run execute if entity @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.5]
tellraw @s [" ",{translate:"sa_bot.nav_output.sector_n",with:[{text:"5"}],underlined:true,click_event:{action:"run_command",command:"tp @n[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.5]"}},": ",{score:{name:"#count",objective:"sab.var"},color:gold,underlined:false}]
execute store result score #count sab.var run execute if entity @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.6]
tellraw @s [" ",{translate:"sa_bot.nav_output.sector_n",with:[{text:"6"}],underlined:true,click_event:{action:"run_command",command:"tp @n[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.6]"}},": ",{score:{name:"#count",objective:"sab.var"},color:gold,underlined:false}]
execute store result score #count sab.var run execute if entity @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.7]
tellraw @s [" ",{translate:"sa_bot.nav_output.sector_n",with:[{text:"7"}],underlined:true,click_event:{action:"run_command",command:"tp @n[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.7]"}},": ",{score:{name:"#count",objective:"sab.var"},color:gold,underlined:false}]
execute store result score #count sab.var run execute if entity @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.8]
tellraw @s [" ",{translate:"sa_bot.nav_output.sector_n",with:[{text:"8"}],underlined:true,click_event:{action:"run_command",command:"tp @n[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.8]"}},": ",{score:{name:"#count",objective:"sab.var"},color:gold,underlined:false}]
execute store result score #count sab.var run execute if entity @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.9]
tellraw @s [" ",{translate:"sa_bot.nav_output.sector_n",with:[{text:"9"}],underlined:true,click_event:{action:"run_command",command:"tp @n[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.9]"}},": ",{score:{name:"#count",objective:"sab.var"},color:gold,underlined:false}]
execute store result score #count sab.var run execute if entity @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.10]
tellraw @s [" ",{translate:"sa_bot.nav_output.sector_n",with:[{text:"10"}],underlined:true,click_event:{action:"run_command",command:"tp @n[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.10]"}},": ",{score:{name:"#count",objective:"sab.var"},color:gold,underlined:false}]
execute store result score #count sab.var run execute if entity @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.11]
tellraw @s [" ",{translate:"sa_bot.nav_output.sector_n",with:[{text:"11"}],underlined:true,click_event:{action:"run_command",command:"tp @n[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.11]"}},": ",{score:{name:"#count",objective:"sab.var"},color:gold,underlined:false}]
execute store result score #count sab.var run execute if entity @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.12]
tellraw @s [" ",{translate:"sa_bot.nav_output.sector_n",with:[{text:"12"}],underlined:true,click_event:{action:"run_command",command:"tp @n[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.12]"}},": ",{score:{name:"#count",objective:"sab.var"},color:gold,underlined:false}]
execute store result score #count sab.var run execute if entity @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.13]
tellraw @s [" ",{translate:"sa_bot.nav_output.sector_n",with:[{text:"13"}],underlined:true,click_event:{action:"run_command",command:"tp @n[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.13]"}},": ",{score:{name:"#count",objective:"sab.var"},color:gold,underlined:false}]
execute store result score #count sab.var run execute if entity @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.14]
tellraw @s [" ",{translate:"sa_bot.nav_output.sector_n",with:[{text:"14"}],underlined:true,click_event:{action:"run_command",command:"tp @n[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.14]"}},": ",{score:{name:"#count",objective:"sab.var"},color:gold,underlined:false}]
execute store result score #count sab.var run execute if entity @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.15]
tellraw @s [" ",{translate:"sa_bot.nav_output.sector_n",with:[{text:"15"}],underlined:true,click_event:{action:"run_command",command:"tp @n[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.15]"}},": ",{score:{name:"#count",objective:"sab.var"},color:gold,underlined:false}]
execute store result score #count sab.var run execute if entity @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.16]
tellraw @s [" ",{translate:"sa_bot.nav_output.sector_n",with:[{text:"16"}],underlined:true,click_event:{action:"run_command",command:"tp @n[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.16]"}},": ",{score:{name:"#count",objective:"sab.var"},color:gold,underlined:false}]
execute store result score #count sab.var run execute if entity @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.17]
tellraw @s [" ",{translate:"sa_bot.nav_output.sector_n",with:[{text:"17"}],underlined:true,click_event:{action:"run_command",command:"tp @n[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.17]"}},": ",{score:{name:"#count",objective:"sab.var"},color:gold,underlined:false}]
execute store result score #count sab.var run execute if entity @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.18]
tellraw @s [" ",{translate:"sa_bot.nav_output.sector_n",with:[{text:"18"}],underlined:true,click_event:{action:"run_command",command:"tp @n[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.18]"}},": ",{score:{name:"#count",objective:"sab.var"},color:gold,underlined:false}]
execute store result score #count sab.var run execute if entity @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.19]
tellraw @s [" ",{translate:"sa_bot.nav_output.sector_n",with:[{text:"19"}],underlined:true,click_event:{action:"run_command",command:"tp @n[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.19]"}},": ",{score:{name:"#count",objective:"sab.var"},color:gold,underlined:false}]
execute store result score #count sab.var run execute if entity @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.20]
tellraw @s [" ",{translate:"sa_bot.nav_output.sector_n",with:[{text:"20"}],underlined:true,click_event:{action:"run_command",command:"tp @n[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.20]"}},": ",{score:{name:"#count",objective:"sab.var"},color:gold,underlined:false}]
execute store result score #count sab.var run execute if entity @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.21]
tellraw @s [" ",{translate:"sa_bot.nav_output.sector_n",with:[{text:"21"}],underlined:true,click_event:{action:"run_command",command:"tp @n[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.21]"}},": ",{score:{name:"#count",objective:"sab.var"},color:gold,underlined:false}]
execute store result score #count sab.var run execute if entity @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.22]
tellraw @s [" ",{translate:"sa_bot.nav_output.sector_n",with:[{text:"22"}],underlined:true,click_event:{action:"run_command",command:"tp @n[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.22]"}},": ",{score:{name:"#count",objective:"sab.var"},color:gold,underlined:false}]
execute store result score #count sab.var run execute if entity @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.23]
tellraw @s [" ",{translate:"sa_bot.nav_output.sector_n",with:[{text:"23"}],underlined:true,click_event:{action:"run_command",command:"tp @n[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.23]"}},": ",{score:{name:"#count",objective:"sab.var"},color:gold,underlined:false}]
execute store result score #count sab.var run execute if entity @e[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.24]
tellraw @s [" ",{translate:"sa_bot.nav_output.sector_n",with:[{text:"24"}],underlined:true,click_event:{action:"run_command",command:"tp @n[type=marker,tag=sab.botWaypointGeneric,tag=sab.sector.24]"}},": ",{score:{name:"#count",objective:"sab.var"},color:gold,underlined:false}]

tellraw @s {text:"---",color:red,bold:true}


#show menu again
scoreboard players set #no_text_push sab.var 1
function sa_bots:editor/menu/_open_page_index