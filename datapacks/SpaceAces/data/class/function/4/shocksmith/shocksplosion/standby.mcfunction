## Standby for sticky bomb (sticks to enemies)
playsound block.amethyst_block.break master @a
scoreboard players add @s ultimate_charge 1
execute if score @s ultimate_charge > class.shocksmith.ultimate.duration Numbers positioned ^ ^ ^-1 run function class:4/shocksmith/shocksplosion/detonate
return 1