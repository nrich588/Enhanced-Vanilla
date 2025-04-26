playerInit:
    type: world
    events:

        on player joins:
            # commented out, want to have players reset levels on join for testing purposes
            #- if !<player.has_flag[joinedBefore]>:
                # skill levels
                - flag <player> skillAgility:<list[1|0|100|Agility]>
                - flag <player> skillAlchemy:<list[1|0|100|Alchemy]>
                - flag <player> skillAnimals:<list[1|0|100|Animals]>
                - flag <player> skillArcana:<list[1|0|100|Arcana]>
                - flag <player> skillArchery:<list[1|0|100|Archery]>
                - flag <player> skillArmorSmithing:<list[1|0|100|Armor Smithing]>
                - flag <player> skillAxe:<list[1|0|100|Axes]>
                - flag <player> skillCrafting:<list[1|0|100|Crafting]>
                - flag <player> skillFarming:<list[1|0|100|Farming]>
                - flag <player> skillFishing:<list[1|0|100|Fishing]>
                - flag <player> skillExcavation:<list[1|0|100|Excavation]>
                - flag <player> skillHeavyArmor:<list[1|0|100|Heavy Armor]>
                - flag <player> skillHeavyWeapon:<list[1|0|100|Heavy Weapons]>
                - flag <player> skillLightArmor:<list[1|0|100|Light Armor]>
                - flag <player> skillMining:<list[1|0|100|Mining]>
                - flag <player> skillSword:<list[1|0|100|Swords]>
                - flag <player> skillToolSmithing:<list[1|0|100|Tool Smithing]>
                - flag <player> skillWeaponSmithing:<list[1|0|100|Weapon Smithing]>

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
                - flag <player> showXpHeavyWeapon
                - flag <player> showXpLightArmor
                - flag <player> showXpMining
                - flag <player> showXpSword
                - flag <player> showXpToolSmithing
                - flag <player> showXpWeaponSmithing
                - narrate "Welcome newcomer!"
                - flag <player> joinedBefore
            #- else:
                - narrate "Welcome back!"
                