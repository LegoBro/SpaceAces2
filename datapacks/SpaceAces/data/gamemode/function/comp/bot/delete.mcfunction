# Deletes bot
execute store result storage gamemode:comp bot.id int 1 run scoreboard players get @s sab.botID
function gamemode:comp/bot/delete_macro with storage gamemode:comp bot