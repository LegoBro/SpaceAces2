## Reloads default stats
execute store result score class.mechanic.health Numbers run data get storage space_aces:class mechanic.health
execute store result score class.mechanic.speed Numbers run data get storage space_aces:class mechanic.speed
execute store result score class.mechanic.primary.reload Numbers run data get storage space_aces:class mechanic.primary.reload 20
execute store result score class.mechanic.primary.firerate Numbers run data get storage space_aces:class mechanic.primary.firerate
execute store result score class.mechanic.primary.damage Numbers run data get storage space_aces:class mechanic.primary.damage
execute store result score class.mechanic.primary.critMult Numbers run data get storage space_aces:class mechanic.primary.critMult 100
execute store result score class.mechanic.primary.falloff Numbers run data get storage space_aces:class mechanic.primary.falloff
execute store result score class.mechanic.primary.falloffStart Numbers run data get storage space_aces:class mechanic.primary.falloffStart
execute store result score class.mechanic.primary.speed Numbers run data get storage space_aces:class mechanic.primary.speed
execute store result score class.mechanic.primary.ammo Numbers run data get storage space_aces:class mechanic.primary.ammo

execute store result score class.mechanic.1.cooldown Numbers run data get storage space_aces:class mechanic.1.cooldown
execute store result score class.mechanic.1.duration Numbers run data get storage space_aces:class mechanic.1.duration
execute store result score class.mechanic.1.turret.health Numbers run data get storage space_aces:class mechanic.1.turret.health
execute store result score class.mechanic.1.turret.standard.firerate Numbers run data get storage space_aces:class mechanic.1.turret.standard.firerate
execute store result score class.mechanic.1.turret.standard.damage Numbers run data get storage space_aces:class mechanic.1.turret.standard.damage
execute store result score class.mechanic.1.turret.standard.critMult Numbers run data get storage space_aces:class mechanic.1.turret.standard.critMult 100
execute store result score class.mechanic.1.turret.standard.falloff Numbers run data get storage space_aces:class mechanic.1.turret.standard.falloff
execute store result score class.mechanic.1.turret.standard.falloffStart Numbers run data get storage space_aces:class mechanic.1.turret.standard.falloffStart

execute store result score class.mechanic.1.turret.sniper.firerate Numbers run data get storage space_aces:class mechanic.1.turret.sniper.firerate
execute store result score class.mechanic.1.turret.sniper.damage Numbers run data get storage space_aces:class mechanic.1.turret.sniper.damage
execute store result score class.mechanic.1.turret.sniper.critMult Numbers run data get storage space_aces:class mechanic.1.turret.sniper.critMult 100
execute store result score class.mechanic.1.turret.sniper.falloff Numbers run data get storage space_aces:class mechanic.1.turret.sniper.falloff
execute store result score class.mechanic.1.turret.sniper.falloffStart Numbers run data get storage space_aces:class mechanic.1.turret.sniper.falloffStart

execute store result score class.mechanic.1.turret.rocket.firerate Numbers run data get storage space_aces:class mechanic.1.turret.rocket.firerate
execute store result score class.mechanic.1.turret.rocket.damage Numbers run data get storage space_aces:class mechanic.1.turret.rocket.damage
execute store result score class.mechanic.1.turret.rocket.critMult Numbers run data get storage space_aces:class mechanic.1.turret.rocket.critMult 100
execute store result score class.mechanic.1.turret.rocket.falloff Numbers run data get storage space_aces:class mechanic.1.turret.rocket.falloff
execute store result score class.mechanic.1.turret.rocket.falloffStart Numbers run data get storage space_aces:class mechanic.1.turret.rocket.falloffStart
execute store result score class.mechanic.1.turret.rocket.speed Numbers run data get storage space_aces:class mechanic.1.turret.rocket.speed
execute store result score class.mechanic.1.turret.rocket.arcRate Numbers run data get storage space_aces:class mechanic.1.turret.rocket.arcRate

execute store result score class.mechanic.2.cooldown Numbers run data get storage space_aces:class mechanic.2.cooldown
execute store result score class.mechanic.2.duration Numbers run data get storage space_aces:class mechanic.2.duration
execute store result score class.mechanic.2.explode_damage Numbers run data get storage space_aces:class mechanic.2.damage
execute store result score class.mechanic.2.explode_critMult Numbers run data get storage space_aces:class mechanic.2.critMult 100
execute store result score class.mechanic.2.explode_falloff Numbers run data get storage space_aces:class mechanic.2.falloff
execute store result score class.mechanic.2.explode_falloffStart Numbers run data get storage space_aces:class mechanic.2.falloffStart

## Calculated on Reload, no need every tick:
## Non-setting variables
item replace block 15 -63 0 container.0 with minecraft:carrot_on_a_stick[item_model="class/mechanic/primary",minecraft:item_name={translate:"class.mechanic.primary"},minecraft:lore=[{color:"white","italic":false,translate:"class.mechanic.primary.lore"}],tooltip_display={hidden_components:["unbreakable"]}]
function class:4/helper/load/create_primary with storage space_aces:class mechanic.primary
item replace block 15 -54 0 container.0 from block 15 -63 0 container.0

## Scoreboards for turret targeting
scoreboard objectives add target.0 dummy
scoreboard objectives add target.1 dummy
scoreboard objectives add target.2 dummy
scoreboard objectives add target.3 dummy