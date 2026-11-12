summon mannequin ~ ~ ~ {Tags:["npc","new","class.scientist","hb","hb_player","entity"]}

execute as @n[type=mannequin,tag=class.scientist,tag=npc,tag=new] run function class:4/scientist/select
execute as @n[type=mannequin,tag=class.scientist,tag=npc,tag=new] run function class:4/scientist/equip
execute as @n[type=mannequin,tag=npc,tag=new] run function class:4/helper/id/new_id
tp @n[type=mannequin,tag=class.scientist,tag=npc,tag=new] ~ ~ ~ ~ ~
execute as @n[type=mannequin,tag=class.scientist,tag=npc,tag=new] run tag @s remove new