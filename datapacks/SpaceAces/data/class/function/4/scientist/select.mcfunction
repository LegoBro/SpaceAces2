scoreboard players set @s Class 10
#tellraw @p {"text":"\nSelected Class Scientist",color:"dark_gray","bold":true,"extra":[{"text":"\na general support loadout\n\nLoadout:\n",color:"gray","bold":false,"type":"text"},{translate:"chemsprayer"},{"text":"\n","type":"text"},{translate:"healing_machine"},{"text":"\n","type":"text"},{translate:"medicine"},{"text":"\n","type":"text"},{translate:"biohazard"}],"type":"text"}

scoreboard players operation @s maxHealth = class.scientist.health Numbers
effect give @s invisibility infinite 0 true
effect give @s resistance infinite 9 true
scoreboard players operation @s health = class.scientist.health Numbers
data modify storage class:speed speed set from storage space_aces:class scientist.speed
function class:4/helper/set/speed with storage class:speed
data modify storage class:scale scale set from storage space_aces:class scientist.scale
function class:4/helper/set/scale with storage class:scale

return 1