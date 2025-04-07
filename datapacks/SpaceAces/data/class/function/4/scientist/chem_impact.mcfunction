scoreboard players operation place_id id = @s id
scoreboard players operation #Team Team = @s Team

execute positioned ~ ~-1 ~ as @e[distance=..2,tag=!ignore,tag=!ignore.projectiles,nbt=!{active_effects:[{id: "minecraft:unluck"}]}] unless score @s Team = #Team Team run function class:4/scientist/primary/apply_poison

particle minecraft:block{block_state:{Name:"minecraft:slime_block"}} ~ ~ ~ 0 0 0 0 3 force
playsound minecraft:block.slime_block.place player @a ~ ~ ~ 2.0 2.0

return 1