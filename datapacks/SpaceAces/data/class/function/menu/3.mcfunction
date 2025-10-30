## 3
scoreboard players set @s menu 3

item replace entity @s inventory.0 with diamond[item_model="minecraft:class/healer/primary",item_name="Healer",custom_data={class_menu:true, function:"class:healer/select"}]
item replace entity @s inventory.1 with diamond[item_model="minecraft:class/scientist/primary",item_name="Scientist",custom_data={class_menu:true, function:"class:scientist/select"}]
item replace entity @s inventory.2 with diamond[item_model="minecraft:class/shocksmith/primary",item_name="Shocksmith",custom_data={class_menu:true, function:"class:shocksmith/select"}]
