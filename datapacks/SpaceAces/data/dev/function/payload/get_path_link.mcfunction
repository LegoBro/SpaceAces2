## Sets up values to get path link for next pig pass, says done when done

tellraw @a "Calculating Path Distance, please do not leave the arena!"

kill @n[type=pig,tag=payload_test]
scoreboard players set @e[type=marker,tag=payload_path] payload.distance 0

execute at @n[type=marker,tag=payload_path,scores={payload=0}] run function dev:payload/restart_path
tag @n[type=pig,tag=paylaod_test] add distance.run