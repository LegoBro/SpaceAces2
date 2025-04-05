## Creates the defaults in data, which is used on reload

data merge storage space_aces:class {\
    scout:{\
        health: 100,\
        speed: .40,\
        primary:{\
            reload: 1,\
            firerate: 4,\
            damage: 20,\
            critMult: 2,\
            falloff: 1,\
            falloffStart: 20,\
            speed: 0,\
            ammo: 8\
        },\
        1:{\
            cooldown: 60,\
            duration: 20\
        }\
    },\
    soldier:{\
        health: 150,\
        speed: .10,\
        primary:{\
            reload: 2.5,\
            firerate: 4,\
            damage: 12,\
            critMult: 1.5,\
            falloff: 1,\
            falloffStart: 30,\
            speed: 0,\
            ammo: 30\
        },\
        1:{\
            cooldown: 100,\
            duration: 100\
        },\
        2:{\
            cooldown: 200,\
            duration: 182\
        }\
    },\
    sniper:{\
        health: 150,\
        speed: .10,\
        primary:{\
            reload: 1.25,\
            firerate: 8,\
            damage: 20,\
            critMult: 2,\
            falloff: 3,\
            falloffStart: 15,\
            speed: 0,\
            ammo: 3\
        },\
        1:{\
            maxDamage: 50,\
            falloff:  1,\
            falloffStart:  50,\
            speed:  0,\
            critMult:  200,\
            charge_speed:  2\
        },\
        2:{\
            cooldown:  100,\
            duration:  95,\
            damage:  5,\
            critMult:  100,\
            falloff:  0,\
            falloffStart:  0,\
            speed:  15,\
            arcRate:  30\
        }\
    },\
    bomber:{\
        health: 150,\
        speed: 0.0,\
        primary:{\
            reload: 1.5,\
            firerate: 15,\
            damage: 10,\
            critMult: 1.5,\
            speed: 10,\
            arcRate: 10,\
            ammo: 8,\
            explode_damage: 35,\
            explode_critMult: 100,\
            explode_falloff: 7,\
            explode_falloffStart: 0\
        },\
        secondary:{\
            reload: 30,\
            firerate: 10,\
            damage: 5,\
            critMult: 150,\
            arcRate: 20,\
            speed: 10,\
            ammo: 4,\
            detonate_damage: 25,\
            detonate_critMult: 100,\
            detonate_falloff: 5,\
            detonate_falloffStart: 0\
        },\
        1:{\
            cooldown: 20,\
            duration: 10\
        },\
        2:{\
            cooldown: 20,\
            duration: 10\
        }\
    },\
    mobility:{\
        health: 125,\
        speed: .20,\
        primary:{\
            reload: 1.5,\
            firerate: 8,\
            damage: 15,\
            critMult: 1.5,\
            falloff: 2,\
            falloffStart: 15,\
            speed: 0,\
            ammo: 15\
        },\
        1:{\
            cooldown: 100,\
            duration: 80,\
            maxUses: 3\
        },\
        2:{\
            cooldown: 200,\
            duration: 150\
        }\
    },\
    infiltraitor:{\
        health: 100,\
        speed: .25,\
        primary:{\
            reload: 2.5,\
            firerate: 15,\
            damage: 45,\
            critMult: 1.5,\
            falloff: 2,\
            falloffStart: 15,\
            speed: 0,\
            ammo: 6\
        },\
        1:{\
            cooldown: 200,\
            duration: 100\
        },\
        2:{\
            cooldown: 240,\
            duration: 200,\
            damage: 10,\
            critMult: 100,\
            arcRate: 30,\
            speed: 8,\
            detonate_damage: 50,\
            detonate_critMult: 100,\
            detonate_falloff: 8,\
            detonate_falloffStart: 2,\
            detonate_timer: 40,\
        }\
    },\
    seeker:{\
        health: 125,\
        speed: .30,\
        primary:{\
            reload: 3,\
            firerate: 8,\
            damage: 12,\
            critMult: 1.5,\
            falloff: 1,\
            falloffStart: 6,\
            speed: 0,\
            ammo: 6\
        },\
        1:{\
            cooldown: 60,\
            duration: 50,\
            maxUses: 3,\
            damage: 20,\
            speed: 12,\
            falloff: 1,\
            falloffStart: 20,\
        },\
        2:{\
            cooldown: 300,\
            duration: 250\
        }\
    },\
    gunner:{\
        health: 300,\
        speed: 0.0,\
        primary:{\
            reload: 3,\
            firerate: 0,\
            damage: 6,\
            critMult: 1.5,\
            falloff: 1,\
            falloffStart: 25,\
            speed: 0,\
            ammo: 100\
        },\
        1:{\
            cooldown: 240,\
            duration: 200,\
            damage: 75,\
            critMult: 100,\
            falloff: 15,\
            falloffStart: 0,\
        },\
        2:{\
            cooldown: 300,\
            duration: 250\
        }\
    },\
    brawler:{\
        health: 300,\
        speed: .10,\
        primary:{\
            firerate: 10,\
            damage: 35,\
            critMult: 1,\
            falloff: 0,\
            falloffStart: 0,\
            speed: 0\
        },\
        1:{\
            cooldown: 120,\
            duration: 115,\
            damage: 75,\
            critMult: 100,\
            falloff: 15,\
            falloffStart: 0,\
            jump_power: 20000\
        },\
        2:{\
            cooldown: 150,\
            duration: 100,\
            damage: 10\
        }\
    },\
    mechanic:{\
        health: 300,\
        speed: 100,\
        primary:{\
            reload: 3,\
            firerate: 0,\
            damage: 6,\
            critMult: 1.5,\
            falloff: 1,\
            falloffStart: 25,\
            speed: 0,\
            ammo: 100\
        },\
        1:{\
            cooldown: 240,\
            duration: 200,\
            damage: 75,\
            critMult: 100,\
            falloff: 15,\
            falloffStart: 0,\
        },\
        2:{\
            cooldown: 300,\
            duration: 250\
        }\
    },\
    pyro:{\
        health: 300,\
        speed: 100,\
        primary:{\
            reload: 3,\
            firerate: 0,\
            damage: 6,\
            critMult: 1.5,\
            falloff: 1,\
            falloffStart: 25,\
            speed: 0,\
            ammo: 100\
        },\
        1:{\
            cooldown: 240,\
            duration: 200,\
            damage: 75,\
            critMult: 100,\
            falloff: 15,\
            falloffStart: 0,\
        },\
        2:{\
            cooldown: 300,\
            duration: 250\
        }\
    },\
    rocketeer:{\
        health: 300,\
        speed: 100,\
        primary:{\
            reload: 3,\
            firerate: 0,\
            damage: 6,\
            critMult: 1.5,\
            falloff: 1,\
            falloffStart: 25,\
            speed: 0,\
            ammo: 100\
        },\
        1:{\
            cooldown: 240,\
            duration: 200,\
            damage: 75,\
            critMult: 100,\
            falloff: 15,\
            falloffStart: 0,\
        },\
        2:{\
            cooldown: 300,\
            duration: 250\
        }\
    },\
    healer:{\
        health: 300,\
        speed: 100,\
        primary:{\
            reload: 3,\
            firerate: 0,\
            damage: 6,\
            critMult: 1.5,\
            falloff: 1,\
            falloffStart: 25,\
            speed: 0,\
            ammo: 100\
        },\
        1:{\
            cooldown: 240,\
            duration: 200,\
            damage: 75,\
            critMult: 100,\
            falloff: 15,\
            falloffStart: 0,\
        },\
        2:{\
            cooldown: 300,\
            duration: 250\
        }\
    },\
    scientist:{\
        health: 300,\
        speed: 100,\
        primary:{\
            reload: 3,\
            firerate: 0,\
            damage: 6,\
            critMult: 1.5,\
            falloff: 1,\
            falloffStart: 25,\
            speed: 0,\
            ammo: 100\
        },\
        1:{\
            cooldown: 240,\
            duration: 200,\
            damage: 75,\
            critMult: 100,\
            falloff: 15,\
            falloffStart: 0,\
        },\
        2:{\
            cooldown: 300,\
            duration: 250\
        }\
    },\
    shocksmith:{\
        health: 300,\
        speed: 100,\
        primary:{\
            reload: 3,\
            firerate: 0,\
            damage: 6,\
            critMult: 1.5,\
            falloff: 1,\
            falloffStart: 25,\
            speed: 0,\
            ammo: 100\
        },\
        1:{\
            cooldown: 240,\
            duration: 200,\
            damage: 75,\
            critMult: 100,\
            falloff: 15,\
            falloffStart: 0,\
        },\
        2:{\
            cooldown: 300,\
            duration: 250\
        }\
    }\
}


# Reload, to manually set the defaults
function class:reload