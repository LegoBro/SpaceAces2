summon mannequin ~ ~ ~ {Tags:["npc","new","class.gunner","hb","hb_player","entity"]}

execute as @n[type=mannequin,tag=class.gunner,tag=npc,tag=new] run function class:4/gunner/select
execute as @n[type=mannequin,tag=class.gunner,tag=npc,tag=new] run function class:4/gunner/equip
tp @n[type=mannequin,tag=class.gunner,tag=npc,tag=new] ~ ~ ~ ~ ~
execute as @n[type=mannequin,tag=class.gunner,tag=npc,tag=new] run tag @s remove new