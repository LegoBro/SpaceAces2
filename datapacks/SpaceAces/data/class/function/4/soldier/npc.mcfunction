summon mannequin ~ ~ ~ {Tags:["npc","new","class.soldier","hb","hb_player","entity"]}

execute as @n[type=mannequin,tag=class.soldier,tag=npc,tag=new] run function class:4/soldier/select
execute as @n[type=mannequin,tag=class.soldier,tag=npc,tag=new] run function class:4/soldier/equip
execute as @n[type=mannequin,tag=npc,tag=new] run function class:4/helper/id/new_id
tp @n[type=mannequin,tag=class.soldier,tag=npc,tag=new] ~ ~ ~ ~ ~
execute as @n[type=mannequin,tag=class.soldier,tag=npc,tag=new] run tag @s remove new