## Burst Heal is on cooldown
item replace entity @s hotbar.1 with minecraft:gray_dye[item_model="class/ability_cooldown"]
execute if score @s ability.1.cooldown = class.brawler.1.duration Numbers run function class:4/brawler/sword_leap/deactivate
execute if entity @s[tag=class.brawler.land] if predicate input:on_ground run function class:4/brawler/sword_leap/land
scoreboard players remove @s ability.1.cooldown 1

function class:4/helper/actionbar/generic/secondary