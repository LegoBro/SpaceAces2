#executed on behalf of a bot that already has a class

#return 1 if true

#before running, we should have generated a set of markers representing each class
#with viable choices having the tag "sab.classOptionViable"


execute store result score #var sab.var run data get storage sa_bots:bot_data this.class
execute if score #var sab.var matches 1 as c-0-0-0-1 if entity @s[tag=sab.classOptionViable] run return 1
execute if score #var sab.var matches 2 as c-0-0-0-2 if entity @s[tag=sab.classOptionViable] run return 1
execute if score #var sab.var matches 3 as c-0-0-0-3 if entity @s[tag=sab.classOptionViable] run return 1
execute if score #var sab.var matches 4 as c-0-0-0-4 if entity @s[tag=sab.classOptionViable] run return 1
execute if score #var sab.var matches 5 as c-0-0-0-5 if entity @s[tag=sab.classOptionViable] run return 1
execute if score #var sab.var matches 6 as c-0-0-0-6 if entity @s[tag=sab.classOptionViable] run return 1
execute if score #var sab.var matches 7 as c-0-0-0-7 if entity @s[tag=sab.classOptionViable] run return 1
execute if score #var sab.var matches 8 as c-0-0-0-8 if entity @s[tag=sab.classOptionViable] run return 1
execute if score #var sab.var matches 9 as c-0-0-0-9 if entity @s[tag=sab.classOptionViable] run return 1
execute if score #var sab.var matches 10 as c-0-0-0-a if entity @s[tag=sab.classOptionViable] run return 1
execute if score #var sab.var matches 11 as c-0-0-0-b if entity @s[tag=sab.classOptionViable] run return 1
execute if score #var sab.var matches 12 as c-0-0-0-c if entity @s[tag=sab.classOptionViable] run return 1
execute if score #var sab.var matches 13 as c-0-0-0-d if entity @s[tag=sab.classOptionViable] run return 1
execute if score #var sab.var matches 14 as c-0-0-0-e if entity @s[tag=sab.classOptionViable] run return 1
execute if score #var sab.var matches 15 as c-0-0-0-f if entity @s[tag=sab.classOptionViable] run return 1

return 0