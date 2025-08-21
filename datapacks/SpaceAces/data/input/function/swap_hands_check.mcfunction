## Player swaps hands
advancement revoke @s only input:swap_hands
execute unless items entity @s weapon.offhand * run return 0

item replace entity @s[gamemode=!creative] weapon.offhand with air
tag @s add input.swap_hands