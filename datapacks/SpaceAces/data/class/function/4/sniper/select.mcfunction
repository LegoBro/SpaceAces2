scoreboard players set @s Class 3
#tellraw @p {"text":"\nSelected Class Sniper",color:"dark_gray","bold":true,"extra":[{"text":"\na long-ranged loadout\n\nLoadout:\n",color:"gray","bold":false,"type":"text"},{translate:"star_sniper"},{"text":"\n","type":"text"},{translate:"vis_mine"},{"text":"\n","type":"text"},{translate:"jump"},{"text":"\n","type":"text"},{translate:"distance"}],"type":"text"}

scoreboard players operation @s maxHealth = class.sniper.health Numbers
effect give @s invisibility infinite 0 true
effect give @s resistance infinite 9 true
scoreboard players operation @s health = class.sniper.health Numbers
data modify storage class:speed speed set from storage space_aces:class sniper.speed
function class:4/helper/set/speed with storage class:speed
data modify storage class:scale scale set from storage space_aces:class sniper.scale
function class:4/helper/set/scale with storage class:scale

return 1