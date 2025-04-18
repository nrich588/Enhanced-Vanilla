# armor will be categorized by their base materials
#
# leather

leather_chest:
    type: item
    material: leather_chestplate
    mechanisms:
        attribute_modifiers:
            MOVEMENT_SPEED:
                1:
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.01
            ARMOR:
                1:
                    operation: add_number
                    amount: 3
        #hides: attributes
    display name: <&r>Leather Tunic
    recipes:
        1:
            type: shaped
            input:
            - leather|air|leather
            - leather|leather|leather
            - leather|leather|leather
    lore:
    - <&r><&4><&chr[26E8]> Light Armor
    - <&r><&3><&chr[2B06]> Level 1
leather_legs:
    type: item
    material: leather_leggings
    mechanisms:
        attribute_modifiers:
            MOVEMENT_SPEED:
                1:
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.01
            ARMOR:
                1:
                    operation: add_number
                    amount: 2
        #hides: attributes
    display name: <&r>Leather Chaps
    recipes:
        1:
            type: shaped
            input:
            - leather|leather|leather
            - leather|air|leather
            - leather|air|leather
    lore:
    - <&r><&4><&chr[26E8]> Light Armor
    - <&r><&3><&chr[2B06]> Level 1
leather_hat:
    type: item
    material: leather_helmet
    mechanisms:
        attribute_modifiers:
            MOVEMENT_SPEED:
                1:
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.01
            ARMOR:
                1:
                    operation: add_number
                    amount: 1
        #hides: attributes
    display name: <&r>Leather Coif
    recipes:
        1:
            type: shaped
            input:
            - leather|leather|leather
            - leather|air|leather
            - air|air|air
    lore:
    - <&r><&4><&chr[26E8]> Light Armor
    - <&r><&3><&chr[2B06]> Level 1
leather_shoes:
    type: item
    material: leather_boots
    mechanisms:
        attribute_modifiers:
            MOVEMENT_SPEED:
                1:
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.01
            ARMOR:
                1:
                    operation: add_number
                    amount: 1
        #hides: attributes
    display name: <&r>Leather Boots
    recipes:
        1:
            type: shaped
            input:
            - leather|air|leather
            - leather|air|leather
            - air|air|air
    lore:
    - <&r><&4><&chr[26E8]> Light Armor
    - <&r><&3><&chr[2B06]> Level 1
studded_leather_tunic:
    type: item
    material: leather_chestplate
    color: 118,84,59
    mechanisms:
        attribute_modifiers:
            MOVEMENT_SPEED:
                1:
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.01
            ARMOR:
                1:
                    operation: add_number
                    amount: 3.5
        #hides: attributes
    display name: <&r>Studded Vest
    lore:
    - <&r><&4><&chr[26E8]> Light Armor
    - <&r><&3><&chr[2B06]> Level 15
    recipes:
        1:
            type: shaped
            input:
            - iron_nugget|air|iron_nugget
            - leather|iron_nugget|leather
            - leather|iron_nugget|leather

studded_leather_pants:
    type: item
    material: leather_leggings
    color: 118,84,59
    mechanisms:
        attribute_modifiers:
            MOVEMENT_SPEED:
                1:
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.01
            ARMOR:
                1:
                    operation: add_number
                    amount: 2.5
        #hides: attributes
    display name: <&r>Studded Chaps
    lore:
    - <&r><&4><&chr[26E8]> Light Armor
    - <&r><&3><&chr[2B06]> Level 15
    recipes:
        1:
            type: shaped
            input:
            - iron_nugget|iron_nugget|iron_nugget
            - leather|air|leather
            - leather|air|leather

heavy_leather_boots:
    type: item
    material: leather_boots
    color: 118,84,59
    mechanisms:
        attribute_modifiers:
            MOVEMENT_SPEED:
                1:
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.01
            ARMOR:
                1:
                    operation: add_number
                    amount: 1.5
        #hides: attributes
    display name: <&r>Thick Leather Boots
    lore:
    - <&r><&4><&chr[26E8]> Light Armor
    - <&r><&3><&chr[2B06]> Level 15
    recipes:
        1:
            type: shaped
            input:
            - iron_nugget|air|iron_nugget
            - leather|air|leather
            - air|air|air
reinforced_leather_cap:
    type: item
    material: leather_helmet
    color: 118,84,59
    mechanisms:
        attribute_modifiers:
            MOVEMENT_SPEED:
                1:
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.01
            ARMOR:
                1:
                    operation: add_number
                    amount: 1.5
        #hides: attributes
    display name: <&r>Studded Coif
    lore:
    - <&r><&4><&chr[26E8]> Light Armor
    - <&r><&3><&chr[2B06]> Level 15
    recipes:
        1:
            type: shaped
            input:
            - iron_nugget|iron_nugget|iron_nugget
            - leather|air|leather
            - air|air|air
# chainmail

chainmail_body:
    type: item
    material: chainmail_chestplate
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    operation: add_number
                    amount: 5
    display name: <&r><&f>Chainbody
    recipes:
        1:
            type: shaped
            input:
            - iron_nugget|air|iron_nugget
            - iron_nugget|iron_nugget|iron_nugget
            - iron_nugget|iron_nugget|iron_nugget
    lore:
    - <&r><&4><&chr[26E8]> Light Armor
    - <&r><&3><&chr[2B06]> Level 10
chainmail_legs:
    type: item
    material: chainmail_leggings
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    operation: add_number
                    amount: 4
    display name: <&r><&f>Chainlegs
    recipes:
        1:
            type: shaped
            input:
            - iron_nugget|iron_nugget|iron_nugget
            - iron_nugget|air|iron_nugget
            - iron_nugget|air|iron_nugget
    lore:
    - <&r><&4><&chr[26E8]> Light Armor
    - <&r><&3><&chr[2B06]> Level 10


chainmail_helm:
    type: item
    material: chainmail_helmet
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    operation: add_number
                    amount: 2
    display name: <&r><&f>Chainmail Coif
    recipes:
        1:
            type: shaped
            input:
            - iron_nugget|iron_nugget|iron_nugget
            - iron_nugget|air|iron_nugget
            - air|air|air
    lore:
    - <&r><&4><&chr[26E8]> Light Armor
    - <&r><&3><&chr[2B06]> Level 10
chainboots:
    type: item
    material: chainmail_boots
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    operation: add_number
                    amount: 1
    display name: <&r><&f>Chainboots
    recipes:
        1:
            type: shaped
            input:
            - iron_nugget|air|iron_nugget
            - iron_nugget|air|iron_nugget
            - air|air|air
    lore:
    - <&r><&4><&chr[26E8]> Light Armor
    - <&r><&3><&chr[2B06]> Level 10


superior_chainmail_body:
    type: item
    material: chainmail_chestplate
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    operation: add_number
                    amount: 6
    display name: <&r><&f>Superior Chainbody
    recipes:
        1:
            type: shaped
            input:
            - iron_ingot|air|iron_ingot
            - iron_nugget|iron_ingot|iron_nugget
            - iron_nugget|iron_ingot|iron_nugget
    lore:
    - Light Armor
    - Level 25
superior_chainmail_leggings:
    type: item
    material: chainmail_leggings
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    operation: add_number
                    amount: 5
    display name: <&r><&f>Superior Chainlegs
    recipes:
        1:
            type: shaped
            input:
            - iron_nugget|iron_ingot|iron_nugget
            - iron_ingot|air|iron_ingot
            - iron_nugget|air|iron_nugget
    lore:
    - <&r><&4><&chr[26E8]> Light Armor
    - <&r><&3><&chr[2B06]> Level 25

superior_chainmail_helm:
    type: item
    material: chainmail_helmet
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    operation: add_number
                    amount: 2.5
    display name: <&r><&f>Superior Chainmail Coif
    recipes:
        1:
            type: shaped
            input:
            - iron_nugget|iron_nugget|iron_nugget
            - iron_ingot|air|iron_ingot
            - air|air|air
    lore:
    - <&r><&4><&chr[26E8]> Light Armor
    - <&r><&3><&chr[2B06]> Level 25
superior_chainmail_boots:
    type: item
    material: chainmail_boots
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    operation: add_number
                    amount: 1.5
    display name: <&r><&f>Superior Chainboots
    recipes:
        1:
            type: shaped
            input:
            - iron_nugget|air|iron_nugget
            - iron_ingot|air|iron_ingot
            - air|air|air
    lore:
    - <&r><&4><&chr[26E8]> Light Armor
    - <&r><&3><&chr[2B06]> Level 25
# iron

iron_body:
    type: item
    material: iron_chestplate
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    operation: add_number
                    amount: 6
    display name: <&r><&f>Iron Platebody
    recipes:
        1:
            type: shaped
            input:
            - iron_ingot|air|iron_ingot
            - iron_ingot|iron_ingot|iron_ingot
            - iron_ingot|iron_ingot|iron_ingot
    lore:
    - <&r><&4><&chr[26E8]> Heavy Armor
    - <&r><&3><&chr[2B06]> Level 1
iron_legs:
    type: item
    material: iron_leggings
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    operation: add_number
                    amount: 5
    display name: <&r><&f>Iron Platelegs
    recipes:
        1:
            type: shaped
            input:
            - iron_ingot|iron_ingot|iron_ingot
            - iron_ingot|air|iron_ingot
            - iron_ingot|air|iron_ingot
    lore:
    - <&r><&4><&chr[26E8]> Heavy Armor
    - <&r><&3><&chr[2B06]> Level 1
iron_helm:
    type: item
    material: iron_helmet
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    operation: add_number
                    amount: 2
    display name: <&r><&f>Iron Helmet
    recipes:
        1:
            type: shaped
            input:
            - iron_ingot|iron_ingot|iron_ingot
            - iron_ingot|air|iron_ingot
            - air|air|air
    lore:
    - <&r><&4><&chr[26E8]> Heavy Armor
    - <&r><&3><&chr[2B06]> Level 1
iron_greaves:
    type: item
    material: iron_boots
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    operation: add_number
                    amount: 2

    display name: <&r><&f>Iron Greaves
    recipes:
        1:
            type: shaped
            input:
            - iron_ingot|air|iron_ingot
            - iron_ingot|air|iron_ingot
            - air|air|air
    lore:
    - <&r><&4>Heavy Armor
    - <&r><&3><&chr[2B06]> Level 1

reinforced_iron_body:
    type: item
    material: iron_chestplate
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    operation: add_number
                    amount: 6.5
    display name: <&r><&f>Iron Platebody
    recipes:
        1:
            type: shaped
            input:
            - iron_ingot|air|iron_ingot
            - iron_ingot|iron_ingot|iron_ingot
            - iron_ingot|iron_ingot|iron_ingot
    lore:
    - <&r><&4><&chr[26E8]> Heavy Armor
    - <&r><&3><&chr[2B06]> Level 10
reinforced_iron_legs:
    type: item
    material: iron_leggings
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    operation: add_number
                    amount: 5.5
    display name: <&r><&f>Iron Platelegs
    recipes:
        1:
            type: shaped
            input:
            - iron_alloy_ingot|iron_alloy_ingot|iron_alloy_ingot
            - iron_alloy_ingot|air|iron_alloy_ingot
            - iron_alloy_ingot|air|iron_alloy_ingot
    lore:
    - <&r><&4><&chr[26E8]> Heavy Armor
    - <&r><&3><&chr[2B06]> Level 10
reinforced_iron_helm:
    type: item
    material: iron_helmet
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    operation: add_number
                    amount: 2.5
    display name: <&r><&f>Reinforced Iron Helmet
    recipes:
        1:
            type: shaped
            input:
            - iron_alloy_ingot|iron_alloy_ingot|iron_alloy_ingot
            - iron_alloy_ingot|air|iron_alloy_ingot
            - air|air|air
    lore:
    - <&r><&4><&chr[26E8]> Heavy Armor
    - <&r><&3><&chr[2B06]> Level 10
reinforced_iron_greaves:
    type: item
    material: iron_boots
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    operation: add_number
                    amount: 2.5
    display name: <&r><&f>Reinforced Iron Greaves
    recipes:
        1:
            type: shaped
            input:
            - iron_alloy_ingot|air|iron_alloy_ingot
            - iron_alloy_ingot|air|iron_alloy_ingot
            - air|air|air
    lore:
    - <&r><&4><&chr[26E8]> Heavy Armor
    - <&r><&3><&chr[2694]>  Level 10
# gold

# diamond

# netherite