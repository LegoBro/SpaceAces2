scoreboard players set @s Class 11
#tellraw @p {"text":"\nSelected Class Infiltraitor","color":"dark_gray","bold":true,"extra":[{"text":"\na loadout focused on hiding behind enemy lines\n\nLoadout:\n","color":"gray","bold":false,"type":"text"},{"translate":"plasma_pistol"},{"text":"\n","type":"text"},{"translate":"cloak"},{"text":"\n","type":"text"},{"translate":"jammer"},{"text":"\n","type":"text"},{"translate":"recloak"}],"type":"text"}


scoreboard players operation @s maxHealth = class.infiltraitor.health Numbers
data modify storage class:speed speed set from storage space_aces:class infiltraitor.speed
function class:4/helper/set/speed with storage class:speed
return 1