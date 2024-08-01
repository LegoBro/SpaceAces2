#used to set basic map signs
data merge block 8 205 36 {Text1:"{\"text\":\"\",\"color\":\"black\"}",Text2:"{\"text\":\"Random Mission\",\"color\":\"dark_blue\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @a [\\\"\\\",{\\\"text\\\":\\\"Selected Random Mission\\\",\\\"color\\\":\\\"dark_green\\\",\\\"bold\\\":true}]\"}}",Text3:"{\"text\":\"[Select]\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set Maps Numbers -1\"}}"}
data merge block 8 205 40 {Text1:"{\"text\":\"\",\"color\":\"black\"}",Text2:"{\"text\":\"Map Name\",\"color\":\"dark_blue\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @a [\\\"\\\",{\\\"text\\\":\\\"Selected Map [name]\\\",\\\"color\\\":\\\"dark_green\\\",\\\"bold\\\":true}]\"}}",Text3:"{\"text\":\"[Select]\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set Maps Numbers 0\"}}"}
data merge block 9 205 40 {Text1:"{\"text\":\"\",\"color\":\"black\"}",Text2:"{\"text\":\"Map Name\",\"color\":\"dark_blue\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @a [\\\"\\\",{\\\"text\\\":\\\"Selected Map [name]\\\",\\\"color\\\":\\\"dark_green\\\",\\\"bold\\\":true}]\"}}",Text3:"{\"text\":\"[Select]\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set Maps Numbers 1\"}}"}
data merge block 7 205 40 {Text1:"{\"text\":\"\",\"color\":\"black\"}",Text2:"{\"text\":\"Map Name\",\"color\":\"dark_blue\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @a [\\\"\\\",{\\\"text\\\":\\\"Selected Map [name]\\\",\\\"color\\\":\\\"dark_green\\\",\\\"bold\\\":true}]\"}}",Text3:"{\"text\":\"[Select]\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set Maps Numbers 2\"}}"}
data merge block 11 205 38 {Text1:"{\"text\":\"\",\"color\":\"black\"}",Text2:"{\"text\":\"Map Name\",\"color\":\"dark_blue\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @a [\\\"\\\",{\\\"text\\\":\\\"Selected Map [name]\\\",\\\"color\\\":\\\"dark_green\\\",\\\"bold\\\":true}]\"}}",Text3:"{\"text\":\"[Select]\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set Maps Numbers 3\"}}"}
data merge block 5 205 38 {Text1:"{\"text\":\"\",\"color\":\"black\"}",Text2:"{\"text\":\"Map Name\",\"color\":\"dark_blue\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @a [\\\"\\\",{\\\"text\\\":\\\"Selected Map [name]\\\",\\\"color\\\":\\\"dark_green\\\",\\\"bold\\\":true}]\"}}",Text3:"{\"text\":\"[Select]\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set Maps Numbers 4\"}}"}
data merge block 11 205 37 {Text1:"{\"text\":\"\",\"color\":\"black\"}",Text2:"{\"text\":\"Map Name\",\"color\":\"dark_blue\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @a [\\\"\\\",{\\\"text\\\":\\\"Selected Map [name]\\\",\\\"color\\\":\\\"dark_green\\\",\\\"bold\\\":true}]\"}}",Text3:"{\"text\":\"[Select]\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set Maps Numbers 5\"}}"}
data merge block 5 205 37 {Text1:"{\"text\":\"\",\"color\":\"black\"}",Text2:"{\"text\":\"Map Name\",\"color\":\"dark_blue\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @a [\\\"\\\",{\\\"text\\\":\\\"Selected Map [name]\\\",\\\"color\\\":\\\"dark_green\\\",\\\"bold\\\":true}]\"}}",Text3:"{\"text\":\"[Select]\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set Maps Numbers 6\"}}"}
data merge block 11 205 36 {Text1:"{\"text\":\"\",\"color\":\"black\"}",Text2:"{\"text\":\"Map Name\",\"color\":\"dark_blue\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @a [\\\"\\\",{\\\"text\\\":\\\"Selected Map [name]\\\",\\\"color\\\":\\\"dark_green\\\",\\\"bold\\\":true}]\"}}",Text3:"{\"text\":\"[Select]\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set Maps Numbers 7\"}}"}
data merge block 5 205 36 {Text1:"{\"text\":\"\",\"color\":\"black\"}",Text2:"{\"text\":\"Map Name\",\"color\":\"dark_blue\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"tellraw @a [\\\"\\\",{\\\"text\\\":\\\"Selected Map [name]\\\",\\\"color\\\":\\\"dark_green\\\",\\\"bold\\\":true}]\"}}",Text3:"{\"text\":\"[Select]\",\"color\":\"green\",\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players set Maps Numbers 8\"}}"}
execute unless entity @e[tag=map_display_-1] run summon armor_stand 8 204.75 37 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["reload.reset","map_display_-1"],ArmorItems:[{},{},{},{id:"minecraft:black_stained_glass",Count:1b}]}
execute unless entity @e[tag=map_display_0] run summon armor_stand 8 204.75 41 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["reload.reset","map_display_0"]}
execute unless entity @e[tag=map_display_1] run summon armor_stand 9 204.75 41 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["reload.reset","map_display_1"]}
execute unless entity @e[tag=map_display_2] run summon armor_stand 7 204.75 41 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["reload.reset","map_display_2"]}
execute unless entity @e[tag=map_display_3] run summon armor_stand 12 204.75 38 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["reload.reset","map_display_3"]}
execute unless entity @e[tag=map_display_4] run summon armor_stand 4 204.75 38 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["reload.reset","map_display_4"]}
execute unless entity @e[tag=map_display_5] run summon armor_stand 12 204.75 37 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["reload.reset","map_display_5"]}
execute unless entity @e[tag=map_display_6] run summon armor_stand 4 204.75 37 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["reload.reset","map_display_6"]}
execute unless entity @e[tag=map_display_7] run summon armor_stand 12 204.75 36 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["reload.reset","map_display_7"]}
execute unless entity @e[tag=map_display_8] run summon armor_stand 4 204.75 36 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["reload.reset","map_display_8"]}
execute unless entity @e[tag=archive_display] run summon armor_stand 8 214.75 -1 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["reload.reset","archive_display"]}
data merge block 9 215 1 {Text2:"{\"text\":\">>>>>\",\"color\":\"aqua\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players add archive Numbers 1\"}}"}
data merge block 7 215 1 {Text2:"{\"text\":\"<<<<<\",\"color\":\"aqua\",\"bold\":true,\"clickEvent\":{\"action\":\"run_command\",\"value\":\"scoreboard players remove archive Numbers 1\"}}"}
