scoreboard players operation test Numbers = @s lastHurter
scoreboard players operation @s health -= @s damage
execute if score @s health matches ..0 run kill @s
execute if score @s health matches ..0 as @a[team=!lobby,team=!spectator] if score @s id = test Numbers run scoreboard players add @s game_kills 1

return 1