## Reloads default stats
execute store result score class.soldier.health Numbers run data get storage space_aces:class soldier.health
execute store result score class.soldier.speed Numbers run data get storage space_aces:class soldier.speed
execute store result score class.soldier.scale Numbers run data get storage space_aces:class soldier.scale
execute store result score class.soldier.primary.reload Numbers run data get storage space_aces:class soldier.primary.reload 20
execute store result score class.soldier.primary.firerate Numbers run data get storage space_aces:class soldier.primary.firerate
execute store result score class.soldier.primary.damage Numbers run data get storage space_aces:class soldier.primary.damage
execute store result score class.soldier.primary.critMult Numbers run data get storage space_aces:class soldier.primary.critMult 100
execute store result score class.soldier.primary.falloff Numbers run data get storage space_aces:class soldier.primary.falloff
execute store result score class.soldier.primary.falloffStart Numbers run data get storage space_aces:class soldier.primary.falloffStart
execute store result score class.soldier.primary.speed Numbers run data get storage space_aces:class soldier.primary.speed
execute store result score class.soldier.primary.ammo Numbers run data get storage space_aces:class soldier.primary.ammo

execute store result score class.soldier.1.cooldown Numbers run data get storage space_aces:class soldier.1.cooldown
execute store result score class.soldier.1.duration Numbers run data get storage space_aces:class soldier.1.duration
execute store result score class.soldier.1.duration Numbers run data get storage space_aces:class soldier.1.duration

execute store result score class.soldier.1.damage Numbers run data get storage space_aces:class soldier.1.damage
execute store result score class.soldier.1.critMult Numbers run data get storage space_aces:class soldier.1.critMult 100
execute store result score class.soldier.1.speed Numbers run data get storage space_aces:class soldier.1.speed
execute store result score class.soldier.1.arcRate Numbers run data get storage space_aces:class soldier.1.arcRate
execute store result score class.soldier.1.ammo Numbers run data get storage space_aces:class soldier.1.ammo
execute store result score class.soldier.1.explode_damage Numbers run data get storage space_aces:class soldier.1.explode_damage
execute store result score class.soldier.1.explode_critMult Numbers run data get storage space_aces:class soldier.1.explode_critMult 100
execute store result score class.soldier.1.explode_falloff Numbers run data get storage space_aces:class soldier.1.explode_falloff
execute store result score class.soldier.1.explode_falloffStart Numbers run data get storage space_aces:class soldier.1.explode_falloffStart

execute store result score class.soldier.2.cooldown Numbers run data get storage space_aces:class soldier.2.cooldown
execute store result score class.soldier.2.duration Numbers run data get storage space_aces:class soldier.2.duration

execute store result score class.soldier.ultimate.charge Numbers run data get storage space_aces:class soldier.ultimate.charge
execute store result score class.soldier.ultimate.duration Numbers run data get storage space_aces:class soldier.ultimate.duration 20

## Non-setting variables
item replace block 15 -63 0 container.0 with minecraft:carrot_on_a_stick[minecraft:item_model="class/soldier/primary",minecraft:item_name={translate:"class.soldier.primary"},minecraft:lore=[{color:"white","italic":false,translate:"class.soldier.primary.lore"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
function class:4/helper/load/create_primary with storage space_aces:class soldier.primary
item replace block 15 -61 0 container.0 from block 15 -63 0 container.0

item replace block 15 -63 0 container.0 with minecraft:carrot_on_a_stick[minecraft:item_model="class/soldier/fast_blast_primary",minecraft:item_name={translate:"class.soldier.primary"},minecraft:lore=[{color:"white","italic":false,translate:"class.soldier.primary.lore"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
function class:4/helper/load/create_primary with storage space_aces:class soldier.primary
item replace block 15 -61 0 container.1 from block 15 -63 0 container.0