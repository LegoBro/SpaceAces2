#executed by bot entity

# $(bot_i) = the index of the bot
# $(team) = new team for the bot


#set team on storage
$data modify storage sa_bots:bot_data bots[$(bot_i)].team set value $(team)

#delete self
function sa_bots:bot/top_state/active/die