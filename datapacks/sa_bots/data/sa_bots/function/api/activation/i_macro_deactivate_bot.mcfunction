#executed by anything (probably system)

#arguments
#$(i) -- index of bot to deactivate


$data modify storage sa_bots:bot_data bots[$(i)].active set value 0


#update stats before the entity vanishes
$execute as @e[type=mannequin,tag=sab.botEntity,scores={sab.botID=$(i)}] run function sa_bots:bot/storage/update_all_stats