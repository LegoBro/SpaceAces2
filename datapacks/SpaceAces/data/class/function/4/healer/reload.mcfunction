## Reloads default stats
execute store result score class.healer.health Numbers run data get storage space_aces:class healer.health
execute store result score class.healer.speed Numbers run data get storage space_aces:class healer.speed
execute store result score class.healer.primary.reload Numbers run data get storage space_aces:class healer.primary.reload 20
execute store result score class.healer.primary.firerate Numbers run data get storage space_aces:class healer.primary.firerate
execute store result score class.healer.primary.damage Numbers run data get storage space_aces:class healer.primary.damage
execute store result score class.healer.primary.healing Numbers run data get storage space_aces:class healer.primary.healing
execute store result score class.healer.primary.critMult Numbers run data get storage space_aces:class healer.primary.critMult 100
execute store result score class.healer.primary.falloff Numbers run data get storage space_aces:class healer.primary.falloff
execute store result score class.healer.primary.falloffStart Numbers run data get storage space_aces:class healer.primary.falloffStart
execute store result score class.healer.primary.speed Numbers run data get storage space_aces:class healer.primary.speed
execute store result score class.healer.primary.ammo Numbers run data get storage space_aces:class healer.primary.ammo
execute store result score class.healer.1.cooldown Numbers run data get storage space_aces:class healer.1.cooldown
execute store result score class.healer.1.duration Numbers run data get storage space_aces:class healer.1.duration
execute store result score class.healer.2.cooldown Numbers run data get storage space_aces:class healer.2.cooldown
execute store result score class.healer.2.duration Numbers run data get storage space_aces:class healer.2.duration

## Non-setting variables
item replace block 15 -63 0 container.0 with minecraft:carrot_on_a_stick[minecraft:item_model="class/healer/primary",minecraft:item_name='{"translate":"class.healer.primary"}',minecraft:lore=['{"color":"white","italic":false,"translate":"class.healer.primary.lore"}'],minecraft:unbreakable={show_in_tooltip:0b},minecraft:hide_additional_tooltip={}]
function class:4/helper/load/create_primary with storage space_aces:class healer.primary
item replace block 15 -61 0 container.0 from block 15 -63 0 container.0