## Sets up overheal machine stats
function class:4/helper/id/new_id
scoreboard players operation @s owner = #Class_Start id
scoreboard players operation @s Team = #Class_Start Team

scoreboard players operation @s health = class.healer.ultimate.health Numbers

# Top Animation
scoreboard players set @n[type=item_display,tag=class.healer.over_heal_machine.top] sab.lifespan 23
scoreboard players operation @n[type=item_display,tag=class.healer.over_heal_machine.top] id = @s id

tag @n[type=item_display,tag=class.healer.over_heal_machine.top] remove new
tag @s remove new