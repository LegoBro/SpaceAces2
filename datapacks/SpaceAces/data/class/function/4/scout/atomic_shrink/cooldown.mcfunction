## Atomic Shrink is on cooldown
item replace entity @s hotbar.4 from block 15 -62 0 container.13
execute if score @s ultimate.cooldown matches 1.. if score @s size matches 26.. run function class:4/scout/atomic_shrink/shrinking
execute if score @s ultimate.cooldown matches ..0 if score @s size matches ..84 run function class:4/scout/atomic_shrink/growing
execute if score @s ultimate.cooldown matches 1 run function class:4/scout/atomic_shrink/deactivate
scoreboard players remove @s ultimate.cooldown 1



execute if score @s ultimate.cooldown matches 1.. run return run function class:4/helper/actionbar/generic/ultimate_cooldown

scoreboard players operation #class.ult_current Numbers = @s ultimate_charge
scoreboard players operation #class.ult_max Numbers = class.scout.ultimate.charge Numbers
function class:4/helper/actionbar/generic/ultimate