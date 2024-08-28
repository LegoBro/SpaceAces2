kill @e[type=minecraft:armor_stand,tag=powerup,sort=nearest,limit=1]
tag @s[tag=speed_2,tag=!speed_3] add speed_3
tag @s[tag=speed_1,tag=!speed_2] add speed_2
tag @s[tag=!speed_1] add speed_1
playsound minecraft:item.book.page_turn player @p ~ ~ ~ 1 1 1
execute at @p run particle minecraft:block{block_state:{Name:"minecraft:lapis_block"}} ~ ~1 ~ .5 .5 .5 2 100 force

return 1