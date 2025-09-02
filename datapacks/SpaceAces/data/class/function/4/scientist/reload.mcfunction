## Reloads default stats
execute store result score class.scientist.health Numbers run data get storage space_aces:class scientist.health
execute store result score class.scientist.speed Numbers run data get storage space_aces:class scientist.speed

execute store result score class.scientist.primary.reload Numbers run data get storage space_aces:class scientist.primary.reload 20
execute store result score class.scientist.primary.firerate Numbers run data get storage space_aces:class scientist.primary.firerate
execute store result score class.scientist.primary.damage Numbers run data get storage space_aces:class scientist.primary.damage
execute store result score class.scientist.primary.healing Numbers run data get storage space_aces:class scientist.primary.healing
execute store result score class.scientist.primary.critMult Numbers run data get storage space_aces:class scientist.primary.critMult 100
execute store result score class.scientist.primary.falloff Numbers run data get storage space_aces:class scientist.primary.falloff
execute store result score class.scientist.primary.falloffStart Numbers run data get storage space_aces:class scientist.primary.falloffStart
execute store result score class.scientist.primary.speed Numbers run data get storage space_aces:class scientist.primary.speed
execute store result score class.scientist.primary.ammo Numbers run data get storage space_aces:class scientist.primary.ammo
execute store result score class.scientist.primary.arcRate Numbers run data get storage space_aces:class scientist.primary.arcRate


execute store result score class.scientist.1.cooldown Numbers run data get storage space_aces:class scientist.1.cooldown
execute store result score class.scientist.1.duration Numbers run data get storage space_aces:class scientist.1.duration
execute store result score class.scientist.1.health Numbers run data get storage space_aces:class scientist.1.health
execute store result score class.scientist.1.healing_rate Numbers run data get storage space_aces:class scientist.1.healing_rate
execute store result score class.scientist.1.healing_amount Numbers run data get storage space_aces:class scientist.1.healing_amount
execute store result score class.scientist.1.reload_rate Numbers run data get storage space_aces:class scientist.1.reload_rate
execute store result score class.scientist.1.reload_amount Numbers run data get storage space_aces:class scientist.1.reload_amount

execute store result score class.scientist.2.cooldown Numbers run data get storage space_aces:class scientist.2.cooldown
execute store result score class.scientist.2.duration Numbers run data get storage space_aces:class scientist.2.duration

execute store result score class.scientist.ultimate.charge Numbers run data get storage space_aces:class scientist.ultimate.charge
execute store result score class.scientist.ultimate.duration Numbers run data get storage space_aces:class scientist.ultimate.duration 20

## Non-setting variables
item replace block 15 -63 0 container.0 with minecraft:carrot_on_a_stick[minecraft:item_model="class/scientist/primary",minecraft:item_name={translate:"class.scientist.primary"},minecraft:lore=[{color:"white","italic":false,translate:"class.scientist.primary.lore"}],minecraft:unbreakable={},tooltip_display={hidden_components:["unbreakable"]}]
function class:4/helper/load/create_primary with storage space_aces:class scientist.primary
item replace block 15 -53 0 container.0 from block 15 -63 0 container.0