
## Reloads default stats
execute store result score class.brawler.health Numbers run data get storage space_aces:class brawler.health
execute store result score class.brawler.speed Numbers run data get storage space_aces:class brawler.speed
#execute store result score class.brawler.primary.reload Numbers run data get storage space_aces:class brawler.primary.reload 20
execute store result score class.brawler.primary.firerate Numbers run data get storage space_aces:class brawler.primary.firerate
execute store result score class.brawler.primary.damage Numbers run data get storage space_aces:class brawler.primary.damage
execute store result score class.brawler.primary.critMult Numbers run data get storage space_aces:class brawler.primary.critMult 100
execute store result score class.brawler.primary.falloff Numbers run data get storage space_aces:class brawler.primary.falloff
execute store result score class.brawler.primary.falloffStart Numbers run data get storage space_aces:class brawler.primary.falloffStart
#execute store result score class.brawler.primary.ammo Numbers run data get storage space_aces:class brawler.primary.ammo

execute store result score class.brawler.1.cooldown Numbers run data get storage space_aces:class brawler.1.cooldown
execute store result score class.brawler.1.duration Numbers run data get storage space_aces:class brawler.1.duration
execute store result score class.brawler.1.jump_power Numbers run data get storage space_aces:class brawler.1.jump_power

execute store result score class.brawler.1.damage Numbers run data get storage space_aces:class brawler.1.damage
execute store result score class.brawler.1.critMult Numbers run data get storage space_aces:class brawler.1.critMult
execute store result score class.brawler.1.falloff Numbers run data get storage space_aces:class brawler.1.falloff
execute store result score class.brawler.1.falloffStart Numbers run data get storage space_aces:class brawler.1.falloffStart

execute store result score class.brawler.2.cooldown Numbers run data get storage space_aces:class brawler.2.cooldown
execute store result score class.brawler.2.duration Numbers run data get storage space_aces:class brawler.2.duration
execute store result score class.brawler.2.damage Numbers run data get storage space_aces:class brawler.2.damage
execute store result score class.brawler.2.critMult Numbers run data get storage space_aces:class brawler.2.critMult
execute store result score class.brawler.2.arcRate Numbers run data get storage space_aces:class brawler.2.arcRate
execute store result score class.brawler.2.speed Numbers run data get storage space_aces:class brawler.2.speed

## Non-setting variables
item replace block 15 -63 0 container.0 with minecraft:carrot_on_a_stick[item_model="class/brawler/primary",minecraft:item_name='{"translate":"class.brawler.primary"}',minecraft:lore=['{"color":"white","italic":false,"translate":"class.brawler.primary.lore"}'],minecraft:hide_additional_tooltip={}]
function class:4/helper/load/create_primary with storage space_aces:class brawler.primary
item replace block 15 -52 0 container.0 from block 15 -63 0 container.0