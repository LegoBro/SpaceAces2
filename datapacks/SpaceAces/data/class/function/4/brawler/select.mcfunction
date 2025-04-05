scoreboard players set @s Class 7
#tellraw @p {"text":"\nSelected Class Brawler","color":"dark_gray","bold":true,"extra":[{"text":"\na tanky melee loadout\n\nLoadout:\n","color":"gray","bold":false,"type":"text"},{"translate":"plasma_sword"},{"text":"\n","type":"text"},{"translate":"sword_throw"},{"text":"\n","type":"text"},{"translate":"spin_slash"},{"text":"\n","type":"text"},{"translate":"final_stance"}],"type":"text"}

scoreboard players operation @s maxHealth = class.brawler.health Numbers
data modify storage class:speed speed set from storage space_aces:class brawler.speed
function class:4/helper/set/speed with storage class:speed
return 1