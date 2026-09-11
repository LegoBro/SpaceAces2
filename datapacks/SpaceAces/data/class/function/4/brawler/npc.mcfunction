summon mannequin ~ ~ ~ {Tags:["npc","new","class.brawler","hb","hb_player","entity"]}

execute as @n[type=mannequin,tag=class.brawler,tag=npc,tag=new] run function class:4/brawler/select
execute as @n[type=mannequin,tag=class.brawler,tag=npc,tag=new] run function class:4/brawler/equip
tp @n[type=mannequin,tag=class.brawler,tag=npc,tag=new] ~ ~ ~ ~ ~
execute as @n[type=mannequin,tag=class.brawler,tag=npc,tag=new] run tag @s remove new