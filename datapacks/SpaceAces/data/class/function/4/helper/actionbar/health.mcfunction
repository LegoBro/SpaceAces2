execute if score @s invulnerable matches 1.. run return run data merge storage health:bar {text:"⑤"}
execute if score @s resist matches 1.. run return run data merge storage health:bar {text:"④"}
execute if score @s over_heal matches 1.. run return run data merge storage health:bar {text:"③"}
execute if score @s fire matches 1.. run return run data merge storage health:bar {text:"②"}
execute if score @s poison matches 1.. run return run data merge storage health:bar {text:"①"}

return run data merge storage health:bar {text:"⓪"}