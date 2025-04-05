scoreboard players set @s Class 3
#tellraw @p {"text":"\nSelected Class Sniper","color":"dark_gray","bold":true,"extra":[{"text":"\na long-ranged loadout\n\nLoadout:\n","color":"gray","bold":false,"type":"text"},{"translate":"star_sniper"},{"text":"\n","type":"text"},{"translate":"vis_mine"},{"text":"\n","type":"text"},{"translate":"jump"},{"text":"\n","type":"text"},{"translate":"distance"}],"type":"text"}

scoreboard players operation @s maxHealth = class.sniper.health Numbers
data modify storage class:speed speed set from storage space_aces:class sniper.speed
function class:4/helper/set/speed with storage class:speed

return 1