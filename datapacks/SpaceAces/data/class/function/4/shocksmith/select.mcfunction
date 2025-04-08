scoreboard players set @s Class 14
#tellraw @p {"text":"\nSelected Class Shocksmith",color:"dark_gray","bold":true,"extra":[{"text":"\nan energy focused support loadout\n\nLoadout:\n",color:"gray","bold":false,"type":"text"},{translate:"shock_hopper"},{"text":"\n","type":"text"},{translate:"stun"},{"text":"\n","type":"text"},{translate:"energy_sap"},{"text":"\n","type":"text"},{translate:"energy_dispersion"}],"type":"text"}

scoreboard players operation @s maxHealth = class.shocksmith.health Numbers
data modify storage class:speed speed set from storage space_aces:class shocksmith.speed
function class:4/helper/set/speed with storage class:speed
return 1