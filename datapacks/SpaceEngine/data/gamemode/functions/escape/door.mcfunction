## DOORS
tp @s[tag=north] ~ ~ ~-.1
execute unless block ~ ~ ~4 air run kill @s[tag=north]

tp @s[tag=south] ~ ~ ~.1
execute unless block ~ ~ ~-4 air run kill @s[tag=south]

tp @s[tag=up] ~ ~.1 ~
execute unless block ~ ~ ~ air unless block ~ ~-1 ~ air run kill @s[tag=up]

tp @s[tag=east] ~.1 ~ ~
execute unless block ~-4 ~ ~ air run kill @s[tag=east]

tp @s[tag=west] ~-.1 ~ ~
execute unless block ~4 ~ ~ air run kill @s[tag=west]
