scoreboard players set @s Class 5
#tellraw @p {"text":"\nSelected Class Gunner","color":"dark_gray","bold":true,"extra":[{"text":"\na tanky, high firepower loadout\n\nLoadout:\n","color":"gray","bold":false,"type":"text"},{"translate":"plasma_cannon"},{"text":"\n","type":"text"},{"translate":"infinite_ammo"},{"text":"\n","type":"text"},{"translate":"large_heal"},{"text":"\n","type":"text"},{"translate":"top"}],"type":"text"}

scoreboard players operation @s maxHealth = class.gunner.health Numbers
data modify storage class:speed speed set from storage space_aces:class gunner.speed
function class:4/helper/set/speed with storage class:speed
return 1