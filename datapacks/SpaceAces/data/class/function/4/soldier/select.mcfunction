scoreboard players set @s Class 2
#tellraw @p {"text":"\nSelected Class Soldier",color:"dark_gray","bold":true,"extra":[{"text":"\na perfectly balanced loadout\n\nLoadout:\n",color:"gray","bold":false,"type":"text"},{translate:"surge_rifle"},{"text":"\n","type":"text"},{translate:"plasma_grenade"},{"text":"\n","type":"text"},{translate:"burst_heal"},{"text":"\n","type":"text"},{translate:"prepared"}],"type":"text"}

scoreboard players operation @s maxHealth = class.soldier.health Numbers
data modify storage class:speed speed set from storage space_aces:class soldier.speed
function class:4/helper/set/speed with storage class:speed

return 1