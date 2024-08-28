kill @e[type=minecraft:armor_stand,tag=powerup,sort=nearest,limit=1]
tag @s[tag=energy_2,tag=!energy_3] add energy_3
tag @s[tag=energy_1,tag=!energy_2] add energy_2
tag @s[tag=!energy_1] add energy_1
playsound minecraft:item.book.page_turn player @p ~ ~ ~ 1 1 1
execute at @p run particle minecraft:block{block_state:{Name:"minecraft:yellow_concrete_powder"}} ~ ~1 ~ .5 .5 .5 2 100 force

return 1