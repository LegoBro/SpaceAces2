summon mannequin ~ ~ ~ {Tags:["npc","new","class.bomber","hb","hb_player","entity"]}

execute as @n[type=mannequin,tag=class.bomber,tag=npc,tag=new] run function class:4/bomber/select
execute as @n[type=mannequin,tag=class.bomber,tag=npc,tag=new] run function class:4/bomber/equip
tp @n[type=mannequin,tag=class.bomber,tag=npc,tag=new] ~ ~ ~ ~ ~
execute as @n[type=mannequin,tag=class.bomber,tag=npc,tag=new] run tag @s remove new