# axes

sharpened_stone_axe:
    type: item
    material: stone_axe
    display name: <&r>Sharpened Stone Axe
    mechanisms:
        attribute_modifiers:
            attack_damage:
                3:
                    operation: add_number
                    amount: 9.5
            attack_speed:
                4:
                    operation: add_number
                    amount: -3.15
        hides: attributes
    lore:
    - <&9>Tools & Utilities
    - <&9>Combat
    - <&r>
    - <&7>When in Main Hand<&co>
    - <&2> 9.5 Attack Damage
    - <&2> 0.85 Attack Speed
    durability: 0

iron_alloy_ingot:
    type: item
    material: iron_ingot
    display name: <&r><&b>Iron Alloy Ingot
    allow in material recipes: false
    recipes:
        1:
            type: shaped
            input:
            - air|material:iron_ingot|air
            - air|material:copper_ingot|air
            - air|air|air