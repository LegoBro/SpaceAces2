## Weapon Object
import generator

class Weapon:
    def __init__(self, yaml):
        self.type = yaml["type"]
        self.name = yaml["name"]
        self.ammo = yaml["ammo"]
        self.projectile_amount = yaml["projectile_amount"]
        self.delay = yaml["delay"]
        self.reload = yaml["reload"]
        self.projectile = yaml["projectile"]
        pass
