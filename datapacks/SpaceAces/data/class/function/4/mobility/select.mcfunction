scoreboard players set @s Class 8
#tellraw @p {"text":"\nSelected Class Mobility",color:"dark_gray","bold":true,"extra":[{"text":"\na loadout based on vertical movement\n\nLoadout:\n",color:"gray","bold":false,"type":"text"},{translate:"unstable_surge_rifle"},{"text":"\n","type":"text"},{translate:"warp"},{"text":"\n","type":"text"},{translate:"flash_grenade"},{"text":"\n","type":"text"},{translate:"power_pants"}],"type":"text"}
scoreboard players operation @s maxHealth = class.mobility.health Numbers
effect give @s invisibility infinite 0 true
effect give @s resistance infinite 9 true
scoreboard players operation @s health = class.mobility.health Numbers

data modify storage class:speed speed set from storage space_aces:class mobility.speed
function class:4/helper/set/speed with storage class:speed
data modify storage class:scale scale set from storage space_aces:class mobility.scale
function class:4/helper/set/scale with storage class:scale

return 1