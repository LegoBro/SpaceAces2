kill @e[type=armor_stand,tag=powerup,limit=1,sort=nearest]
tag @s[tag=aura_2,tag=!aura_3] add aura_3
tag @s[tag=aura_1,tag=!aura_2] add aura_2
tag @s[tag=!aura_1] add aura_1
playsound minecraft:item.book.page_turn player @p ~ ~ ~ 1 1 1
execute at @p run particle block white_stained_glass ~ ~1 ~ .5 .5 .5 2 100 force
