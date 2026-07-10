## Enables Development Environment
scoreboard objectives add test dummy
scoreboard players set dev_mode settings 1
gamerule send_command_feedback true
tellraw @a [{"text":"Developer Mode is Enabled!"}]