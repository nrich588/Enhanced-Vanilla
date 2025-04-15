playerInit:
    type: world
    events:

        on player joins:
            #- if !<player.has_flag[joinedBefore]>:
                # skill levels
                - flag <player> skillAxe:<list[1|0|500|Axes]>
                - flag <player> skillArchery:<list[1|0|500|Archery]>
                - flag <player> skillSword:<list[1|0|500|Swords]>
                - flag <player> skillHeavyWeapons:<list[1|0|500|Heavy Weapons]>
                - flag <player> skillLightArmor:<list[1|0|500|Light Armor]>
                - flag <player> skillHeavyArmor:<list[1|0|500|Heavy Armor]>
                - flag <player> skillFarming:<list[1|0|500|Farming]>
                - flag <player> skillWeaponSmithing:<list[1|0|500|Weapon Smithing]>
                - flag <player> skillArmorSmithing:<list[1|0|500|Armor Smithing]>
                - flag <player> skillToolSmithing:<list[1|0|500|Tool Smithing]>
                - flag <player> skillCrafting:<list[1|0|500|Crafting]>
                - flag <player> skillAlchemy:<list[1|0|500|Alchemy]>
                - flag <player> skillArcana:<list[1|0|500|Arcana]>
                - flag <player> skillFishing:<list[1|0|500|Fishing]>
                - flag <player> skillAgility:<list[1|0|500|Agility]>
                - flag <player> skillAnimals:<list[1|0|500|Animals]>
                - flag <player> skillExcavation:<list[1|0|500|Excavation]>
                - flag <player> skillMining:<list[1|0|500|Mining]>
                # generic level
                - flag <player> playerXp:0
                - flag <player> playerLevel:1
                - narrate "Welcome newcomer!"
                - flag <player> joinedBefore
            #- else:
                - narrate "Welcome back!!!!!!!"