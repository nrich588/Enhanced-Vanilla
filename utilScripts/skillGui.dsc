skillGui:
    type: inventory
    inventory: chest
    title: <dark_red><bold>            <underline>SKILLS
    size: 45
    gui: true
    slots:
    - [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone]
    - [null_zone] [agility_skill] [alch_skill] [animals_skill] [arcana_skill] [ranged_skill] [armor_smith_skill] [axe_skill] [null_zone]
    - [null_zone] [craft_skill] [excavation_skill] [farm_skill] [fish_skill] [harmor_skill] [heavywep_skill] [larmor_skill] [null_zone]
    - [null_zone] [mining_skill] [sword_skill] [tool_smith_skill] [weapon_smith_skill] [] [] [] [null_zone]
    - [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [close_menu] [null_zone]

close_menu:
    type: item
    material: barrier
    display name: <&4>CLOSE
null_zone:
    type: item
    material: black_stained_glass_pane
    display name: <&r> MENU
axe_skill:
    type: item
    material: netherite_axe
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    operation: add_number
                    amount: 5
        hides: attributes
    display name: <&r><&l>AXES
    lore:
    - <&r>Current Level: <&4><player.flag[skillAxe].get[1]>
    - <&r>Current XP: <&e><player.flag[skillAxe].get[2]><&r>/<&e><player.flag[skillAxe].get[3]>
sword_skill:
    type: item
    material: diamond_sword
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    operation: add_number
                    amount: 5
        hides: attributes
    display name: <&r><&l>SWORDS
    lore:
    - <&r>Current Level: <&4><player.flag[skillSword].get[1]>
    - <&r>Current XP: <&e><player.flag[skillSword].get[2]><&r>/<&e><player.flag[skillSword].get[3]>
ranged_skill:
    type: item
    material: bow
    mechanisms:
        hides: attributes
    display name: <&r><&l>ARCHERY
    lore:
    - <&r>Current Level: <&4><player.flag[skillArchery].get[1]>
    - <&r>Current XP: <&e><player.flag[skillArchery].get[2]><&r>/<&e><player.flag[skillArchery].get[3]>
larmor_skill:
    type: item
    material: leather_chestplate
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    operation: add_number
                    amount: 5
        hides: attributes
    display name: <&r><&l>LIGHT ARMOR
    lore:
    - <&r>Current Level: <&4><player.flag[skillLightArmor].get[1]>
    - <&r>Current XP: <&e><player.flag[skillLightArmor].get[2]><&r>/<&e><player.flag[skillLightArmor].get[3]>
harmor_skill:
    type: item
    material: netherite_chestplate
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    operation: add_number
                    amount: 5
        hides: attributes
    display name: <&r><&l>HEAVY ARMOR
    lore:
    - <&r>Current Level: <&4><player.flag[skillHeavyArmor].get[1]>
    - <&r>Current XP: <&e><player.flag[skillHeavyArmor].get[2]><&r>/<&e><player.flag[skillHeavyArmor].get[3]>
weapon_smith_skill:
    type: item
    material: anvil
    display name: <&r><&l>WEAPON SMITHING
    lore:
    - <&r>Current Level: <&4><player.flag[skillWeaponSmithing].get[1]>
    - <&r>Current XP: <&e><player.flag[skillWeaponSmithing].get[2]><&r>/<&e><player.flag[skillWeaponSmithing].get[3]>
armor_smith_skill:
    type: item
    material: iron_ingot
    display name: <&r><&l>ARMOR SMITHING
    lore:
    - <&r>Current Level: <&4><player.flag[skillArmorSmithing].get[1]>
    - <&r>Current XP: <&e><player.flag[skillArmorSmithing].get[2]><&r>/<&e><player.flag[skillArmorSmithing].get[3]>
tool_smith_skill:
    type: item
    material: grindstone
    display name: <&r><&l>TOOL SMITHING
    lore:
    - <&r>Current Level: <&4><player.flag[skillToolSmithing].get[1]>
    - <&r>Current XP: <&e><player.flag[skillToolSmithing].get[2]><&r>/<&e><player.flag[skillToolSmithing].get[3]>
craft_skill:
    type: item
    material: leather
    display name: <&r><&l>CRAFTING
    lore:
    - <&r>Current Level: <&4><player.flag[skillCrafting].get[1]>
    - <&r>Current XP: <&e><player.flag[skillCrafting].get[2]><&r>/<&e><player.flag[skillCrafting].get[3]>
farm_skill:
    type: item
    material: iron_hoe
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    operation: add_number
                    amount: 5
        hides: attributes
    display name: <&r><&l>FARMING
    lore:
    - <&r>Current Level: <&4><player.flag[skillFarming].get[1]>
    - <&r>Current XP: <&e><player.flag[skillFarming].get[2]><&r>/<&e><player.flag[skillFarming].get[3]>
alch_skill:
    type: item
    material: blaze_powder
    mechanisms:
        hides: attributes
    display name: <&r><&l>ALCHEMY
    lore:
    - <&r>Current Level: <&4><player.flag[skillAlchemy].get[1]>
    - <&r>Current XP: <&e><player.flag[skillAlchemy].get[2]><&r>/<&e><player.flag[skillAlchemy].get[3]>
arcana_skill:
    type: item
    material: nether_star
    mechanisms:
        hides: attributes
    display name: <&r><&l><&f><&l>ARCANA
    lore:
    - <&r>Current Level: <&4><player.flag[skillArcana].get[1]>
    - <&r>Current XP: <&e><player.flag[skillArcana].get[2]><&r>/<&e><player.flag[skillArcana].get[3]>
fish_skill:
    type: item
    material: fishing_rod
    mechanisms:
        hides: attributes
    display name: <&r><&l>FISHING
    lore:
    - <&r>Current Level: <&4><player.flag[skillFishing].get[1]>
    - <&r>Current XP: <&e><player.flag[skillFishing].get[2]><&r>/<&e><player.flag[skillFishing].get[3]>
agility_skill:
    type: item
    material: leather_boots
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    operation: add_number
                    amount: 5
        hides: attributes
    display name: <&r><&l>AGILITY
    lore:
    - <&r>Current Level: <&4><player.flag[skillAgility].get[1]>
    - <&r>Current XP: <&e><player.flag[skillAgility].get[2]><&r>/<&e><player.flag[skillAgility].get[3]>
heavywep_skill:
    type: item
    material: mace
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    operation: add_number
                    amount: 5
        hides: attributes
    display name: <&r><&l><&f><&l>HEAVY WEAPONS
    lore:
    - <&r>Current Level: <&4><player.flag[skillHeavyWeapons].get[1]>
    - <&r>Current XP: <&e><player.flag[skillHeavyWeapons].get[2]><&r>/<&e><player.flag[skillHeavyWeapons].get[3]>
animals_skill:
    type: item
    material: egg
    mechanisms:
        hides: attributes
    display name: <&r><&l><&f><&l>ANIMALS
    lore:
    - <&r>Current Level: <&4><player.flag[skillAnimals].get[1]>
    - <&r>Current XP: <&e><player.flag[skillAnimals].get[2]><&r>/<&e><player.flag[skillAnimals].get[3]>
excavation_skill:
    type: item
    material: iron_shovel
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    operation: add_number
                    amount: 5
        hides: attributes
    display name: <&r><&l><&f><&l>EXCAVATION
    lore:
    - <&r>Current Level: <&4><player.flag[skillExcavation].get[1]>
    - <&r>Current XP: <&e><player.flag[skillExcavation].get[2]><&r>/<&e><player.flag[skillExcavation].get[3]>
mining_skill:
    type: item
    material: diamond_pickaxe
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    operation: add_number
                    amount: 5
        hides: attributes
    display name: <&r><&l><&f><&l>MINING
    lore:
    - <&r>Current Level: <&4><player.flag[skillMining].get[1]>
    - <&r>Current XP: <&e><player.flag[skillMining].get[2]><&r>/<&e><player.flag[skillMining].get[3]>
axe_guide:
    type: book
    title: AXES
    author: Richard Dangels
    signed: true
    text:
    - <&4><&l>AXES<&co><&nl><&r>The AXES skill increases damage with all axe based weapons and will ocassionally increase the yield from cutting logs. Experinece is gained by chopping logs and killing enemies with axes.
    - <&4><&l>AXES (cont)<&co><&nl><&r>Axes deal more damage than swords and are effective against leather armor, but ineffective against chainmail. Their increased damage comes at the cost of no sweeping attack and lower attack speeds.
    - <&4><&l>AXES (cont)<&co><&nl><&r><&l>AXE TYPES<&co> <&nl><&r><&chr[25CF]> Wooden<&co> 1 <&nl><&r><&chr[25CF]> Stone<&co> 1 <&nl><&r><&chr[25CF]> Sharp Stone<&co> 5 <&nl><&r><&chr[25CF]> Iron<&co> 10 <&nl><&r><&chr[25CF]> Alloy Iron<&co> 20 <&nl><&r><&chr[25CF]> Diamond<&co> 30 <&nl><&r><&chr[25CF]> Gilded Diamond<&co> 40 <&nl><&r><&chr[25CF]> Netherite<&co> 50 <&nl><&r><&chr[25CF]> Heavy Netherite<&co> 60

skill_gui_events:
    type: world
    events:

        on player clicks axe_skill in skillGui:
            - adjust <player> show_book:<item[axe_guide]>
            - playsound <player> sound:BLOCK_ANVIL_USE
        on player clicks close_menu in skillGui:
            - inventory close


skillMenuCommand:
    type: command
    name: skills
    description: Allows you to check a players time in game.
    usage: /skills
    script:
        - inventory open d:skillGui