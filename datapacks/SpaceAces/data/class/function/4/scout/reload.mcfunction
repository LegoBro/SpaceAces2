## Reloads default stats
execute store result score class.scout.health Numbers run data get storage space_aces:class scout.health
execute store result score class.scout.speed Numbers run data get storage space_aces:class scout.speed
execute store result score class.scout.primary.reload Numbers run data get storage space_aces:class scout.primary.reload 20
execute store result score class.scout.primary.firerate Numbers run data get storage space_aces:class scout.primary.firerate
execute store result score class.scout.primary.damage Numbers run data get storage space_aces:class scout.primary.damage
execute store result score class.scout.primary.critMult Numbers run data get storage space_aces:class scout.primary.critMult 100
execute store result score class.scout.primary.falloff Numbers run data get storage space_aces:class scout.primary.falloff
execute store result score class.scout.primary.falloffStart Numbers run data get storage space_aces:class scout.primary.falloffStart
execute store result score class.scout.primary.speed Numbers run data get storage space_aces:class scout.primary.speed
execute store result score class.scout.primary.ammo Numbers run data get storage space_aces:class scout.primary.ammo
execute store result score class.scout.1.cooldown Numbers run data get storage space_aces:class scout.1.cooldown
execute store result score class.scout.1.duration Numbers run data get storage space_aces:class scout.1.duration

## Non-setting variables
item replace block 15 -63 0 container.0 with minecraft:carrot_on_a_stick[minecraft:item_model="class/scout/primary",minecraft:item_name='{"translate":"class.scout.primary"}',minecraft:lore=['{"color":"white","italic":false,"translate":"class.scout.primary.lore"}'],minecraft:hide_additional_tooltip={}]
function class:4/helper/load/create_primary with storage space_aces:class scout.primary
item replace block 15 -62 0 container.0 from block 15 -63 0 container.0