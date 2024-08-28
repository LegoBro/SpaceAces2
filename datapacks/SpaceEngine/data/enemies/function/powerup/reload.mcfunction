kill @e[type=minecraft:armor_stand,tag=powerup,sort=nearest,limit=1]
tag @s[tag=reload_2,tag=!reload_3] add reload_3
tag @s[tag=reload_1,tag=!reload_2] add reload_2
tag @s[tag=!reload_1] add reload_1
playsound minecraft:item.book.page_turn player @p ~ ~ ~ 1 1 1
execute at @p run particle minecraft:block{block_state:{Name:"minecraft:lime_stained_glass"}} ~ ~1 ~ .5 .5 .5 2 100 force

return 1