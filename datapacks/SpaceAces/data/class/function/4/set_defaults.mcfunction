## Creates the defaults in data, which is used on reload

data merge storage space_aces:class {\
    melee:{\
        damage: 20,\
        critMult: 1,\
        falloff: 0,\
        falloffStart: 0,\
        speed: 0,\
        cooldown: 10,\
    },\
    scout:{\
        health: 100,\
        speed: .40,\
        melee:{\
            launch: 5000,\
            damage: 30\
        },\
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
        },\
        ultimate:{\
            charge: 1000,\
            duration: 10,\
            launch: 9000,\
            damage: 50\
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
        },\
        ultimate:{\
            charge: 1250,\
            duration: 8,\
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
        },\
        ultimate:{\
            charge: 1000,\
            duration: 12,\
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
            critMult: 1.5,\
            arcRate: 20,\
            speed: 10,\
            ammo: 4,\
            detonate_damage: 25,\
            detonate_critMult: 1.0,\
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
        },\
        ultimate:{\
            charge: 1100,\
            duration: 1,\
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
            maxUses: 3,\
            damage: 15,\
        },\
        2:{\
            cooldown: 200,\
            duration: 150\
        },\
        ultimate:{\
            charge: 1300,\
            duration: 10,\
            interval: 20,\
            damage: 50,\
            critMult: 1.5,\
            falloff: 1,\
            falloffStart: 25,\
            speed: 0,\
        }\
    },\
    infiltraitor:{\
        health: 100,\
        speed: .25,\
        melee:{\
            damage: 30,\
            invis_damage: 60\
        },\
        primary:{\
            reload: 1.5,\
            firerate: 12,\
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
            duration: 220,\
            damage: 10,\
            critMult: 100,\
            arcRate: 30,\
            speed: 8,\
            detonate_damage: 50,\
            detonate_critMult: 100,\
            detonate_falloff: 8,\
            detonate_falloffStart: 2,\
            detonate_timer: 20,\
        },\
        ultimate:{\
            charge: 1200,\
            duration: 0.5,\
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
        },\
        ultimate:{\
            charge: 1400,\
            duration: 8,\
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
            ammo: 80\
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
        },\
        ultimate:{\
            charge: 1500,\
            duration: 6,\
            explode_damage: 10,\
            explode_critMult: 100,\
            explode_falloff: 3,\
            explode_falloffStart: 0,\
        }\
    },\
    brawler:{\
        health: 250,\
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
            damage: 10,\
            maxUses: 2\
        },\
        ultimate:{\
            charge: 1500,\
            duration: 8,\
            damage:10,\
            pull_strength:3000,\
        }\
    },\
    mechanic:{\
        health: 200,\
        speed: -0.05,\
        primary:{\
            reload: 1,\
            firerate: 12,\
            damage: 8,\
            critMult: 1.5,\
            falloff: 1,\
            falloffStart: 10,\
            speed: 0,\
            ammo: 2,\
            bullets: 6,\
            spreadX: 25,\
            spreadY: 25\
        },\
        1:{\
            cooldown: 160,\
            duration: 160,\
            turret: {\
                health: 150,\
                standard: {\
                    firerate:3,\
                    damage:5,\
                    critMult:1,\
                    falloff: 1,\
                    falloffStart: 25,\
                },\
                sniper: {\
                    firerate:15,\
                    damage:30,\
                    critMult:1,\
                    falloff: 1,\
                    falloffStart: 50,\
                },\
                rocket: {\
                    firerate:20,\
                    damage:10,\
                    critMult:1,\
                    falloff: 1,\
                    falloffStart: 25,\
                    speed: 35,\
                    arcRate: 0,\
                }\
            }\
        },\
        2:{\
            cooldown: 200,\
            duration: 100,\
        },\
        ultimate:{\
            charge: 2000,\
            duration: 15,\
            damage: 5,\
            critMult: 1,\
            speed: 8,\
            falloff: 1,\
            falloffStart: 3,\
        }\
    },\
    pyro:{\
        health: 300,\
        speed: -0.10,\
        primary:{\
            reload: 3,\
            firerate: 4,\
            damage: 5,\
            critMult: 1,\
            speed: 12,\
            ammo: 50,\
            arcRate: -9\
        },\
        1:{\
            cooldown: 200,\
            duration: 100,\
            linger: 50,\
            critMult: 100,\
        },\
        2:{\
            cooldown: 240,\
            duration: 200,\
            percent_for_second:10\
        },\
        ultimate:{\
            charge: 1500,\
            duration: 8,\
        }\
    },\
    rocketeer:{\
        health: 250,\
        speed: 0.0,\
        primary:{\
            reload: 1.5,\
            firerate: 14,\
            damage: 25,\
            critMult: 1,\
            speed: 16,\
            ammo: 6,\
            impact_damage: 30,\
            impact_critMult: 1,\
            impact_falloff: 10,\
            impact_falloffStart: 1\
        },\
        1:{\
            cooldown: 80,\
            duration: 78,\
            damage: 65,\
            critMult: 200,\
            falloff: 10,\
            falloffStart: 1,\
        },\
        2:{\
            cooldown: 240,\
            duration: 230,\
            damage: 15,\
            critMult: 1,\
            speed: 2,\
            impact_damage: 5,\
            impact_critMult: 1,\
            impact_falloff: 2,\
            impact_falloffStart: 1\
        },\
        ultimate:{\
            charge: 1400,\
            duration: 3,\
            interval: 3,\
        }\
    },\
    healer:{\
        health: 150,\
        speed: .30,\
        primary:{\
            reload: 2,\
            firerate: 10,\
            damage: 4,\
            healing: 4,\
            critMult: 1.5,\
            falloff: 1,\
            falloffStart: 20,\
            speed: 0,\
            ammo: 30\
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
            cooldown: 160,\
            duration: 158,\
            jump_power: 12000,\
            damage: 25,\
            critMult: 1,\
            speed: 16,\
            impact_damage: 30,\
            impact_critMult: 1,\
            impact_falloff: 10,\
            impact_falloffStart: 1\
        },\
        ultimate:{\
            charge: 1500,\
            duration: 60,\
        }\
    },\
    scientist:{\
        health: 175,\
        speed: 0.10,\
        primary:{\
            reload: 1.5,\
            firerate: 7,\
            damage: 8,\
            critMult: 1.5,\
            speed: 16,\
            arcRate: 6,\
            ammo: 6\
        },\
        1:{\
            cooldown: 100,\
            duration: 90,\
            health: 50,\
            healing_rate: 20,\
            healing_amount: 5,\
            reload_rate: 3,\
            reload_amount: 1\
        },\
        2:{\
            cooldown: 20,\
            duration: 19\
        },\
        ultimate:{\
            charge: 1200,\
            duration: 15,\
        }\
    },\
    shocksmith:{\
        health: 175,\
        speed: 0.15,\
        primary:{\
            reload: 0,\
            firerate: 4,\
            damage: 5,\
            critMult: 2,\
            falloff: 1,\
            falloffStart: 25,\
            speed: 0,\
            ammo: 1,\
            steal_amount: 50,\
        },\
        secondary:{\
            firerate: 8,\
            damage: 15,\
            critMult: 1.5,\
            arcRate: 16,\
            falloffStart: 25,\
            speed: 16,\
            cost: 200,\
            max_ammo: 10,\
            explode_healing: 30,\
            explode_damage: 30,\
            explode_critMult: 1,\
            explode_falloff: 10,\
            explode_falloffStart: 1,\
        },\
        2:{\
            cooldown: 200,\
            duration: 197,\
            damage: 20,\
            critMult: 1.5,\
            arcRate: 0,\
            falloffStart: 0,\
            speed: 12,\
        },\
        ultimate:{\
            charge: 1750,\
            duration: 5,\
            speed: 2,\
            arcRate: 0,\
            detonate_damage: 300,\
            detonate_critMult: 100,\
            detonate_falloff: 10,\
            detonate_falloffStart: 3,\
        }\
    }\
}


# Reload, to manually set the defaults
function class:reload