#executed by system


#is player count even or odd?
scoreboard players operation #odd sab.var = #playerCountRed sab.var
scoreboard players operation #odd sab.var %= #2 sab.var


#set various thresholds that bots will use

#25% of player count
scoreboard players operation #red_player_threshold_25_percent sab.var = #playerCountRed sab.var
scoreboard players operation #red_player_threshold_25_percent sab.var *= #25 sab.var
scoreboard players operation #red_player_threshold_25_percent sab.var /= #100 sab.var

#50% of player count
scoreboard players operation #red_player_threshold_50_percent sab.var = #playerCountRed sab.var
scoreboard players operation #red_player_threshold_50_percent sab.var *= #50 sab.var
scoreboard players operation #red_player_threshold_50_percent sab.var /= #100 sab.var
execute if score #odd sab.var matches 1 if score #playerCountRed sab.var matches 3.. run \
    scoreboard players add #red_player_threshold_50_percent sab.var 1

#34% of player count
scoreboard players operation #red_player_threshold_34_percent sab.var = #playerCountRed sab.var
scoreboard players operation #red_player_threshold_34_percent sab.var *= #34 sab.var
scoreboard players operation #red_player_threshold_34_percent sab.var /= #100 sab.var
execute if score #odd sab.var matches 0 if score #playerCountRed sab.var matches 1.. run \
    scoreboard players add #red_player_threshold_34_percent sab.var 1

#67% of player count
scoreboard players operation #red_player_threshold_67_percent sab.var = #playerCountRed sab.var
scoreboard players operation #red_player_threshold_67_percent sab.var *= #67 sab.var
scoreboard players operation #red_player_threshold_67_percent sab.var /= #100 sab.var
execute if score #red_player_threshold_67_percent sab.var matches ..0 if score #playerCountRed sab.var matches 1.. run \
    scoreboard players set #red_player_threshold_67_percent sab.var 1