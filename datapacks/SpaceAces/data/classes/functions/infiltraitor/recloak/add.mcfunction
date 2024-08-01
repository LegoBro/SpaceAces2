## Recloak on headshots
execute unless entity @s[scores={invis=1..}] run particle minecraft:sweep_attack ~ ~ ~ .5 1.2 .5 0 30 force @a
execute unless entity @s[scores={invis=1..}] run playsound minecraft:entity.player.attack.sweep player @a ~ ~ ~ 1 1.5

scoreboard players add @s invis 30
scoreboard players reset @s last_shot
