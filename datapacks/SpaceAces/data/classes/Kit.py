## Class Object
import generator
from Weapon import Weapon
from Ability import Ability

class Kit:
    def __init__(self, yaml):
        self.path = f"./functions/{yaml['name']}/"
        self.id = yaml["id"]
        self.name = yaml["name"]
        self.description = yaml["description"]
        self.health = yaml["health"]
        self.speed = yaml["speed"]
        self.aim_speed = yaml["aim_speed"]
        self.color = yaml["color"]
        self.helmet_color = yaml["helmet_color"]

        self.weapon = Weapon(yaml["weapon"])
        self.abilities = []
        for ability in yaml["abilities"]:
            self.abilities.append(Ability(ability))
            pass
        print(self.abilities)
        pass

    def createFiles(self):

        load = "## Load function for class"

        armor = "## Armor equip for class"

        tick = "## Ticking function for class (generated)"
        tick += f'\nscoreboard players set @s maxHealth {self.health}'
        tick += f'\nitem replace entity @s[tag=!invis,scores={{crouching=0}},gamemode=!spectator] armor.head with minecraft:leather_helmet{{HideFlags:63,AttributeModifiers:[{{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:{(self.speed - 100 ) / 100},Operation:2,UUID:[I;-801381860,1374964116,-1510517210,267107606]}}],Unbreakable:1,display:{{color:{self.helmet_color}}},Enchantments:[{{id:"minecraft:binding_curse",lvl:1}}]}}'
        tick += f'\nitem replace entity @s[tag=!invis,scores={{crouching=1..}},gamemode=!spectator] armor.head with minecraft:leather_helmet{{HideFlags:63,AttributeModifiers:[{{AttributeName:"generic.movement_speed",Name:"generic.movement_speed",Amount:${(self.aim_speed - 100 ) / 100},Operation:2,UUID:[I;-801381860,1374964116,-1510517210,267107606]}}],Unbreakable:1,display:{{color:{self.helmet_color}}},Enchantments:[{{id:"minecraft:binding_curse",lvl:1}}]}}'
        #tick += f'execute if entity @s[scores={{activate_second=0}}] run item replace entity @s hotbar.1 with carrot_on_a_stick{{display:{{Name:"{{\"translate\":\"\"}}",Lore:["${secondaryLore}"]}},HideFlags:63,CustomModelData:${11000001+(10000*self.id)},Unbreakable:1}}'
        #tick += f'execute if entity @s[scores={{activate_second=1..}}] run item replace entity @s hotbar.1 with gray_dye'
        tick += f''
        tick += f''
        for ability in self.abilities: # Loop through abilities to handle them and add their stuff to the main tick function
            ability.createFiles(self.path)
            tick += f'\nexecute if entity @s[scores={{SelectedItem={ability.slot}}}] run function classes:{self.name}/{ability.name}/holding'
            tick += f'\nfunction classes:{self.name}/{ability.name}/display'


            pass

        generator.writeFunction(self.path + "tick", tick)
        pass


#  let base = `


#scoreboard players set @s[scores={SelectedItem=1,rightClick=1..}] activate_second ${c.secondary.recharge}
#scoreboard players reset @s[scores={SelectedItem=1,rightClick=1..}] rightClick
#execute if entity @s[scores={activate_second=${secRepeat}${c.secondary.recharge}}] run function classes:${lname}/${c.secondary.name}/activate
#scoreboard players remove @s[scores={activate_second=1..}] activate_second 1
#execute if entity @s[scores={activate_second=${c.secondary.recharge - c.secondary.duration}}] run function classes:${lname}/${c.secondary.name}/deactivate

#execute if entity @s[scores={activate_third=0}] run replaceitem entity @s hotbar.2 carrot_on_a_stick{display:{Name:"${Translate(c.tertiary.name,"white")}",Lore:["${tertiaryLore}"]},HideFlags:63,CustomModelData:${11000002+(10000*c.id)},Unbreakable:1}
#execute if entity @s[scores={activate_third=1..}] run replaceitem entity @s hotbar.2 gray_dye
#scoreboard players set @s[nbt={SelectedItemSlot:2},scores={rightClick=1..}] activate_third ${c.tertiary.recharge}
#scoreboard players reset @s[nbt={SelectedItemSlot:2},scores={rightClick=1..}] rightClick
#execute if entity @s[scores={activate_third=${tertRepeat}${c.tertiary.recharge}}] run function classes:${lname}/${c.tertiary.name}/activate
#scoreboard players remove @s[scores={activate_third=1..}] activate_third 1
#execute if entity @s[scores={activate_third=${c.tertiary.recharge - c.tertiary.duration}}] run function classes:${lname}/${c.tertiary.name}/deactivate

# Passive
#replaceitem entity @s hotbar.3 scute{display:{Name:"${Translate(c.passive.name,"white")}",Lore:["${passiveLore}"]},HideFlags:63,CustomModelData:${11000003+(10000*c.id)},Unbreakable:1}
#${c.passive.command}
