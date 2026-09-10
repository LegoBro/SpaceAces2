# main storage
storage sa_bots:bot_data


# main bot array
sa_bots:bot_data bots[]
> List of all bots that exist.

## bot array entry
bots[i].id
> ID of the bot. Same as their index in the bots[] array.

bots[i].profile
> id: ID linking a bot to a username/profile combo
> username: Bot username string
> profile: String containing skin information that would be used in a macro

bots[i].active
> 0..2, whether this bot is active and should be exist in the world (0 = not active, 1 = active, 2 = model only)

bots[i].instance
> Instance of the bot entity. This changes every time we re-spawn a bot. Bot entities with an invalid instance will delete themselves.

bots[i].team
> What team the bot is on

bots[i].class
> What class the bot is playing as

bots[i].updateOrigin
> Whether the data on "this" needs to be sent to origin


## settings
bots[i].settings
> See "function/setup/bots/default_bot_settings" for a full list of bot settings. This function also documents some stuff


# bot global settings
sa_bots:bot_data bot_template.settings.(any)
> Global settings for bots. Newly created bots will copy these into bots[i].settings

sa_bots:bot_data bot_template.active
> 0..2 Whether newly added bots should be active by default. (0 = not active, 1 = active, 2 = model only)

sa_bots:bot_data default.settings.(any)
> Default settings for bots. To restore this, copy default.settings to bot_template.settings


# bot active copy
sa_bots:bot_data this
> Identical structure to each entry in bot[] list.
> When we start running logic for an individual bot, we copy its data here to cut down on macro usage


# bot profiles (username, skin)
sa_bots:bot_data profiles.all
> All possible profiles. (set in function/setup/bot/setup/profiles)
sa_bots:bot_data profiles.available
sa_bots:bot_data profiles.in_use