kill @e[type=minecraft:armor_stand,tag=powerup,sort=nearest,limit=1]
tag @s[tag=aura_2,tag=!aura_3] add aura_3
tag @s[tag=aura_1,tag=!aura_2] add aura_2
tag @s[tag=!aura_1] add aura_1
playsound minecraft:item.book.page_turn player @p ~ ~ ~ 1 1 1
execute at @p run particle minecraft:block{block_state:{Name:"minecraft:white_stained_glass"}} ~ ~1 ~ .5 .5 .5 2 100 force

return 1