#show move target
$execute positioned 0.0 0.0 0.0 positioned ~$(x) ~$(y) ~$(z) summon text_display run function sa_bots:bot/debug/show_text_macro \
    {scale:"0.5f",text:'{translate:"sa_bot.debug.target",color:"aqua"}'}
