#used to set basic map signs
function help:4ac59a86d47027ea7efde4d6d0be3cc90ad10c7c668b6b84bac8efe13a54931b
function help:a565f95b09e796a46a5ddd9a4768356890b4897994dce9b539cbb78620f69222
function help:10e5177dd991b3efc3d84d66c3078ae2e88e92aba2387e4820aa006b0a7ba4b8
function help:a6d45f7a95170015db32a97e3243b63ce480abb610a184eeb3d01dbe88df9caa
function help:deff4d5f9959d5dfe7ef1354cefbb414d99282b4a361be3628455d87f9adaffb
function help:1bc3527fe6ccf95a405dffb780d9a9a2bffa09d7f43545c822a5cdf82606e925
function help:18f640560effd5e2fa0457b8bd7df454c77081f6f0059a00ac464857dae7913d
function help:5ab923729716585fe19f4db6189c424ad7791078d944dbe1ce55aaa68dd43709
function help:923428c607a9fb92d38d8ea9fb6027a59f52c45ed1f5985fb25b81f7814f4ad6
function help:7adc3466465977603bbcb0a7934de22fcbdd929b803e63ac0b33ed799dcf2093
execute unless entity @e[tag=map_display_-1] run summon minecraft:armor_stand 8 204.75 37 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["reload.reset","map_display_-1"],ArmorItems:[{},{},{},{id:"minecraft:black_stained_glass",count:1}]}
execute unless entity @e[tag=map_display_0] run summon minecraft:armor_stand 8 204.75 41 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["reload.reset","map_display_0"]}
execute unless entity @e[tag=map_display_1] run summon minecraft:armor_stand 9 204.75 41 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["reload.reset","map_display_1"]}
execute unless entity @e[tag=map_display_2] run summon minecraft:armor_stand 7 204.75 41 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["reload.reset","map_display_2"]}
execute unless entity @e[tag=map_display_3] run summon minecraft:armor_stand 12 204.75 38 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["reload.reset","map_display_3"]}
execute unless entity @e[tag=map_display_4] run summon minecraft:armor_stand 4 204.75 38 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["reload.reset","map_display_4"]}
execute unless entity @e[tag=map_display_5] run summon minecraft:armor_stand 12 204.75 37 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["reload.reset","map_display_5"]}
execute unless entity @e[tag=map_display_6] run summon minecraft:armor_stand 4 204.75 37 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["reload.reset","map_display_6"]}
execute unless entity @e[tag=map_display_7] run summon minecraft:armor_stand 12 204.75 36 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["reload.reset","map_display_7"]}
execute unless entity @e[tag=map_display_8] run summon minecraft:armor_stand 4 204.75 36 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["reload.reset","map_display_8"]}
execute unless entity @e[tag=archive_display] run summon minecraft:armor_stand 8 214.75 -1 {NoGravity:1b,Invulnerable:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["reload.reset","archive_display"]}
data modify block 9 215 1 front_text.messages[1] set value '{"text":">>>>>","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players add archive Numbers 1"},"type":"text"}'
data modify block 7 215 1 front_text.messages[1] set value '{"text":"<<<<<","color":"aqua","bold":true,"clickEvent":{"action":"run_command","value":"/scoreboard players remove archive Numbers 1"},"type":"text"}'

return 1