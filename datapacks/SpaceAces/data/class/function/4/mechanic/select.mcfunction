scoreboard players set @s Class 9
#tellraw @p {"text":"\nSelected Class Mechanic",color:"dark_gray","bold":true,"extra":[{"text":"\na loadout focused on constructing turrets\n\nLoadout:\n",color:"gray","bold":false,"type":"text"},{translate:"double_chambered_scattergun"},{"text":"\n","type":"text"},{translate:"turret"},{"text":"\n","type":"text"},{translate:"wrench"},{"text":"\n","type":"text"},{translate:"last_resort"}],"type":"text"}

scoreboard players operation @s maxHealth = class.mechanic.health Numbers
data modify storage class:speed speed set from storage space_aces:class mechanic.speed
function class:4/helper/set/speed with storage class:speed

return 1