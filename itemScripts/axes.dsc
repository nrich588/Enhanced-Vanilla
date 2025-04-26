
# axes

basic_wooden_axe:
    type: item
    material: wooden_axe
    display name: <&7>Wooden Axe
    lore:
    - <&f><&8><&m><&sp.repeat[20]>
    - <&c>🪓<&c> Axe
    - <&4>⚡<&r><&4>  Level 1
    - <&f><&8><&m><&sp.repeat[20]>
    - <&2>7 Damage
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    key: test_id_1
                    slot: mainhand
                    operation: add_number
                    amount: 8
            attack_speed:
                1:
                    key: test_id_1
                    slot: mainhand
                    operation: add_number
                    amount: -3.2
        hides: attributes
    recipes:
        1:
            type: shaped
            group: axe
            input:
            - material:*planks|*planks|air
            - material:*planks|stick|air
            - material:air|stick|air
basic_stone_axe:
    type: item
    material: stone_axe
    display name: <&7>Stone Axe
    lore:
    - <&f><&8><&m><&sp.repeat[20]>
    - <&c>🪓<&c> Axe
    - <&4>⚡<&r><&4>  Level 1
    - <&f><&8><&m><&sp.repeat[20]>
    - <&2>9 Damage
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    key: test_id_1
                    slot: mainhand
                    operation: add_number
                    amount: 9
            attack_speed:
                1:
                    key: test_id_1
                    slot: mainhand
                    operation: add_number
                    amount: -3.2
        hides: attributes
    recipes:
        1:
            type: shaped
            group: axe
            input:
            - material:cobblestone|cobblestone|air
            - material:cobblestone|stick|air
            - material:air|stick|air
basic_iron_axe:
    type: item
    material: iron_axe
    display name: <&a>Iron Axe
    lore:
    - <&f><&8><&m><&sp.repeat[20]>
    - <&c>🪓<&c> Axe
    - <&4>⚡<&r><&4>  Level 5
    - <&f><&8><&m><&sp.repeat[20]>
    - <&2>9 Damage
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    key: test_id_1
                    slot: mainhand
                    operation: add_number
                    amount: 9
            attack_speed:
                1:
                    key: test_id_1
                    slot: mainhand
                    operation: add_number
                    amount: -3.1
        hides: attributes
    recipes:
        1:
            type: shaped
            group: axe
            input:
            - iron_ingot|iron_ingot|air
            - iron_ingot|stick|air
            - air|stick|air
basic_diamond_axe:
    type: item
    material: diamond_axe
    display name: <&b>Diamond Axe
    lore:
    - <&f><&8><&m><&sp.repeat[20]>
    - <&c>🪓<&c> Axe
    - <&4>⚡<&r><&4>  Level 15
    - <&f><&8><&m><&sp.repeat[20]>
    - <&2>9 Damage
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    key: test_id_1a
                    slot: mainhand
                    operation: add_number
                    amount: 9
            attack_speed:
                1:
                    key: test_id_1b
                    slot: mainhand
                    operation: add_number
                    amount: -3.1
        hides: attributes
    recipes:
        1:
            type: shaped
            group: axe
            input:
            - diamond|diamond|air
            - diamond|stick|air
            - air|stick|air
basic_netherite_axe:
    debug: true
    type: item
    material: netherite_axe
    display name: <&b>Netherite Axe
    lore:
    - <&f><&8><&m><&sp.repeat[20]>
    - <&c>🪓<&c> Axe
    - <&4>⚡<&r><&4>  Level 25
    - <&f><&8><&m><&sp.repeat[20]>
    - <&2>10 Damage
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    key: test_id_1c
                    slot: mainhand
                    operation: add_number
                    amount: 10
            attack_speed:
                1:
                    key: test_id_1d
                    slot: mainhand
                    operation: add_number
                    amount: -3
        hides: attributes
    recipes:
        1:
            type: smithing
            template: netherite_upgrade_smithing_template
            base: basic_diamond_axe
            upgrade: netherite_ingot
basic_golden_axe:
    type: item
    material: golden_axe
    display name: <&a>Golden Axe
    lore:
    - <&f><&8><&m><&sp.repeat[20]>
    - <&c>🪓<&c> Axe
    - <&4>⚡<&r><&4>  Level 10
    - <&f><&8><&m><&sp.repeat[20]>
    - <&2>9 Damage
    flags:
        durabilityMod: 0
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    key: test_id_1
                    slot: mainhand
                    operation: add_number
                    amount: 9
            attack_speed:
                1:
                    key: test_id_1
                    slot: mainhand
                    operation: add_number
                    amount: -3.2
        hides: attributes
    recipes:
        1:
            type: shaped
            group: axe
            input:
            - gold_ingot|gold_ingot|air
            - gold_ingot|stick|air
            - air|stick|air
sharp_stone_axe:
    type: item
    material: stone_axe
    display name: <&7>Stone Axe
    lore:
    - <&f><&8><&m><&sp.repeat[20]>
    - <&c>🪓<&c> Axe
    - <&4>⚡<&r><&4>  Level 5
    - <&f><&8><&m><&sp.repeat[20]>
    - <&2>9.5 Damage
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    key: test_id_1
                    slot: mainhand
                    operation: add_number
                    amount: 9.5
            attack_speed:
                1:
                    key: test_id_1
                    slot: mainhand
                    operation: add_number
                    amount: -3.2
        hides: attributes
    recipes:
        1:
            type: shaped
            group: axe
            input:
            - flint|flint|air
            - flint|stick|air
            - air|stick|air
superior_iron_axe:
    type: item
    material: iron_axe
    display name: <&a>Iron Axe
    lore:
    - <&f><&8><&m><&sp.repeat[20]>
    - <&c>🪓<&c> Axe
    - <&4>⚡<&r><&4>  Level 12
    - <&f><&8><&m><&sp.repeat[20]>
    - <&2>9 Damage
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    key: test_id_1
                    slot: mainhand
                    operation: add_number
                    amount: 9.5
            attack_speed:
                1:
                    key: test_id_1
                    slot: mainhand
                    operation: add_number
                    amount: -3.1
        hides: attributes
    recipes:
        1:
            type: shaped
            group: axe
            input:
            - iron_alloy_ingot|iron_alloy_ingot|air
            - iron_alloy_ingot|stick|air
            - air|stick|air
hard_diamond_axe:
    type: item
    material: diamond_axe
    display name: <&b>Hardened Diamond Axe
    lore:
    - <&f><&8><&m><&sp.repeat[20]>
    - <&c>🪓<&c> Axe
    - <&4>⚡<&r><&4>  Level 15
    - <&f><&8><&m><&sp.repeat[20]>
    - <&2>9 Damage
    flags:
        durabilityMod: 0
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    key: test_id_1a
                    slot: mainhand
                    operation: add_number
                    amount: 9
            attack_speed:
                1:
                    key: test_id_1b
                    slot: mainhand
                    operation: add_number
                    amount: -3.1
        hides: attributes
    recipes:
        1:
            type: shaped
            group: axe
            input:
            - diamond|diamond|air
            - diamond|basic_diamond_axe|air
            - air|air|air

# weapon world scripts

durabilityMod:
    type: world
    events:
        on player item takes damage:
            - if <context.item.has_flag[durabilityMod]>:
                - inventory flag slot:<context.slot> durabilityMod:++
                - narrate <context.item.flag[durabilityMod]>
                - if <context.item.flag[durabilityMod].mod[2]> == 0:
                    - determine cancelled
        after player item takes damage:
            - narrate <context.item.durability>

# weapon task/proc scripts