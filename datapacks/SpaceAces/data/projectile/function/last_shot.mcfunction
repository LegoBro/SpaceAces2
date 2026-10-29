## Increments last shot damage and total game damage
scoreboard players operation @s last_shot = damage Numbers
scoreboard players operation @s stat.game.damage_dealt += damage Numbers
scoreboard players operation @s ultimate_charge += damage Numbers
return 1