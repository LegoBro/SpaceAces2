## When a bullet hits, check based on team id
execute store success score type_damage Numbers as @n[tag=projectile.target] unless score @s Team = #test Team run function projectile:hit/damage
execute store success score type_healing Numbers as @n[tag=projectile.target] if score @s Team = #test Team run function projectile:hit/healing

return 1