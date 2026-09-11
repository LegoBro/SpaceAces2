#run manually by a player


#print number of players on each class

tellraw @s "\n"
tellraw @s {text:"---Striker---",color:white,bold:true}

execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[1].count[{team:-1}]
tellraw @s [{text:"scout: ",color:white},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]
execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[2].count[{team:-1}]
tellraw @s [{text:"soldier: ",color:white},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]
execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[3].count[{team:-1}]
tellraw @s [{text:"sniper: ",color:white},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]
execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[4].count[{team:-1}]
tellraw @s [{text:"bomber: ",color:white},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]
execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[8].count[{team:-1}]
tellraw @s [{text:"mobility: ",color:white},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]
execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[11].count[{team:-1}]
tellraw @s [{text:"infiltraitor: ",color:white},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]
execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[13].count[{team:-1}]
tellraw @s [{text:"seeker: ",color:white},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]


tellraw @s {text:"---Guardian---",color:white,bold:true}

execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[5].count[{team:-1}]
tellraw @s [{text:"gunner: ",color:white},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]
execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[7].count[{team:-1}]
tellraw @s [{text:"mechanic: ",color:white},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]
execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[9].count[{team:-1}]
tellraw @s [{text:"brawler: ",color:white},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]
execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[12].count[{team:-1}]
tellraw @s [{text:"pyro: ",color:white},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]
execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[15].count[{team:-1}]
tellraw @s [{text:"rocketeer: ",color:white},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]


tellraw @s {text:"---Sustainer---",color:white,bold:true}

execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[6].count[{team:-1}]
tellraw @s [{text:"healer: ",color:white},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]
execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[10].count[{team:-1}]
tellraw @s [{text:"scientist: ",color:white},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]
execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[14].count[{team:-1}]
tellraw @s [{text:"shocksmith: ",color:white},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]