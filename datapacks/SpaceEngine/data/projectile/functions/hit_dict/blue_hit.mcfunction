## When a bullet from a blue player hits:
execute store success score type_damage Numbers as @e[type=!item_frame,tag=!turret,tag=!ignore,distance=...01,limit=1,sort=nearest,team=!blue,tag=!raycast] run function projectile:hit/damage
execute store success score type_healing Numbers as @e[type=!item_frame,tag=!turret,tag=!ignore,distance=...1,limit=1,sort=nearest,team=blue,tag=!raycast] run function projectile:hit/healing
