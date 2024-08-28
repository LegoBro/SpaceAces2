## When a bullet from a red player hits:
execute store success score type_damage Numbers as @e[type=!minecraft:item_frame,distance=...01,tag=!turret,tag=!ignore,tag=!raycast,sort=nearest,limit=1,team=!red] run function projectile:hit/damage
execute store success score type_healing Numbers as @e[type=!minecraft:item_frame,distance=...01,tag=!turret,tag=!ignore,tag=!raycast,sort=nearest,limit=1,team=red] run function projectile:hit/healing

return 1