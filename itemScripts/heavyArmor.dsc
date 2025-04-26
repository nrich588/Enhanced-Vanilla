iron_body:
    type: item
    material: iron_chestplate
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    key: armor_chain_body
                    slot: chest
                    operation: add_number
                    amount: 6
        hides: all
    display name: <&r>Iron Chestplate
    recipes:
        1:
            type: shaped
            input:
            - iron_ingot|air|iron_ingot
            - iron_ingot|iron_ingot|iron_ingot
            - iron_ingot|iron_ingot|iron_ingot
    lore:
    - <&f><&8><&m><&sp.repeat[32]>
    - <&r><&e>⛨ Heavy Armor
    - <&r><&7>⭐ Level 1
    - <&f><&8><&m><&sp.repeat[32]>
    - <&f><&a>+6 Armor
iron_legs:
    type: item
    material: iron_leggings
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    key: armor_chain_body
                    slot: legs
                    operation: add_number
                    amount: 5
        hides: all
    display name: <&r>Iron Platelegs
    recipes:
        1:
            type: shaped
            input:
            - iron_ingot|iron_ingot|iron_ingot
            - iron_ingot|air|iron_ingot
            - iron_ingot|air|iron_ingot
    lore:
    - <&f><&8><&m><&sp.repeat[32]>
    - <&r><&e>⛨ Heavy Armor
    - <&r><&7>⭐ Level 1
    - <&f><&8><&m><&sp.repeat[32]>
    - <&f><&a>+5 Armor
iron_helm:
    type: item
    material: iron_helmet
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    key: armor_chain_body
                    slot: head
                    operation: add_number
                    amount: 2
        hides: all
    display name: <&r>Iron Helm
    recipes:
        1:
            type: shaped
            input:
            - iron_ingot|iron_ingot|iron_ingot
            - iron_ingot|air|iron_ingot
            - air|air|air
    lore:
    - <&f><&8><&m><&sp.repeat[32]>
    - <&r><&e>⛨ Heavy Armor
    - <&r><&7>⭐ Level 1
    - <&f><&8><&m><&sp.repeat[32]>
    - <&f><&a>+2 Armor
iron_boot:
    type: item
    material: iron_boots
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    key: armor_chain_body
                    slot: feet
                    operation: add_number
                    amount: 2
        hides: all
    display name: <&r>Iron Boots
    recipes:
        1:
            type: shaped
            input:
            - iron_ingot|air|iron_ingot
            - iron_ingot|air|iron_ingot
            - air|air|air
    lore:
    - <&f><&8><&m><&sp.repeat[32]>
    - <&r><&e>⛨ Heavy Armor
    - <&r><&7>⭐ Level 1
    - <&f><&8><&m><&sp.repeat[32]>
    - <&f><&a>+2 Armor
diamond_body:
    type: item
    material: diamond_chestplate
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    key: armor_chain_body
                    slot: chest
                    operation: add_number
                    amount: 8
            ARMOR_TOUGHNESS:
                1:
                    key: armor_tough_diamond
                    slot: chest
                    operation: add_number
                    amount: 2
        hides: all
    display name: <&r><&9>Diamond Chestplate
    recipes:
        1:
            type: shaped
            input:
            - diamond|air|diamond
            - diamond|diamond|diamond
            - diamond|diamond|diamond
    lore:
    - <&f><&8><&m><&sp.repeat[32]>
    - <&r><&e>⛨ Heavy Armor
    - <&r><&9>⭐ Level 20
    - <&f><&8><&m><&sp.repeat[32]>
    - <&f><&a>+8 Armor
    - <&f><&a>+2 Armor Toughness
diamond_legs:
    type: item
    material: diamond_leggings
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    key: armor_chain_body
                    slot: legs
                    operation: add_number
                    amount: 6
            ARMOR_TOUGHNESS:
                1:
                    key: armor_tough_diamond
                    slot: legs
                    operation: add_number
                    amount: 2
        hides: all
    display name: <&r><&9>Diamond Platelegs
    recipes:
        1:
            type: shaped
            input:
            - diamond|diamond|diamond
            - diamond|air|diamond
            - diamond|air|diamond
    lore:
    - <&f><&8><&m><&sp.repeat[32]>
    - <&r><&e>⛨ Heavy Armor
    - <&r><&9>⭐ Level 20
    - <&f><&8><&m><&sp.repeat[32]>
    - <&f><&a>+5 Armor
    - <&f><&a>+2 Armor Toughness
diamond_helm:
    type: item
    material: diamond_helmet
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    key: armor_chain_body
                    slot: head
                    operation: add_number
                    amount: 3
            ARMOR_TOUGHNESS:
                1:
                    key: armor_tough_diamond
                    slot: head
                    operation: add_number
                    amount: 2
        hides: all
    display name: <&r><&9>Diamond Helm
    recipes:
        1:
            type: shaped
            input:
            - diamond|diamond|diamond
            - diamond|air|diamond
            - air|air|air
    lore:
    - <&f><&8><&m><&sp.repeat[32]>
    - <&r><&e>⛨ Heavy Armor
    - <&r><&9>⭐ Level 20
    - <&f><&8><&m><&sp.repeat[32]>
    - <&f><&a>+2 Armor
    - <&f><&a>+2 Armor Toughness
diamond_boot:
    type: item
    material: diamond_boots
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    key: armor_chain_body
                    slot: feet
                    operation: add_number
                    amount: 3
            ARMOR_TOUGHNESS:
                1:
                    key: armor_tough_diamond
                    slot: feet
                    operation: add_number
                    amount: 2
        hides: all
    display name: <&r><&9>Diamond Boots
    recipes:
        1:
            type: shaped
            input:
            - diamond|air|diamond
            - diamond|air|diamond
            - air|air|air
    lore:
    - <&f><&8><&m><&sp.repeat[32]>
    - <&r><&e>⛨ Heavy Armor
    - <&r><&9>⭐ Level 20
    - <&f><&8><&m><&sp.repeat[32]>
    - <&f><&a>+2 Armor
    - <&f><&a>+2 Armor Toughness
netherite_body:
    type: item
    material: netherite_chestplate
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    key: armor_chain_body
                    slot: chest
                    operation: add_number
                    amount: 8
            ARMOR_TOUGHNESS:
                1:
                    key: armor_tough_diamond
                    slot: chest
                    operation: add_number
                    amount: 3
            knockback_resistance:
                1:
                    key: armor_resist_nether
                    slot: chest
                    operation: add_number
                    amount: 3
        hides: all
    display name: <&r><&d>Netherite Chestplate
    recipes:
        1:
            type: smithing
            template: netherite_upgrade_smithing_template
            base: diamond_body
            upgrade: netherite_ingot
    lore:
    - <&f><&8><&m><&sp.repeat[32]>
    - <&r><&e>⛨ Heavy Armor
    - <&r><&d>⭐ Level 30
    - <&f><&8><&m><&sp.repeat[32]>
    - <&f><&a>+8 Armor
    - <&f><&a>+3 Armor Toughness
    - <&f><&a>+1 Knockback Resistance
netherite_legs:
    type: item
    material: netherite_leggings
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    key: armor_chain_body
                    slot: legs
                    operation: add_number
                    amount: 6
            ARMOR_TOUGHNESS:
                1:
                    key: armor_tough_diamond
                    slot: legs
                    operation: add_number
                    amount: 3
            knockback_resistance:
                1:
                    key: armor_resist_nether
                    slot: chest
                    operation: add_number
                    amount: 3
        hides: all
    display name: <&r><&d>Netherite Platelegs
    recipes:
        1:
            type: smithing
            template: netherite_upgrade_smithing_template
            base: diamond_legs
            upgrade: netherite_ingot
    lore:
    - <&f><&8><&m><&sp.repeat[32]>
    - <&r><&e>⛨ Heavy Armor
    - <&r><&d>⭐ Level 30
    - <&f><&8><&m><&sp.repeat[32]>
    - <&f><&a>+6 Armor
    - <&f><&a>+3 Armor Toughness
    - <&f><&a>+1 Knockback Resistance
netherite_helm:
    type: item
    material: netherite_helmet
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    key: armor_chain_body
                    slot: head
                    operation: add_number
                    amount: 3
            ARMOR_TOUGHNESS:
                1:
                    key: armor_tough_diamond
                    slot: head
                    operation: add_number
                    amount: 3
            knockback_resistance:
                1:
                    key: armor_resist_nether
                    slot: chest
                    operation: add_number
                    amount: 3
        hides: all
    display name: <&r><&d>Netherite Helm
    recipes:
        1:
            type: smithing
            template: netherite_upgrade_smithing_template
            base: diamond_helm
            upgrade: netherite_ingot
    lore:
    - <&f><&8><&m><&sp.repeat[32]>
    - <&r><&e>⛨ Heavy Armor
    - <&r><&d>⭐ Level 30
    - <&f><&8><&m><&sp.repeat[32]>
    - <&f><&a>+2 Armor
    - <&f><&a>+3 Armor Toughness
    - <&f><&a>+1 Knockback Resistance
netherite_boot:
    type: item
    material: netherite_boots
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    key: armor_chain_body
                    slot: feet
                    operation: add_number
                    amount: 3
            ARMOR_TOUGHNESS:
                1:
                    key: armor_tough_diamond
                    slot: feet
                    operation: add_number
                    amount: 3
            knockback_resistance:
                1:
                    key: armor_resist_nether
                    slot: chest
                    operation: add_number
                    amount: 3
        hides: all
    display name: <&r><&d>Netherite Boots
    recipes:
        1:
            type: smithing
            template: netherite_upgrade_smithing_template
            base: diamond_boot
            upgrade: netherite_ingot
    lore:
    - <&f><&8><&m><&sp.repeat[32]>
    - <&r><&e>⛨ Heavy Armor
    - <&r><&d>⭐ Level 30
    - <&f><&8><&m><&sp.repeat[32]>
    - <&f><&a>+2 Armor
    - <&f><&a>+3 Armor Toughness
    - <&f><&a>+1 Knockback Resistance