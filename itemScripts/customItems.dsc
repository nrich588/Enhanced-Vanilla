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

studded_leather_chestplate:
    type: item
    material: leather_chestplate
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    operation: add_number
                    amount: 5
        hides: attributes
    display name: <&r><&l>Studded Vest
    lore:
    - <&4>Stud