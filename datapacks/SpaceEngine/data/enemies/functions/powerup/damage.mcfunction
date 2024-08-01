kill @e[type=armor_stand,tag=powerup,limit=1,sort=nearest]
tag @s[tag=damage_2,tag=!damage_3] add damage_3
tag @s[tag=damage_1,tag=!damage_2] add damage_2
tag @s[tag=!damage_1] add damage_1
playsound minecraft:item.book.page_turn player @p ~ ~ ~ 1 1 1
execute at @p run particle block redstone_block ~ ~1 ~ .5 .5 .5 2 100 force
