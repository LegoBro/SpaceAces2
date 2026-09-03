data merge entity @s {see_through:true,billboard:"center",background:-16777216,transformation:{scale:[1.5f,1.5f,1.5f]}}
data modify entity @s text set value [{nbt:"sector_name[0]",storage:"sa_bots:waypoint",interpret:true,color:green}," ",{nbt:"sector_name[1]",storage:"sa_bots:waypoint",interpret:false,color:red}]
scoreboard players set @s sab.lifespan 7