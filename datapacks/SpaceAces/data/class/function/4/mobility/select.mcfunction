scoreboard players set @s Class 8
#tellraw @p {"text":"\nSelected Class Mobility","color":"dark_gray","bold":true,"extra":[{"text":"\na loadout based on vertical movement\n\nLoadout:\n","color":"gray","bold":false,"type":"text"},{"translate":"unstable_surge_rifle"},{"text":"\n","type":"text"},{"translate":"warp"},{"text":"\n","type":"text"},{"translate":"flash_grenade"},{"text":"\n","type":"text"},{"translate":"power_pants"}],"type":"text"}
scoreboard players operation @s maxHealth = class.mobility.health Numbers

data modify storage class:speed speed set from storage space_aces:class mobility.speed
function class:4/helper/set/speed with storage class:speed

return 1