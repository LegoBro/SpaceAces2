

tellraw @s[team=red] {text:"\n\n\n\n☒\n",font:"minecraft:stats"}
tellraw @s[team=blue] {text:"\n\n\n\n☐\n",font:"minecraft:stats"}

tellraw @s [{translate:"game_end.player.stat.kills",color:"red",with:[{"score":{"name":"@s","objective":"stat.game.player_kills"},color:"white","type":"score"}]},{translate:"game_end.player.stat.assists",color:"#ffa8a8",with:[{"score":{"name":"@s","objective":"stat.game.assists"},color:"white","type":"score"}]},{translate:"game_end.player.stat.deaths",color:"dark_red",with:[{"score":{"name":"@s","objective":"stat.game.deaths"},color:"white","type":"score"}]}]

tellraw @s [{translate:"game_end.player.stat.damage",color:blue},{translate:"game_end.player.stat.damage_dealt",color:"aqua",with:[{"score":{"name":"@s","objective":"stat.game.damage_dealt"},color:white}]},{translate:"game_end.player.stat.damage_taken",color:"dark_aqua",with:[{"score":{"name":"@s","objective":"stat.game.damage_taken"},color:"white","type":"score"}]}]

tellraw @s [{translate:"game_end.player.stat.healing",color:"green"},{translate:"game_end.player.stat.healing_dealt",color:"dark_green",with:[{"score":{"name":"@s","objective":"stat.game.healing_dealt"},color:"white"}]},{translate:"game_end.player.stat.healing_received",color:"green",with:[{"score":{"name":"@s","objective":"stat.game.healing_received"},color:"white","type":"score"}]}]

scoreboard players operation time Numbers = @s stat.game.play_time
function scoreboard:time/m_ss
tellraw @s [{translate:"game_end.player.stat.play_time",color:"yellow",with:[{storage:"scoreboard:time",nbt:"text",interpret:true,color:"white"}]}]

tellraw @s[team=red] {text:"\n☓",font:"minecraft:stats",color:white}
tellraw @s[team=blue] {text:"\n☑",font:"minecraft:stats",color:white}

