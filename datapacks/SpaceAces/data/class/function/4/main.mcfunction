## Over-arching main player function

execute store result score @s damageMultiplier run data get entity @s active_effects[{id:"minecraft:luck"}].amplifier

effect give @s minecraft:saturation infinite 0 true
effect give @s minecraft:invisibility infinite 0 true

# Fall into void damaging
execute store result score @s ypos run data get entity @s Pos[1]
scoreboard players add @s[gamemode=!creative,gamemode=!spectator,scores={ypos=..-10}] damage 100

# finds which class each player has, and links it's ability to them
scoreboard players operation #Class_Start Team = @s Team
scoreboard players operation #Class_Start id = @s id
scoreboard players operation #damageMultiplier damageMultiplier = @s damageMultiplier
execute if entity @s[scores={Class=1..}] at @s run function class:finder

# Special Effects
execute if entity @s[scores={invis=1..}] run function class:4/helper/effect/invis
execute if entity @s[scores={over_heal=1..}] run function class:4/helper/effect/over_heal
execute if entity @s[scores={blindness=1..}] run function class:4/helper/effect/blindness

# Melee Timer
scoreboard players remove @s[scores={melee.cooldown=1..}] melee.cooldown 1

# tick for health
function health:tick

scoreboard players add @s[scores={displayHealth=..25}] lowHealth 1
scoreboard players add @s[scores={displayHealth=..15,lowHealth=..39}] lowHealth 1
scoreboard players add @s[scores={displayHealth=..9,lowHealth=..39}] lowHealth 1
# Low health "heart-beat"
execute if score @s lowHealth matches 40 run playsound minecraft:block.note_block.basedrum player @a ~ ~ ~ 1 1.5 0
execute if score @s lowHealth matches 43 run playsound minecraft:block.note_block.basedrum player @a ~ ~ ~ 1 1.75 0
execute if score @s lowHealth matches 1.. unless score @s lowHealth matches ..44 run scoreboard players reset @s lowHealth
execute if score @s lowHealth matches 1.. unless score @s displayHealth matches ..25 run scoreboard players reset @s lowHealth

execute if score @s displayHealth matches ..25 if score @s damage_display matches 0 run scoreboard players set @s damage_display 10

# Branching into player specefic scenarios
execute if entity @s[tag=awaiting] run function tick:player/awaiting
execute if entity @s[tag=in_game] run function tick:player/in_game
