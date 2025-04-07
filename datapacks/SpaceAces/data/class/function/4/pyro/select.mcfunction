scoreboard players set @s Class 12
#tellraw @p {"text":"\nSelected Class Pyro",color:"dark_gray","bold":true,"extra":[{"text":"\na tanky, fiery loadout\n\nLoadout:\n",color:"gray","bold":false,"type":"text"},{translate:"hot_air_blower"},{"text":"\n","type":"text"},{translate:"fire_bomb"},{"text":"\n","type":"text"},{translate:"immunity"},{"text":"\n","type":"text"},{translate:"turn_up"}],"type":"text"}

scoreboard players operation @s maxHealth = class.pyro.health Numbers
data modify storage class:speed speed set from storage space_aces:class pyro.speed
function class:4/helper/set/speed with storage class:speed

return 1