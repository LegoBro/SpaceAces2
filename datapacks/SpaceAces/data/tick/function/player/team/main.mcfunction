## Whether the player is on the red or blue team
# Rebranch into two specific teams
execute if entity @s[team=blue] run function tick:player/team/blue
execute if entity @s[team=red] run function tick:player/team/red

# Hitbox handling
tag @s[tag=hb_player,scores={crouching=1}] add hb_crouched_player
tag @s[tag=hb_player,scores={crouching=1}] remove hb_player
tag @s[tag=hb_crouched_player,scores={crouching=0}] remove hb_crouched_player
tag @s[tag=!hb_player,tag=!hb_crouched_player] add hb_player

#Lobby for team selection
execute if entity @s[x=3,y=195,z=-10,dx=11,dy=1,dz=15,tag=!awaiting,tag=!in_game] run function gamemode:new_player

# Changes the way items display
function help:c5af7bf92237dfa52aeea9d27e400e4bcd6b3ed2e9d9b146a94fe228a7a3df67
effect give @s minecraft:haste 1000000 100 true
#effect give @s minecraft:weakness 1000000 100 true

# Nerf to sprinting
effect give @s[scores={sprint=1..,energy=7..}] minecraft:hunger 1 30 true
scoreboard players set @s[scores={sprint=1..}] sprint 0
scoreboard players remove @s[scores={sprint=-59..}] sprint 1
effect give @s[scores={energy=..9,sprint=..-60}] minecraft:saturation 1 0 true

# Fall into void damaging
execute store result score @s ypos run data get entity @s Pos[1]
scoreboard players add @s[gamemode=adventure,scores={ypos=..-10}] damage 100

# prevents right clicking in Lobby (except (re)spawning)
scoreboard players reset @s[x=8,y=200,z=8,distance=..250,nbt=!{SelectedItemSlot:8}] rightClick



# Special Effects
execute if entity @s[scores={invis=1..}] run function classes:infiltraitor/cloak/timer
execute if entity @s[scores={over_heal=1..}] run function classes:healer/over_heal_machine/timer
execute if entity @s[scores={resist=1..}] run function classes:rocketeer/resist/timer
execute if entity @s[scores={invulnerable=1..}] run function classes:brawler/spin_slash/timer

## Display for active effects:
item replace entity @s[scores={invis=1..}] hotbar.4 with minecraft:white_dye[minecraft:custom_name='{"translate":"effect.invis"}',minecraft:lore=['{"translate":"effect.invis.lore"}']]
item replace entity @s[nbt={active_effects:[{id:"minecraft:glowing"}]}] hotbar.4 with minecraft:brown_dye[minecraft:custom_name='{"translate":"effect.glowing"}',minecraft:lore=['{"translate":"effect.glowing.lore"}']]
item replace entity @s[nbt={active_effects:[{id:"minecraft:speed"}]}] hotbar.7 with minecraft:blue_dye[minecraft:custom_name='{"translate":"effect.speed"}',minecraft:lore=['{"translate":"effect.speed.lore"}']]
item replace entity @s[nbt={active_effects:[{id:"minecraft:slowness"}]}] hotbar.7 with minecraft:ink_sac[minecraft:custom_name='{"translate":"effect.slowness"}',minecraft:lore=['{"translate":"effect.slowness.lore"}']]
item replace entity @s[nbt={active_effects:[{id:"minecraft:luck"}]}] hotbar.6 with minecraft:orange_dye[minecraft:custom_name='{"translate":"effect.strength"}',minecraft:lore=['{"translate":"effect.strength.lore"}']]
item replace entity @s[scores={over_heal=1..}] hotbar.5 with minecraft:purple_dye[minecraft:custom_name='{"translate":"effect.over_heal"}',minecraft:lore=['{"translate":"effect.over_heal.lore"}']]

# tick for health

execute if score @s health > @s maxHealth unless score @s over_heal matches 1.. run function health:over_heal_tick
execute if block ~ ~ ~ #projectile:hot_stuff run scoreboard players add @s fire 1
execute if score @s fire matches 1.. run function health:fire_tick
scoreboard players add @s[nbt={active_effects:[{id:"minecraft:unluck"}]}] raw_damage 3
execute if score @s raw_damage matches 12.. run function health:damage
execute if score @s 2xdamage matches 1.. run function health:damage
execute if score @s damage matches 1.. run function health:damage
execute if score @s healing matches 1.. run function health:heal

scoreboard players add @s[scores={displayHealth=..2}] lowHealth 1
scoreboard players add @s[scores={displayHealth=..1,lowHealth=..39}] lowHealth 1
scoreboard players add @s[scores={displayHealth=..0,lowHealth=..39}] lowHealth 1
# Low health "heart-beat"
execute if score @s lowHealth matches 40 run playsound minecraft:block.note_block.basedrum player @a ~ ~ ~ 1 1.5 0
execute if score @s lowHealth matches 43 run playsound minecraft:block.note_block.basedrum player @a ~ ~ ~ 1 1.75 0
execute if score @s lowHealth matches 1.. unless score @s lowHealth matches ..44 run scoreboard players reset @s lowHealth
execute if score @s lowHealth matches 1.. unless score @s displayHealth matches ..2 run scoreboard players reset @s lowHealth

# finds which class each player has, and links it's ability to them
execute if entity @s[scores={Class=1..}] at @s run function classes:finder


# Branching into player specefic scenarios
execute if entity @s[tag=awaiting] run function tick:player/awaiting
execute if entity @s[tag=in_game] run function tick:player/in_game

## Badge for armor
data merge storage health:bar {text:"⓪"}
execute if score @s over_heal matches 1.. run data merge storage health:bar {text:"③"}
execute if score @s resist matches 1.. run data merge storage health:bar {text:"④"}
execute if entity @s[nbt={active_effects:[{id:"minecraft:unluck"}]}] run data merge storage health:bar {text:"①"}
execute if score @s fire matches 1.. run data merge storage health:bar {text:"②"}
execute if score @s invulnerable matches 1.. run data merge storage health:bar {text:"⑤"}

## Spacing for health
execute if score @s health matches 100.. run data modify storage health:space translate set value '{"translate": "space.0"}'
execute if score @s health matches 10..99 run data modify storage health:space translate set value '{"translate": "space.7"}'
execute if score @s health matches ..9 run data modify storage health:space translate set value '{"translate": "space.14"}'
execute if score @s health matches ..-1 run scoreboard players set @s health 0

## Spacing for ammo
execute if score @s totalShots matches 10.. run data modify storage health:ammo translate set value '{"translate": "space.0"}'
execute if score @s totalShots matches ..9 run data modify storage health:ammo translate set value '{"translate": "space.5"}'
execute if score @s totalShots matches ..-1 run scoreboard players set @s totalShots 0

## Calculate secondary
scoreboard players operation secondary Numbers = @s activate_second
execute if score @s activate_second matches 1 run playsound minecraft:block.stone_pressure_plate.click_off master @s ~ ~ ~ 1 2 0
scoreboard players add secondary Numbers 20
scoreboard players operation secondary Numbers /= 20 Numbers
execute if score secondary Numbers matches 10.. run data modify storage health:secondary translate set value '{"translate": "space.1"}'
execute if score secondary Numbers matches ..9 run data modify storage health:secondary translate set value '{"translate": "space.6"}'

## Calculate Tertiary
scoreboard players operation tertiary Numbers = @s activate_third
execute if score @s activate_third matches 1 run playsound minecraft:block.stone_pressure_plate.click_off master @s ~ ~ ~ 1 1 0
scoreboard players add tertiary Numbers 20
scoreboard players operation tertiary Numbers /= 20 Numbers
execute if score tertiary Numbers matches 10.. run data modify storage health:tertiary translate set value '{"translate": "space.1"}'
execute if score tertiary Numbers matches ..9 run data modify storage health:tertiary translate set value '{"translate": "space.6"}'

# Final hotbar assortment
function help:cd35401486cfb62836f1a0f3102d3d38f14e0d0c7230ba7f76ae512a8fd7514a


execute if entity @s[tag=reselect] run scoreboard players operation @s health = @s maxHealth
tag @s[tag=reselect] remove reselect

return 1