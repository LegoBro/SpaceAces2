summon mannequin ~ ~ ~ {Tags:["npc","new","class.sniper","hb","hb_player","entity"]}

execute as @n[type=mannequin,tag=class.sniper,tag=npc,tag=new] run function class:4/sniper/select
execute as @n[type=mannequin,tag=class.sniper,tag=npc,tag=new] run function class:4/sniper/equip
execute as @n[type=mannequin,tag=npc,tag=new] run function class:4/helper/id/new_id
tp @n[type=mannequin,tag=class.sniper,tag=npc,tag=new] ~ ~ ~ ~ ~
execute as @n[type=mannequin,tag=class.sniper,tag=npc,tag=new] run tag @s remove new