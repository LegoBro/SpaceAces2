#define all fallback values that a newly created bot should have
#(note that we mean newly created, not newly spawned!)

data modify storage sa_bots:bot_data bot_template.game.ultimate_charge set value 0
#...