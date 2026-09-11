#classes are stores in the index corresponding to their internal id
#so you can access "scout" by using "data get storage sa_bots:team_composition root.classes[1]"

data modify storage sa_bots:team_composition root set value {\
    classes:[\
        {name:"classless",count:[]},\
        {name:"scout",count:[]},\
        {name:"soldier",count:[]},\
        {name:"sniper",count:[]},\
        {name:"bomber",count:[]},\
        {name:"gunner",count:[]},\
        {name:"healer",count:[]},\
        {name:"brawler",count:[]},\
        {name:"mobility",count:[]},\
        {name:"mechanic",count:[]},\
        {name:"scientist",count:[]},\
        {name:"infiltraitor",count:[]},\
        {name:"pyro",count:[]},\
        {name:"seeker",count:[]},\
        {name:"shocksmith",count:[]},\
        {name:"rocketeer",count:[]},\
    ],\
    roles:[\
        {name:"none",count:[]},\
        {name:"striker",count:[]},\
        {name:"guardian",count:[]},\
        {name:"sustainer",count:[]},\
    ],\
    goals:[\
        {name:"none",count:[]},\
        {name:"push",count:[]},\
        {name:"defend",count:[]},\
        {name:"pick",count:[]},\
    ]\
}