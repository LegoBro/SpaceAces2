scoreboard players operation @s damage = class.seeker.1.damage Numbers
scoreboard players operation @s speed = class.seeker.1.speed Numbers
scoreboard players operation @s falloff = class.seeker.1.falloff Numbers
scoreboard players operation @s falloffStart = class.seeker.1.falloffStart Numbers
scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s id = #Class_Start id
scoreboard players operation @s j = @s speed
execute positioned ~ ~ ~ positioned ^ ^ ^ run function projectile:ray

return 1