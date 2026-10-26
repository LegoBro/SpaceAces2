# Loads killstreak (dynamic)
scoreboard players set ActiveMode Numbers 3

scoreboard players set killstreakKills Numbers 5

scoreboard players reset * kills

scoreboard players set gamemode.respawn.time Numbers 100
schedule function gamemode:comp/respawn/apply_time/general 10s

return 1