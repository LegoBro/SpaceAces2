#executed by a newly spawned bot entity

#we need to decide which class to pick



#do we have a class selected already? if so, there's a 50% chance we won't switch
execute store result score #random sab.var run random value 1..100
execute if data storage sa_bots:bot_data this.class if score #random sab.var matches ..50 \
    run return fail
#=====


#literally just pick a random number from 1 to 15
execute store result storage sa_bots:bot_data this.class int 1 run random value 1..15