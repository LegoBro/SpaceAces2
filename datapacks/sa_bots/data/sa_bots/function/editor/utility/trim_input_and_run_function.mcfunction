#called with storage sa_bots:waypoint
$scoreboard players remove #signal sab.var $(trim)
execute store result storage sa_bots:waypoint t int 1 run scoreboard players get #signal sab.var
$function $(function) with storage sa_bots:waypoint