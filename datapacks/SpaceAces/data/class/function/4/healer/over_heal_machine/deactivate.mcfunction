scoreboard players set @s ultimate_charge 0

execute as @e[type=item_display,tag=class.healer.over_heal_machine,distance=..500] if score @s id = #Class_Start id run tag @s add my_ohm

execute unless entity @n[tag=my_ohm,distance=..500] run scoreboard players set @s ultimate.cooldown 0

return 1