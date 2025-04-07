## Reloads default stats
execute store result score class.soldier.health Numbers run data get storage space_aces:class soldier.health
execute store result score class.soldier.speed Numbers run data get storage space_aces:class soldier.speed
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
execute store result score class.soldier.2.cooldown Numbers run data get storage space_aces:class soldier.2.cooldown
execute store result score class.soldier.2.duration Numbers run data get storage space_aces:class soldier.2.duration

## Non-setting variables
item replace block 15 -63 0 container.0 with minecraft:carrot_on_a_stick[minecraft:item_model="class/soldier/primary",minecraft:item_name={translate:"class.soldier.primary"},minecraft:lore=[{color:"white","italic":false,translate:"class.soldier.primary.lore"}],minecraft:unbreakable={show_in_tooltip:0b},tooltip_display={hidden_components:["unbreakable"]}]
function class:4/helper/load/create_primary with storage space_aces:class soldier.primary
item replace block 15 -61 0 container.0 from block 15 -63 0 container.0