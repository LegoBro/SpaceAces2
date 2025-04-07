#Scoreboard Teams
team add lobby
team modify lobby color gray
team modify lobby prefix ["",{"text":"[Lobby] ",color:"gray","bold":true}]
team add blue
team modify blue color blue
team modify blue prefix ["",{"text":"[IGSR] ",color:"blue","bold":true}]
team modify blue nametagVisibility hideForOtherTeams

team add red
team modify red color red
team modify red prefix ["",{"text":"[RLU] ",color:"red","bold":true}]
team modify red nametagVisibility hideForOtherTeams

team add spectator
team modify spectator color white
team modify spectator prefix ["",{"text":"[Spectator] ",color:"white","bold":false}]
team modify spectator nametagVisibility never

team modify blue seeFriendlyInvisibles false
team modify red seeFriendlyInvisibles false
team modify blue friendlyFire false
team modify red friendlyFire false
team modify lobby friendlyFire false

return 1