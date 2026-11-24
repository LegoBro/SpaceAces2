scoreboard players operation @s Team = #Class_Start Team
scoreboard players operation @s owner = #Class_Start id
function class:4/helper/id/new_id

scoreboard players operation @s health = class.scientist.2.health Numbers

scoreboard players set @e[type=item_display,tag=class.chem_dispenser,tag=new,limit=3,sort=nearest] sab.lifespan 23
scoreboard players operation @e[type=item_display,tag=class.chem_dispenser,tag=new,limit=3,sort=nearest] id = @s id

tag @s remove class.new