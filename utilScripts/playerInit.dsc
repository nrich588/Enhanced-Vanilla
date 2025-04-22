playerInit:
    type: world
    events:

        on player joins:
            # commented out, want to have players reset levels on join for testing purposes
            #- if !<player.has_flag[joinedBefore]>:
                # skill levels
                - flag <player> skillAgility:<list[50|0|500|Agility]>
                - flag <player> skillAlchemy:<list[1|0|500|Alchemy]>
                - flag <player> skillAnimals:<list[1|0|500|Animals]>
                - flag <player> skillArcana:<list[1|0|500|Arcana]>
                - flag <player> skillArchery:<list[1|0|500|Archery]>
                - flag <player> skillArmorSmithing:<list[1|0|500|Armor Smithing]>
                - flag <player> skillAxe:<list[1|0|500|Axes]>
                - flag <player> skillCrafting:<list[1|0|500|Crafting]>
                - flag <player> skillFarming:<list[1|0|500|Farming]>
                - flag <player> skillFishing:<list[1|0|500|Fishing]>
                - flag <player> skillExcavation:<list[1|0|500|Excavation]>
                - flag <player> skillHeavyArmor:<list[1|0|500|Heavy Armor]>
                - flag <player> skillHeavyWeapons:<list[1|0|500|Heavy Weapons]>
                - flag <player> skillLightArmor:<list[1|0|500|Light Armor]>
                - flag <player> skillMining:<list[1|0|500|Mining]>
                - flag <player> skillSword:<list[1|0|500|Swords]>
                - flag <player> skillToolSmithing:<list[1|0|500|Tool Smithing]>
                - flag <player> skillWeaponSmithing:<list[1|0|500|Weapon Smithing]>

                - flag <player> runCounter:0

                # xp displays
                - flag <player> showXp
                #- flag <player> showXpAgility
                - flag <player> showXpAlchemy
                - flag <player> showXpAnimals
                - flag <player> showXpArcana
                - flag <player> showXpArchery
                - flag <player> showXpArmorSmithing
                - flag <player> showXpAxe
                - flag <player> showXpCrafting
                - flag <player> showXpFarming
                - flag <player> showXpFishing
                - flag <player> showXpExcavation
                - flag <player> showXpHeavyArmor
                - flag <player> showXpHeavyWeapons
                - flag <player> showXpLightArmor
                - flag <player> showXpMining
                - flag <player> showXpSword
                - flag <player> showXpToolSmithing
                - flag <player> showXpWeaponSmithing
                - narrate "Welcome newcomer!"
                - flag <player> joinedBefore
            #- else:
                - narrate "Welcome back!"
                