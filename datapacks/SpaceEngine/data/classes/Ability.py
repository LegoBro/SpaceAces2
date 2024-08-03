## Weapon Object
import generator

class Ability:
    def __init__(self, yaml):
        print(self.name)
        self.style = yaml["style"]
        self.name = yaml["name"]
        self.slot = yaml["slot"]
        self.duration = yaml["duration"]
        self.recharge = yaml["recharge"]

        pass


    def createFiles(self, path, class_name):
        holding = f"## The player is holding ability: {self.name} (generated)"
        display = f"## Display for ability {self.name} (generated)"
        if self.style == "single_use":
            display += f'\nexecute if entity @s[scores={{activate_{self.slot}=0}}] run item replace entity @s hotbar.{self.slot} with carrot_on_a_stick'
            display += f'\nexecute if entity @s[scores={{activate_{self.slot}=1..}}] run item replace entity @s hotbar.{self.slot} with gray_dye'
            display += f'\nscoreboard players remove @s[scores={{activate_{self.slot}=1..}}] activate_{self.slot} 1'
            display += f'\nexecute if entity @s[scores={{activate_{self.slot}={self.duration}}}] run function classes:{class_name}/{self.name}/deactivate'

            holding += f'\nscoreboard players set @s[scores={{rightClick=1..}}] activate_{self.slot} {self.recharge}'
            holding += f'\nscoreboard players reset @s rightClick'
            holding += f'\nexecute if entity @s[scores={{activate_{self.slot}={self.recharge}}}] run function classes:{class_name}/{self.name}/activate'

            pass

        generator.writeFunction(path + self.name + "/holding", holding)
        generator.writeFunction(path + self.name + "/display", display)





        pass
