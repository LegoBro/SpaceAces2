# Development Documentation

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

@e[type=marker,tag=weak_health_pack]
@e[type=marker,tag=strong_health_pack]

## Gamemodes
[See Gamemode Data Format](./data/load/function/gamemode.mcfunction)

## To do:
Separate player specific class tick from general class tick
Blindness Variable