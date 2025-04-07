scoreboard players set @s Class 15
#tellraw @p {"text":"\nSelected Class Rocketeer",color:"dark_gray","bold":true,"extra":[{"text":"\na tanky, explosive loadout\n\nLoadout:\n",color:"gray","bold":false,"type":"text"},{translate:"rocket_launcher"},{"text":"\n","type":"text"},{translate:"piercing_dart"},{"text":"\n","type":"text"},{translate:"resist"},{"text":"\n","type":"text"},{translate:"rocket_boots"}],"type":"text"}

scoreboard players operation @s maxHealth = class.rocketeer.health Numbers
data modify storage class:speed speed set from storage space_aces:class rocketeer.speed
function class:4/helper/set/speed with storage class:speed

return 1