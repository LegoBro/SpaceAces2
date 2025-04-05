scoreboard players set @s Class 13
#tellraw @p {"text":"\nSelected Class Seeker","color":"dark_gray","bold":true,"extra":[{"text":"\na loadout focused on seeking single enemies\n\nLoadout:\n","color":"gray","bold":false,"type":"text"},{"translate":"plasma_spreader"},{"text":"\n","type":"text"},{"translate":"poison_jab"},{"text":"\n","type":"text"},{"translate":"slow_field"},{"text":"\n","type":"text"},{"translate":"weak_glow"}],"type":"text"}


scoreboard players operation @s maxHealth = class.seeker.health Numbers
data modify storage class:speed speed set from storage space_aces:class seeker.speed
function class:4/helper/set/speed with storage class:speed

return 1