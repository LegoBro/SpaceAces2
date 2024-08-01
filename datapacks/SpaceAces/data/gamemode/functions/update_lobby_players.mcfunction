bossbar set main players @a[tag=awaiting]
scoreboard players set TotPlay Numbers 0
scoreboard players set RedPlay Numbers 0
execute as @a[tag=ready] run scoreboard players add RedPlay Numbers 1
execute as @a[tag=awaiting] run scoreboard players add TotPlay Numbers 1
execute if entity @a[tag=awaiting] if score TotPlay Numbers >= MinPlay Numbers store result bossbar main max run scoreboard players get TotPlay Numbers
execute if entity @a[tag=awaiting] if score TotPlay Numbers < MinPlay Numbers store result bossbar main max run scoreboard players get MinPlay Numbers
execute if entity @a[tag=awaiting] store result bossbar main value run scoreboard players get RedPlay Numbers
scoreboard players set blueTeam Numbers 0
scoreboard players set redTeam Numbers 0
execute as @a[tag=awaiting,team=blue] run scoreboard players add blueTeam Numbers 1
execute as @a[tag=awaiting,team=red] run scoreboard players add redTeam Numbers 1
