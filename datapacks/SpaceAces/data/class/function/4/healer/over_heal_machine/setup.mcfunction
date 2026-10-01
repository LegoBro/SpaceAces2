## Sets up overheal machine stats
function class:4/helper/id/new_id
scoreboard players operation @s owner = #Class_Start id
scoreboard players operation @s Team = #Class_Start Team

scoreboard players operation @s health = class.healer.ultimate.health Numbers

tag @s remove new