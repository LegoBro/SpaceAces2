scoreboard players operation @s owner = place_id id
function class:4/helper/id/new_id
scoreboard players operation @s Team = Team Team
scoreboard players operation @s health = class.mechanic.1.turret.health Numbers

scoreboard players set @e[type=item_display,tag=class.mechanic.turret.part,tag=new,limit=7,sort=nearest] sab.lifespan 23
scoreboard players operation @e[type=item_display,tag=class.mechanic.turret.part,tag=new,limit=7,sort=nearest] id = @s id