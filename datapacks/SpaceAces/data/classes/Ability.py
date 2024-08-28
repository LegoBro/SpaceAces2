## Weapon Object
import generator

class Ability:
    def __init__(self, yaml):
        self.style = yaml["style"]
        self.name = yaml["name"]
        self.slot = yaml["slot"]

        pass

    def createFiles(self, path):
        holding = f"## The player is holding ability: {self.name} (generated)"
        display = f"## Display for ability {self.name} (generated)"
        if self.style == "single_use":
            display += f'\nexecute if entity @s[scores={{activate_{self.slot}=0}}] run item replace entity @s hotbar.{self.slot} with carrot_on_a_stick'
            display += f'\nexecute if entity @s[scores={{activate_{self.slot}=1..}}] run item replace entity @s hotbar.{self.slot} with gray_dye'
            display += f'\nscoreboard players remove @s[scores={{activate_{self.slot}=1..}}] activate_{self.slot} 1'
            display += f'\nexecute if entity @s[scores={{activate_{self.slot}=195}}] run function classes:scout/launch/deactivate'

            holding += f'scoreboard players set @s[scores={{rightClick=1..}}] activate_{self.slot} 200'
            holding += f'scoreboard players reset @s rightClick'
            holding += f'execute if entity @s[scores={{activate_{self.slot}=200}}] run function classes:scout/launch/activate'

            pass

        generator.writeFunction(path + self.name + "/holding", holding)
        generator.writeFunction(path + self.name + "/display", display)





        pass
