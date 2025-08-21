## Scoreboard Objectives

# Global
scoreboard objectives add display dummy
scoreboard objectives add Numbers dummy
scoreboard objectives add settings dummy

scoreboard objectives add id dummy
scoreboard objectives add xpos dummy
scoreboard objectives add ypos dummy
scoreboard objectives add zpos dummy

# Gamemodes
scoreboard objectives add gamemode dummy
scoreboard objectives add payload dummy
scoreboard objectives add payload.distance dummy
scoreboard objectives add payload.check.id dummy

# Entity - Health
scoreboard objectives add health dummy ["",{"text":"+",color:"green","bold":true,"type":"text"}]
scoreboard objectives add maxHealth dummy
scoreboard objectives add healing dummy

# Entity - Status Effects
scoreboard objectives add invis dummy
scoreboard objectives add resist dummy
scoreboard objectives add over_heal dummy
scoreboard objectives add invulnerable dummy

# Player
scoreboard objectives add Class dummy
scoreboard objectives add Team dummy
scoreboard objectives add rightClick minecraft.used:carrot_on_a_stick
scoreboard objectives add reload minecraft.dropped:carrot_on_a_stick
scoreboard objectives add displayHealth dummy
scoreboard objectives add crouching custom:sneak_time
scoreboard objectives add worm_hole trigger
scoreboard objectives add console trigger
scoreboard objectives add talkToCharacter minecraft.custom:minecraft.talked_to_villager
scoreboard objectives add kill dummy
scoreboard objectives add SelectedItem dummy

# Player - Energy
scoreboard objectives add energy food
scoreboard objectives add sprint minecraft.custom:minecraft.sprint_one_cm

# Player - Class
scoreboard objectives add shoot dummy
scoreboard objectives add totalShots dummy
scoreboard objectives add activate_1 dummy
scoreboard objectives add activate_2 dummy
scoreboard objectives add activate_3 dummy
scoreboard objectives add ability.1.cooldown dummy
scoreboard objectives add ability.2.cooldown dummy
scoreboard objectives add passive.cooldown dummy
scoreboard objectives add lowHealth dummy
scoreboard objectives add lastHurter dummy
scoreboard objectives add kills dummy
scoreboard objectives add totalKills dummy
scoreboard objectives add raw_dealt minecraft.custom:minecraft.damage_dealt
scoreboard objectives add damageMultiplier dummy
scoreboard objectives add ultimate_charge dummy
scoreboard objectives add ultimate.cooldown dummy
scoreboard objectives add melee.cooldown dummy

# Projectile
scoreboard objectives add i dummy
scoreboard objectives add j dummy
scoreboard objectives add falloff dummy
scoreboard objectives add falloffStart dummy
scoreboard objectives add falloffFloor dummy
scoreboard objectives add speed dummy
scoreboard objectives add raw_damage dummy
scoreboard objectives add damage dummy
scoreboard objectives add critMult dummy
scoreboard objectives add 2xdamage dummy
scoreboard objectives add fire_tick dummy
scoreboard objectives add arcRate dummy
scoreboard objectives add arc dummy
scoreboard objectives add fire dummy
scoreboard objectives add last_shot dummy

# Game Stats
scoreboard objectives add game_damage dummy
scoreboard objectives add game_healing dummy
scoreboard objectives add game_kills dummy
scoreboard objectives add game_dmg_take dummy
scoreboard objectives add over_heal_delay dummy

return 1