effect give @s invisibility infinite 0 true
effect give @s resistance infinite 9 true
scoreboard players set @s Class 4
#tellraw @p {"text":"\nSelected Class Bomber",color:"dark_gray","bold":true,"extra":[{"text":"\na very explosive loadout\n\nLoadout:\n",color:"gray","bold":false,"type":"text"},{translate:"plasma_grenade_launcher"},{"text":"\n","type":"text"},{translate:"sticky_bomb"},{"text":"\n","type":"text"},{translate:"detonator"},{"text":"\n","type":"text"},{translate:"bomb_voyage"}],"type":"text"}

scoreboard players operation @s maxHealth = class.bomber.health Numbers
scoreboard players operation @s health = class.bomber.health Numbers
tag @s remove class.bomber.sticky_mode
data modify storage class:speed speed set from storage space_aces:class bomber.speed
function class:4/helper/set/speed with storage class:speed
data modify storage class:scale scale set from storage space_aces:class bomber.scale
function class:4/helper/set/scale with storage class:scale

return 1