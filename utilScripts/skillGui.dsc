skillGui:
    type: inventory
    inventory: chest
    title: <dark_red><bold>            <underline>SKILLS
    size: 45
    gui: true
    slots:
    - [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone]
    - [null_zone] [axes_skill] [swords_skill] [ranged_skill] [larmor_skill] [harmor_skill] [heavywep_skill] [agility_skill] [null_zone]
    - [null_zone] [mining_skill] [excavation_skill] [farm_skill] [fish_skill] [weapon_smith_skill] [armor_smith_skill] [tool_smith_skill] [null_zone]
    - [null_zone] [arcana_skill] [alch_skill] [animals_skill] [craft_skill] [] [] [] [null_zone]
    - [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [close_menu] [null_zone]

close_menu:
    type: item
    material: barrier
    display name: <&4>CLOSE
null_zone:
    type: item
    material: black_stained_glass_pane
    display name: <&r> MENU
axes_skill:
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
swords_skill:
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
    - <&r>Current Level: <&4><player.flag[skillAxe].get[1]>
    - <&r>Current XP: <&e><player.flag[skillAxe].get[2]><&r>/<&e><player.flag[skillAxe].get[3]>
ranged_skill:
    type: item
    material: bow
    mechanisms:
        hides: attributes
    display name: <&r><&l>ARCHERY
    lore:
    - <&r>Current Level: <&4><player.flag[skillAxe].get[1]>
    - <&r>Current XP: <&e><player.flag[skillAxe].get[2]><&r>/<&e><player.flag[skillAxe].get[3]>
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
    - <&r>Current Level: <&4><player.flag[skillAxe].get[1]>
    - <&r>Current XP: <&e><player.flag[skillAxe].get[2]><&r>/<&e><player.flag[skillAxe].get[3]>
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
    - <&r>Current Level: <&4><player.flag[skillAxe].get[1]>
    - <&r>Current XP: <&e><player.flag[skillAxe].get[2]><&r>/<&e><player.flag[skillAxe].get[3]>
weapon_smith_skill:
    type: item
    material: anvil
    display name: <&r><&l>WEAPON SMITHING
    lore:
    - <&r>Current Level: <&4><player.flag[skillAxe].get[1]>
    - <&r>Current XP: <&e><player.flag[skillAxe].get[2]><&r>/<&e><player.flag[skillAxe].get[3]>
armor_smith_skill:
    type: item
    material: iron_ingot
    display name: <&r><&l>ARMOR SMITHING
    lore:
    - <&r>Current Level: <&4><player.flag[skillAxe].get[1]>
    - <&r>Current XP: <&e><player.flag[skillAxe].get[2]><&r>/<&e><player.flag[skillAxe].get[3]>
tool_smith_skill:
    type: item
    material: grindstone
    display name: <&r><&l>TOOL SMITHING
    lore:
    - <&r>Current Level: <&4><player.flag[skillAxe].get[1]>
    - <&r>Current XP: <&e><player.flag[skillAxe].get[2]><&r>/<&e><player.flag[skillAxe].get[3]>
craft_skill:
    type: item
    material: leather
    display name: <&r><&l>CRAFTING
    lore:
    - <&r>Current Level: <&4><player.flag[skillAxe].get[1]>
    - <&r>Current XP: <&e><player.flag[skillAxe].get[2]><&r>/<&e><player.flag[skillAxe].get[3]>
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
    - <&r>Current Level: <&4><player.flag[skillAxe].get[1]>
    - <&r>Current XP: <&e><player.flag[skillAxe].get[2]><&r>/<&e><player.flag[skillAxe].get[3]>
alch_skill:
    type: item
    material: blaze_powder
    mechanisms:
        hides: attributes
    display name: <&r><&l>ALCHEMY
    lore:
    - <&r>Current Level: <&4><player.flag[skillAxe].get[1]>
    - <&r>Current XP: <&e><player.flag[skillAxe].get[2]><&r>/<&e><player.flag[skillAxe].get[3]>
arcana_skill:
    type: item
    material: nether_star
    mechanisms:
        hides: attributes
    display name: <&r><&l><&f><&l>ARCANA
    lore:
    - <&r>Current Level: <&4><player.flag[skillAxe].get[1]>
    - <&r>Current XP: <&e><player.flag[skillAxe].get[2]><&r>/<&e><player.flag[skillAxe].get[3]>
fish_skill:
    type: item
    material: fishing_rod
    mechanisms:
        hides: attributes
    display name: <&r><&l>FISHING
    lore:
    - <&r>Current Level: <&4><player.flag[skillAxe].get[1]>
    - <&r>Current XP: <&e><player.flag[skillAxe].get[2]><&r>/<&e><player.flag[skillAxe].get[3]>
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
    - <&r>Current Level: <&4><player.flag[skillAxe].get[1]>
    - <&r>Current XP: <&e><player.flag[skillAxe].get[2]><&r>/<&e><player.flag[skillAxe].get[3]>
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
    - <&r>Current Level: <&4><player.flag[skillAxe].get[1]>
    - <&r>Current XP: <&e><player.flag[skillAxe].get[2]><&r>/<&e><player.flag[skillAxe].get[3]>
animals_skill:
    type: item
    material: egg
    mechanisms:
        hides: attributes
    display name: <&r><&l><&f><&l>ANIMALS
    lore:
    - <&r>Current Level: <&4><player.flag[skillAxe].get[1]>
    - <&r>Current XP: <&e><player.flag[skillAxe].get[2]><&r>/<&e><player.flag[skillAxe].get[3]>
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
    - <&r>Current Level: <&4><player.flag[skillAxe].get[1]>
    - <&r>Current XP: <&e><player.flag[skillAxe].get[2]><&r>/<&e><player.flag[skillAxe].get[3]>
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
    - <&r>Current Level: <&4><player.flag[skillAxe].get[1]>
    - <&r>Current XP: <&e><player.flag[skillAxe].get[2]><&r>/<&e><player.flag[skillAxe].get[3]>
skill_guide:
    type: book
    title: SKILLS
    author: Ya mum
    signed: true
    text:
    - <&4><&l>AXES<&co><&nl><&r><&o>The AXES skill increases damage with all axe based weapons and will ocassionally increase the yield from cutting logs. Experinece is gained by chopping logs, planks, and killing enemies with axes.
    - more words
    - wow

skill_gui_events:
    type: world
    events:

        on player clicks axes_skill in skillGui:
            - adjust <player> show_book:<item[skill_guide]>



check_time:
    type: command
    name: skills
    description: Allows you to check a players time in game.
    usage: /skills
    script:
        - inventory open d:skillGui