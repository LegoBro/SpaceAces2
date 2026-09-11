#run manually by a player


#print number of players on each class

tellraw @s "\n"
tellraw @s {text:"---Striker---",color:blue,bold:true}

execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[1].count[{team:1}]
tellraw @s [{text:"scout: ",color:blue},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]
execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[2].count[{team:1}]
tellraw @s [{text:"soldier: ",color:blue},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]
execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[3].count[{team:1}]
tellraw @s [{text:"sniper: ",color:blue},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]
execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[4].count[{team:1}]
tellraw @s [{text:"bomber: ",color:blue},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]
execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[8].count[{team:1}]
tellraw @s [{text:"mobility: ",color:blue},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]
execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[11].count[{team:1}]
tellraw @s [{text:"infiltraitor: ",color:blue},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]
execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[13].count[{team:1}]
tellraw @s [{text:"seeker: ",color:blue},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]


tellraw @s {text:"---Guardian---",color:blue,bold:true}

execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[5].count[{team:1}]
tellraw @s [{text:"gunner: ",color:blue},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]
execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[7].count[{team:1}]
tellraw @s [{text:"mechanic: ",color:blue},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]
execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[9].count[{team:1}]
tellraw @s [{text:"brawler: ",color:blue},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]
execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[12].count[{team:1}]
tellraw @s [{text:"pyro: ",color:blue},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]
execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[15].count[{team:1}]
tellraw @s [{text:"rocketeer: ",color:blue},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]


tellraw @s {text:"---Sustainer---",color:blue,bold:true}

execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[6].count[{team:1}]
tellraw @s [{text:"healer: ",color:blue},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]
execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[10].count[{team:1}]
tellraw @s [{text:"scientist: ",color:blue},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]
execute store result storage sa_bots:waypoint_info text_dump int 1 run execute if data storage sa_bots:team_composition root.classes[14].count[{team:1}]
tellraw @s [{text:"shocksmith: ",color:blue},{nbt:"text_dump",storage:"sa_bots:waypoint_info",interpret:false}]