

tellraw @s[team=red] {text:"\n\n\n\n☒\n",font:"minecraft:stats"}
tellraw @s[team=blue] {text:"\n\n\n\n☐\n",font:"minecraft:stats"}

tellraw @s [{translate:"game_end.player.stat.kills",color:"gray",with:[{"score":{"name":"@s","objective":"stat.game.player_kills"},color:"white","type":"score"}]},{translate:"game_end.player.stat.assists",color:"gray",with:[{"score":{"name":"@s","objective":"stat.game.assists"},color:"white","type":"score"}]},{translate:"game_end.player.stat.deaths",color:"gray",with:[{"score":{"name":"@s","objective":"stat.game.deaths"},color:"white","type":"score"}]}]

tellraw @s [{translate:"game_end.player.stat.damage",color:blue},{translate:"game_end.player.stat.damage_dealt",color:"gray",with:[{"score":{"name":"@s","objective":"stat.game.damage_dealt"},color:white}]},{translate:"game_end.player.stat.damage_taken",color:"gray",with:[{"score":{"name":"@s","objective":"stat.game.damage_taken"},color:"white","type":"score"}]}]

tellraw @s [{translate:"game_end.player.stat.healing",color:"green"},{translate:"game_end.player.stat.healing_dealt",color:"gray",with:[{"score":{"name":"@s","objective":"stat.game.healing_dealt"},color:"white"}]},{translate:"game_end.player.stat.healing_received",color:"gray",with:[{"score":{"name":"@s","objective":"stat.game.healing_received"},color:"white","type":"score"}]}]

tellraw @s [{translate:"game_end.player.stat.shots",color:white},{translate:"game_end.player.stat.shots.fired",color:"gray",with:[{"score":{"name":"@s","objective":"stat.game.shots_fired"},color:"white","type":"score"}]},{translate:"game_end.player.stat.shots.hits",color:"gray",with:[{"score":{"name":"@s","objective":"stat.game.shots_hit"},color:"white","type":"score"}]},{translate:"game_end.player.stat.shots.headshots",color:"gray",with:[{"score":{"name":"@s","objective":"stat.game.headshots"},color:"white","type":"score"}]}]

scoreboard players operation time Numbers = @s stat.game.play_time
function scoreboard:time/m_ss
tellraw @s [{translate:"game_end.player.stat.play_time",color:"yellow",with:[{storage:"scoreboard:time",nbt:"text",interpret:true,color:"white"}]}]

tellraw @s[team=red] {text:"\n☓",font:"minecraft:stats",color:white}
tellraw @s[team=blue] {text:"\n☑",font:"minecraft:stats",color:white}
