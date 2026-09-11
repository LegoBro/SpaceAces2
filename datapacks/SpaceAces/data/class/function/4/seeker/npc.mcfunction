summon mannequin ~ ~ ~ {Tags:["npc","new","class.seeker","hb","hb_player","entity"]}

execute as @n[type=mannequin,tag=class.seeker,tag=npc,tag=new] run function class:4/seeker/select
execute as @n[type=mannequin,tag=class.seeker,tag=npc,tag=new] run function class:4/seeker/equip
tp @n[type=mannequin,tag=class.seeker,tag=npc,tag=new] ~ ~ ~ ~ ~
execute as @n[type=mannequin,tag=class.seeker,tag=npc,tag=new] run tag @s remove new