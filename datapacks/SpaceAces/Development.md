# Development Documentation


## Scoreboards

* Numbers - global generic scoreboard for quickly storing or copying values
* id - uniquely identifies players and their creations
* Team - changes how damage and healing is applied, all players on same team share team score

### Health
* health - entity health
* maxHealth - maximum amount of health the entity can have
* damage - applies damage to entity, reducing their health
* healing - applies healing to entity, increasing their health, caps at max
* raw_damage - for smaller amounts of damage, 12 = 1 real damage
* raw_dealt - ???


### Status Effects
* fire - DOT that deals more damage the more fire is stored
* fire_tick - used for fire timings
* poison - DOT that ticks slightly faster if stacked higher
* resist - receive 50% reduced incoming damage
* invulnerable - 100% damage reduction

### Player
* crouching
* ability.1.cooldown
* ability.2.cooldown
* Class

* ultimate.cooldown
* ultimate_charge

### Stats
* game_damage - damage dealt this game
* game_dmg_take - damage taken this game
* game_healing - healing done this game

### Projectile
* arc - current arc of projectile
* arcRate - how quickly the arc increases
* falloff - how much damage/block the projectile is reduced by
* falloffFloor - the lowest amount of damage the projectile can have, furthest travel
* falloffStart - the furthest the projectile can travel before falloff damage reduction starts
* critMult - headshot multiplier (in %)


* damage_display
* damageMultiplier
* displayHealth
* gamemode



* invis


* kill
* kills

* last_shot
* lastHurter
* lowHealth


* melee.cooldown
* menu

* over_heal
* over_heal_delay
* passive.cooldown




* reload

* rightClick
* SelectedItem
* settings
* shoot
* size
* speed
* sprint
* talkToCharacter
* target.0
* target.1
* target.2
* target.3

* test
* totalKills
* totalShots


* worm_hole

* xpos
* ypos
* zpos

## Tags

* ignore
Should be ignored by most operations

* ignore.projectiles
Used on an entity to let projectiles know to ignore detection

* class.deployable
Gets ticked as a class deployable

* hb
Has a hitbox and can be attacked

* Entity Type: #projectile:players
Player or Mannequin NPC

* "player" in game:
@e[type=#projectile:players,tag=sab.activePlayer]

## Entities

### Health packs
@e[type=marker,tag=weak_health_pack]
@e[type=marker,tag=strong_health_pack]

## Gamemodes
[See Gamemode Data Format](./data/load/function/gamemode.mcfunction)

## To do:
Separate player specific class tick from general class tick
Blindness Variable