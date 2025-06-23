## Reloads default stats
execute store result score class.bomber.health Numbers run data get storage space_aces:class bomber.health
execute store result score class.bomber.speed Numbers run data get storage space_aces:class bomber.speed

execute store result score class.bomber.primary.reload Numbers run data get storage space_aces:class bomber.primary.reload 20
execute store result score class.bomber.primary.firerate Numbers run data get storage space_aces:class bomber.primary.firerate
execute store result score class.bomber.primary.damage Numbers run data get storage space_aces:class bomber.primary.damage
execute store result score class.bomber.primary.critMult Numbers run data get storage space_aces:class bomber.primary.critMult 100
execute store result score class.bomber.primary.arcRate Numbers run data get storage space_aces:class bomber.primary.arcRate
execute store result score class.bomber.primary.speed Numbers run data get storage space_aces:class bomber.primary.speed
execute store result score class.bomber.primary.ammo Numbers run data get storage space_aces:class bomber.primary.ammo
execute store result score class.bomber.primary.explode_damage Numbers run data get storage space_aces:class bomber.primary.explode_damage
execute store result score class.bomber.primary.explode_critMult Numbers run data get storage space_aces:class bomber.primary.explode_critMult 100
execute store result score class.bomber.primary.explode_falloff Numbers run data get storage space_aces:class bomber.primary.explode_falloff
execute store result score class.bomber.primary.explode_falloffStart Numbers run data get storage space_aces:class bomber.primary.explode_falloffStart

execute store result score class.bomber.secondary.reload Numbers run data get storage space_aces:class bomber.secondary.reload 20
execute store result score class.bomber.secondary.firerate Numbers run data get storage space_aces:class bomber.secondary.firerate
execute store result score class.bomber.secondary.damage Numbers run data get storage space_aces:class bomber.secondary.damage
execute store result score class.bomber.secondary.critMult Numbers run data get storage space_aces:class bomber.secondary.critMult 100
execute store result score class.bomber.secondary.arcRate Numbers run data get storage space_aces:class bomber.secondary.arcRate
execute store result score class.bomber.secondary.speed Numbers run data get storage space_aces:class bomber.secondary.speed
execute store result score class.bomber.secondary.ammo Numbers run data get storage space_aces:class bomber.secondary.ammo

execute store result score class.bomber.secondary.detonate_damage Numbers run data get storage space_aces:class bomber.secondary.detonate_damage
execute store result score class.bomber.secondary.detonate_critMult Numbers run data get storage space_aces:class bomber.secondary.detonate_critMult 100
execute store result score class.bomber.secondary.detonate_falloff Numbers run data get storage space_aces:class bomber.secondary.detonate_falloff
execute store result score class.bomber.secondary.detonate_falloffStart Numbers run data get storage space_aces:class bomber.secondary.detonate_falloffStart

execute store result score class.bomber.1.cooldown Numbers run data get storage space_aces:class bomber.1.cooldown
execute store result score class.bomber.1.duration Numbers run data get storage space_aces:class bomber.1.duration
execute store result score class.bomber.2.cooldown Numbers run data get storage space_aces:class bomber.2.cooldown
execute store result score class.bomber.2.duration Numbers run data get storage space_aces:class bomber.2.duration

## Non-setting variables
item replace block 15 -63 0 container.0 with minecraft:carrot_on_a_stick[item_model="class/bomber/primary",minecraft:item_name={translate:"class.bomber.primary"},minecraft:lore=[{color:"white","italic":false,translate:"class.bomber.primary.lore"}],tooltip_display={hidden_components:["unbreakable"]}]
function class:4/helper/load/create_primary with storage space_aces:class bomber.primary
item replace block 15 -59 0 container.0 from block 15 -63 0 container.0

item replace block 15 -63 0 container.0 with minecraft:carrot_on_a_stick[item_model="class/bomber/primary",minecraft:item_name={translate:"class.bomber.secondary"},minecraft:lore=[{color:"white","italic":false,translate:"class.bomber.secondary.lore"}],tooltip_display={hidden_components:["unbreakable"]}]
function class:4/helper/load/create_primary with storage space_aces:class bomber.secondary
item replace block 15 -59 0 container.1 from block 15 -63 0 container.0