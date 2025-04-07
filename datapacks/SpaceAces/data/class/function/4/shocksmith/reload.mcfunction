## Reloads default stats
execute store result score class.shocksmith.health Numbers run data get storage space_aces:class shocksmith.health
execute store result score class.shocksmith.speed Numbers run data get storage space_aces:class shocksmith.speed
execute store result score class.shocksmith.primary.reload Numbers run data get storage space_aces:class shocksmith.primary.reload 20
execute store result score class.shocksmith.primary.firerate Numbers run data get storage space_aces:class shocksmith.primary.firerate
execute store result score class.shocksmith.primary.damage Numbers run data get storage space_aces:class shocksmith.primary.damage
execute store result score class.shocksmith.primary.healing Numbers run data get storage space_aces:class shocksmith.primary.healing
execute store result score class.shocksmith.primary.critMult Numbers run data get storage space_aces:class shocksmith.primary.critMult 100
execute store result score class.shocksmith.primary.falloff Numbers run data get storage space_aces:class shocksmith.primary.falloff
execute store result score class.shocksmith.primary.falloffStart Numbers run data get storage space_aces:class shocksmith.primary.falloffStart
execute store result score class.shocksmith.primary.speed Numbers run data get storage space_aces:class shocksmith.primary.speed
execute store result score class.shocksmith.primary.ammo Numbers run data get storage space_aces:class shocksmith.primary.ammo
execute store result score class.shocksmith.1.cooldown Numbers run data get storage space_aces:class shocksmith.1.cooldown
execute store result score class.shocksmith.1.duration Numbers run data get storage space_aces:class shocksmith.1.duration
execute store result score class.shocksmith.2.cooldown Numbers run data get storage space_aces:class shocksmith.2.cooldown
execute store result score class.shocksmith.2.duration Numbers run data get storage space_aces:class shocksmith.2.duration

## Non-setting variables
item replace block 15 -63 0 container.0 with minecraft:carrot_on_a_stick[minecraft:item_model="class/shocksmith/primary",minecraft:item_name={translate:"class.shocksmith.primary"},minecraft:lore=[{color:"white","italic":false,translate:"class.shocksmith.primary.lore"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
function class:4/helper/load/create_primary with storage space_aces:class shocksmith.primary
item replace block 15 -48 0 container.0 from block 15 -63 0 container.0