#executed by bot entity
#executed with storage sa_bots:generic


data modify entity @s hide_description set value false

#show health
$data modify entity @s description set value [{text:"+",color:green,bold:true}," ",{text:"$(health)",color:white,bold:false}]