# Cleans up miscellaneous items and projectiles
execute as @e[tag=active_smokescreen,tag=class.deployable] run fill ~-5 ~-5 ~-5 ~5 ~5 ~5 air replace moving_piston strict
kill @e[tag=class.deployable]