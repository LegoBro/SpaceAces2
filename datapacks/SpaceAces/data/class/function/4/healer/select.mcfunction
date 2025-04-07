scoreboard players set @s Class 6
#tellraw @p {"text":"\nSelected Class Healer","color":"dark_gray","bold":true,"extra":[{"text":"\na loadout focused entirely on healing\n\nLoadout:\n","color":"gray","bold":false,"type":"text"},{"translate":"heal_pistol"},{"text":"\n","type":"text"},{"translate":"angry_medic"},{"text":"\n","type":"text"},{"translate":"over_heal_machine"},{"text":"\n","type":"text"},{"translate":"days_work"}],"type":"text"}

scoreboard players operation @s maxHealth = class.healer.health Numbers
data modify storage class:speed speed set from storage space_aces:class healer.speed
function class:4/helper/set/speed with storage class:speed

return 1