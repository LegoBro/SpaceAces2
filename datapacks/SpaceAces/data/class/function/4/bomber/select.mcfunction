scoreboard players set @s Class 4
#tellraw @p {"text":"\nSelected Class Bomber","color":"dark_gray","bold":true,"extra":[{"text":"\na very explosive loadout\n\nLoadout:\n","color":"gray","bold":false,"type":"text"},{"translate":"plasma_grenade_launcher"},{"text":"\n","type":"text"},{"translate":"sticky_bomb"},{"text":"\n","type":"text"},{"translate":"detonator"},{"text":"\n","type":"text"},{"translate":"bomb_voyage"}],"type":"text"}

scoreboard players operation @s maxHealth = class.bomber.health Numbers
tag @s remove class.bomber.sticky_mode
data modify storage class:speed speed set from storage space_aces:class bomber.speed
function class:4/helper/set/speed with storage class:speed

return 1