## Enables Development Environment
scoreboard objectives add test dummy
scoreboard players set dev_mode settings 1
gamerule sendCommandFeedback true
tellraw @a [{"text":"Developer Mode is Enabled!"}]