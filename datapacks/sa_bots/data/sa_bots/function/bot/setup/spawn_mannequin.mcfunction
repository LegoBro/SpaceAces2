$summon mannequin ~ ~ ~ {Tags:["sab.botEntity","sab.setupNewBot"],CustomName:"$(username)",profile:$(profile),hide_description:true}
execute as @e[type=mannequin,distance=..1,tag=sab.setupNewBot] run function sa_bots:bot/setup/setup_new_bot_entity
