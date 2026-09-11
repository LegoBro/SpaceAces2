summon mannequin ~ ~ ~ {Tags:["npc","new","class.infiltraitor","hb","hb_player","entity"]}

execute as @n[type=mannequin,tag=class.infiltraitor,tag=npc,tag=new] run function class:4/infiltraitor/select
execute as @n[type=mannequin,tag=class.infiltraitor,tag=npc,tag=new] run function class:4/infiltraitor/equip
tp @n[type=mannequin,tag=class.infiltraitor,tag=npc,tag=new] ~ ~ ~ ~ ~
execute as @n[type=mannequin,tag=class.infiltraitor,tag=npc,tag=new] run tag @s remove new