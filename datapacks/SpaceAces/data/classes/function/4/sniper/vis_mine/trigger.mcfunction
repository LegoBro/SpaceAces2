## Vis mine has triggered and gives nerfs to red team member
effect give @s minecraft:glowing 5 0 true
effect give @s minecraft:slowness 3 2 true
playsound minecraft:entity.villager.work_mason player @a ~ ~ ~ 1 2 0
kill @n[tag=active_vis_mine,distance=..2]
return 1