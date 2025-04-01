tag @s add maxless
scoreboard players remove @s over_heal 1
tag @s[scores={over_heal=..0}] remove maxless
scoreboard players reset @s[scores={over_heal=..0}] over_heal

return 1