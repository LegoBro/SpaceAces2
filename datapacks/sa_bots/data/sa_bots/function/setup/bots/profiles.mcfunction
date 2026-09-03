#first entry is the profile ID.
#needed because we pick profiles in a random order and will need to use that ID to add/remove from profiles.in_use and profiles.available

#second entry is username

#third of each entry is profile for mannequins that determines what skin it has
#example 1: {name:'JohnGlacious'}
#example 2: {texture:'custom_objects/skins/cat'}
#this might not be particularly useful in Space Aces since we totally replace the player's skin, but this is nice to have anyways


#bot usernames (this list can be any length)
data modify storage sa_bots:bot_data profiles.all set value [\
    {id:1,username:"CPU_1",profile:"{}"}, \
    {id:2,username:"CPU_2",profile:"{}"}, \
    {id:3,username:"CPU_3",profile:"{}"}, \
    {id:4,username:"CPU_4",profile:"{}"}, \
    {id:5,username:"CPU_5",profile:"{}"}, \
    {id:6,username:"CPU_6",profile:"{}"}, \
    {id:7,username:"CPU_7",profile:"{}"}, \
    {id:8,username:"CPU_8",profile:"{}"}, \
    {id:9,username:"CPU_9",profile:"{}"}, \
    {id:10,username:"CPU_10",profile:"{}"}, \
    {id:11,username:"CPU_11",profile:"{}"}, \
    {id:12,username:"CPU_12",profile:"{}"}, \
    {id:13,username:"CPU_13",profile:"{}"}, \
    {id:14,username:"CPU_14",profile:"{}"}, \
    {id:15,username:"CPU_15",profile:"{}"}, \
    {id:16,username:"CPU_16",profile:"{}"}, \
    {id:17,username:"CPU_17",profile:"{}"}, \
    {id:18,username:"CPU_18",profile:"{}"}, \
    {id:19,username:"CPU_19",profile:"{}"}, \
    {id:20,username:"CPU_20",profile:"{}"}, \
    {id:21,username:"CPU_21",profile:"{}"}, \
    {id:22,username:"CPU_22",profile:"{}"}, \
    {id:23,username:"CPU_23",profile:"{}"}, \
    {id:24,username:"CPU_24",profile:"{}"}, \
    {id:25,username:"CPU_25",profile:"{}"}, \
    {id:26,username:"CPU_26",profile:"{}"}, \
    {id:27,username:"CPU_27",profile:"{}"}, \
    {id:28,username:"CPU_28",profile:"{}"}, \
    {id:29,username:"CPU_29",profile:"{}"}, \
    {id:30,username:"CPU_30",profile:"{}"}, \
    {id:31,username:"CPU_31",profile:"{}"}, \
    {id:32,username:"CPU_32",profile:"{}"}, \
    {id:33,username:"CPU_33",profile:"{}"}, \
    {id:34,username:"CPU_34",profile:"{}"}, \
    {id:35,username:"CPU_35",profile:"{}"}, \
    {id:36,username:"CPU_36",profile:"{}"}, \
    {id:37,username:"CPU_37",profile:"{}"}, \
    {id:38,username:"CPU_38",profile:"{}"}, \
    {id:39,username:"CPU_39",profile:"{}"}, \
    {id:40,username:"CPU_40",profile:"{}"}, \
    {id:41,username:"CPU_41",profile:"{}"}, \
    {id:42,username:"CPU_42",profile:"{}"}, \
    {id:43,username:"CPU_43",profile:"{}"}, \
    {id:44,username:"CPU_44",profile:"{}"}, \
    {id:45,username:"CPU_45",profile:"{}"}, \
    {id:46,username:"CPU_46",profile:"{}"}, \
    {id:47,username:"CPU_47",profile:"{}"}, \
    {id:48,username:"CPU_48",profile:"{}"}, \
    {id:49,username:"CPU_49",profile:"{}"}, \
    {id:50,username:"CPU_50",profile:"{}"}, \
    {id:51,username:"CPU_51",profile:"{}"}, \
    {id:52,username:"CPU_52",profile:"{}"}, \
    {id:53,username:"CPU_53",profile:"{}"}, \
    {id:54,username:"CPU_54",profile:"{}"}, \
    {id:55,username:"CPU_55",profile:"{}"}, \
    {id:56,username:"CPU_56",profile:"{}"}, \
    {id:57,username:"CPU_57",profile:"{}"}, \
    {id:58,username:"CPU_58",profile:"{}"}, \
    {id:59,username:"CPU_59",profile:"{}"}, \
    {id:60,username:"CPU_60",profile:"{}"}, \
    {id:61,username:"CPU_61",profile:"{}"}, \
    {id:62,username:"CPU_62",profile:"{}"}, \
    {id:63,username:"CPU_63",profile:"{}"}, \
    {id:64,username:"CPU_64",profile:"{}"}, \
    {id:65,username:"CPU_65",profile:"{}"}, \
    {id:66,username:"CPU_66",profile:"{}"}, \
    {id:67,username:"CPU_67",profile:"{}"}, \
    {id:68,username:"CPU_68",profile:"{}"}, \
    {id:69,username:"CPU_69",profile:"{}"}, \
    {id:70,username:"CPU_70",profile:"{}"} \
]