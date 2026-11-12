summon mannequin ~ ~ ~ {Tags:["npc","new","class.mechanic","hb","hb_player","entity"]}

execute as @n[type=mannequin,tag=class.mechanic,tag=npc,tag=new] run function class:4/mechanic/select
execute as @n[type=mannequin,tag=class.mechanic,tag=npc,tag=new] run function class:4/mechanic/equip
execute as @n[type=mannequin,tag=npc,tag=new] run function class:4/helper/id/new_id
tp @n[type=mannequin,tag=class.mechanic,tag=npc,tag=new] ~ ~ ~ ~ ~
execute as @n[type=mannequin,tag=class.mechanic,tag=npc,tag=new] run tag @s remove new