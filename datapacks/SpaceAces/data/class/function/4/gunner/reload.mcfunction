## Reloads default stats
execute store result score class.gunner.health Numbers run data get storage space_aces:class gunner.health
execute store result score class.gunner.speed Numbers run data get storage space_aces:class gunner.speed
execute store result score class.gunner.primary.reload Numbers run data get storage space_aces:class gunner.primary.reload 20
execute store result score class.gunner.primary.firerate Numbers run data get storage space_aces:class gunner.primary.firerate
execute store result score class.gunner.primary.damage Numbers run data get storage space_aces:class gunner.primary.damage
execute store result score class.gunner.primary.critMult Numbers run data get storage space_aces:class gunner.primary.critMult 100
execute store result score class.gunner.primary.falloff Numbers run data get storage space_aces:class gunner.primary.falloff
execute store result score class.gunner.primary.falloffStart Numbers run data get storage space_aces:class gunner.primary.falloffStart
execute store result score class.gunner.primary.speed Numbers run data get storage space_aces:class gunner.primary.speed
execute store result score class.gunner.primary.ammo Numbers run data get storage space_aces:class gunner.primary.ammo

execute store result score class.gunner.1.cooldown Numbers run data get storage space_aces:class gunner.1.cooldown
execute store result score class.gunner.1.duration Numbers run data get storage space_aces:class gunner.1.duration

execute store result score class.gunner.1.damage Numbers run data get storage space_aces:class gunner.1.damage
execute store result score class.gunner.1.critMult Numbers run data get storage space_aces:class gunner.1.critMult
execute store result score class.gunner.1.falloff Numbers run data get storage space_aces:class gunner.1.falloff
execute store result score class.gunner.1.falloffStart Numbers run data get storage space_aces:class gunner.1.falloffStart

execute store result score class.gunner.2.cooldown Numbers run data get storage space_aces:class gunner.2.cooldown
execute store result score class.gunner.2.duration Numbers run data get storage space_aces:class gunner.2.duration

## Non-setting variables
item replace block 15 -63 0 container.0 with minecraft:paper[minecraft:item_model="class/gunner/primary",minecraft:item_name='{"translate":"class.gunner.primary"}',minecraft:lore=['{"color":"white","italic":false,"translate":"class.gunner.primary.lore"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={},consumable={consume_seconds:1000000000}]
function class:4/helper/load/create_primary with storage space_aces:class gunner.primary
item replace block 15 -58 0 container.0 from block 15 -63 0 container.0