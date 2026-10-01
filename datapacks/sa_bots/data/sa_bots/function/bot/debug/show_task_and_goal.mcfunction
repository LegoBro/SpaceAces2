#show what we're thinking

#goal
execute if score @s sab.botGoal matches 1 positioned ~ ~1.9 ~ summon text_display run function sa_bots:bot/debug/show_text_macro \
    {scale:"1.2f",text:'PUSH'}
execute if score @s sab.botGoal matches 2 positioned ~ ~1.9 ~ summon text_display run function sa_bots:bot/debug/show_text_macro \
    {scale:"1.2f",text:'DEFEND'}
execute if score @s sab.botGoal matches 3 positioned ~ ~1.9 ~ summon text_display run function sa_bots:bot/debug/show_text_macro \
    {scale:"1.2f",text:'PICK'}

#tasks
execute if data entity @s data.tasks[0] run data modify storage sa_bots:waypoint_info text_dump set from entity @s data.tasks[0].name
execute if data entity @s data.tasks[0] positioned ~ ~2.2 ~ summon text_display run function sa_bots:bot/debug/show_text_macro \
    {scale:"0.8f",text:'{nbt:"text_dump",storage:"sa_bots:waypoint_info"}'}

execute if data entity @s data.tasks[1] run data modify storage sa_bots:waypoint_info text_dump set from entity @s data.tasks[1].name
execute if data entity @s data.tasks[1] positioned ~ ~2.3 ~ summon text_display run function sa_bots:bot/debug/show_text_macro \
    {scale:"0.8f",text:'{nbt:"text_dump",storage:"sa_bots:waypoint_info"}'}

execute if data entity @s data.tasks[2] run data modify storage sa_bots:waypoint_info text_dump set from entity @s data.tasks[2].name
execute if data entity @s data.tasks[2] positioned ~ ~2.4 ~ summon text_display run function sa_bots:bot/debug/show_text_macro \
    {scale:"0.8f",text:'{nbt:"text_dump",storage:"sa_bots:waypoint_info"}'}

execute if data entity @s data.tasks[3] run data modify storage sa_bots:waypoint_info text_dump set from entity @s data.tasks[3].name
execute if data entity @s data.tasks[3] positioned ~ ~2.5 ~ summon text_display run function sa_bots:bot/debug/show_text_macro \
    {scale:"0.8f",text:'{nbt:"text_dump",storage:"sa_bots:waypoint_info"}'}

execute if data entity @s data.tasks[4] run data modify storage sa_bots:waypoint_info text_dump set from entity @s data.tasks[4].name
execute if data entity @s data.tasks[4] positioned ~ ~2.6 ~ summon text_display run function sa_bots:bot/debug/show_text_macro \
    {scale:"0.8f",text:'{nbt:"text_dump",storage:"sa_bots:waypoint_info"}'}

execute if data entity @s data.tasks[5] run data modify storage sa_bots:waypoint_info text_dump set from entity @s data.tasks[5].name
execute if data entity @s data.tasks[5] positioned ~ ~2.7 ~ summon text_display run function sa_bots:bot/debug/show_text_macro \
    {scale:"0.8f",text:'{nbt:"text_dump",storage:"sa_bots:waypoint_info"}'}
