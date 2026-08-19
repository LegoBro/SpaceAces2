## Burst Heal is on cooldown
item replace entity @s hotbar.1 with minecraft:gray_dye[item_model="class/brawler/leap_slam_cooldown",minecraft:item_name={color:"white",translate:"class.brawler.sword_leap"},minecraft:lore=[{color:"white","italic":false,translate:"class.brawler.sword_leap.lore.1"},{color:"white",translate:"class.brawler.sword_leap.lore.2"}]]
execute if score @s ability.1.cooldown = class.brawler.1.duration Numbers run function class:4/brawler/sword_leap/deactivate
execute if entity @s[tag=class.brawler.land] if predicate input:on_ground run function class:4/brawler/sword_leap/land
scoreboard players remove @s ability.1.cooldown 1

function class:4/helper/actionbar/generic/secondary