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
                    key: armor_leather_speed
                    slot: chest
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.02
            ARMOR:
                1:
                    key: armor_leather_chest
                    slot: chest
                    operation: add_number
                    amount: 3
        hides: all
        #hides: attributes
    display name: <&r><&7>Leather Tunic
    recipes:
        1:
            type: shaped
            input:
            - leather|air|leather
            - leather|leather|leather
            - leather|leather|leather
    lore:
    - <&f><&8><&m><&sp.repeat[24]>
    - <&r><&b>⛨ Light Armor
    - <&r><&7>⭐ Level 1
    - <&f><&8><&m><&sp.repeat[24]>
    - <&f><&a>+2% Speed
    - <&f><&a>+3 Armor
leather_legs:
    type: item
    material: leather_leggings
    mechanisms:
        hides: all
        attribute_modifiers:
            MOVEMENT_SPEED:
                1:
                    key: armor_leather_speed
                    slot: legs
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.02
            ARMOR:
                1:
                    key: armor_leather_legs
                    slot: legs
                    operation: add_number
                    amount: 2
        #hides: attributes
    display name: <&r><&7>Leather Chaps
    recipes:
        1:
            type: shaped
            input:
            - leather|leather|leather
            - leather|air|leather
            - leather|air|leather
    lore:
    - <&f><&8><&m><&sp.repeat[24]>
    - <&r><&b>⛨ Light Armor
    - <&r><&7>⭐ Level 1
    - <&f><&8><&m><&sp.repeat[24]>
    - <&f><&a>+2% Speed
    - <&f><&a>+2 Armor
leather_hat:
    type: item
    material: leather_helmet
    mechanisms:
        hides: all
        attribute_modifiers:
            MOVEMENT_SPEED:
                1:
                    key: armor_leather_speed
                    slot: head
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.02
            ARMOR:
                1:
                    key: armor_leather_head
                    slot: head
                    operation: add_number
                    amount: 1
        #hides: attributes
    display name: <&r><&7>Leather Coif
    recipes:
        1:
            type: shaped
            input:
            - leather|leather|leather
            - leather|air|leather
            - air|air|air
    lore:
    - <&f><&8><&m><&sp.repeat[24]>
    - <&r><&b>⛨ Light Armor
    - <&r><&7>⭐ Level 1
    - <&f><&8><&m><&sp.repeat[24]>
    - <&f><&a>+2% Speed
    - <&f><&a>+1 Armor
leather_shoes:
    type: item
    material: leather_boots
    mechanisms:
        hides: all
        attribute_modifiers:
            MOVEMENT_SPEED:
                1:
                    slot: feet
                    key: armor_leather_speed
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.02
            ARMOR:
                1:
                    key: armor_leather_boots
                    slot: feet
                    operation: add_number
                    amount: 1
        #hides: attributes
    display name: <&r><&7>Leather Boots
    recipes:
        1:
            type: shaped
            input:
            - leather|air|leather
            - leather|air|leather
            - air|air|air
    lore:
    - <&f><&8><&m><&sp.repeat[24]>
    - <&r><&b>⛨ Light Armor
    - <&r><&7>⭐ Level 1
    - <&f><&8><&m><&sp.repeat[24]>
    - <&f><&a>+2% Speed
    - <&f><&a>+1 Armor
cured_leather_tunic:
    type: item
    material: leather_chestplate
    flags:
        bonusDurability: <list[80|80]>
    mechanisms:
        color: 94,72,55
        attribute_modifiers:
            MOVEMENT_SPEED:
                1:
                    key: armor_leather_speed
                    slot: chest
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.02
            ARMOR:
                1:
                    key: armor_studded_chest
                    slot: chest
                    operation: add_number
                    amount: 3.5
        trim:
            material: copper
            pattern: rib
        hides: all
        #hides: attributes
    display name: <&r><&a>Cured Leather Vest
    lore:
    - <&f><&8><&m><&sp.repeat[24]>
    - <&r><&b>⛨ Light Armor
    - <&r><&2>⭐ Level 15
    - <&f><&8><&m><&sp.repeat[24]>
    - <&f><&a>+2% Speed
    - <&f><&a>+3.5 Armor
    recipes:
        1:
            type: shaped
            input:
            - bone_meal|bone_meal|bone_meal
            - bone_meal|leather_chest|bone_meal
            - bone_meal|bone_meal|bone_meal

cured_leather_pants:
    type: item
    flags:
        bonusDurability: <list[80|80]>
    material: leather_leggings
    mechanisms:
        color: 94,72,55
        attribute_modifiers:
            MOVEMENT_SPEED:
                1:
                    key: armor_leather_speed
                    slot: legs
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.02
            ARMOR:
                1:
                    key: armor_studded_legs
                    slot: legs
                    operation: add_number
                    amount: 2.5
        trim:
            material: copper
            pattern: rib
        hides: all
    display name: <&r><&a>Cured Leather Chaps
    lore:
    - <&f><&8><&m><&sp.repeat[24]>
    - <&r><&b>⛨ Light Armor
    - <&r><&2>⭐ Level 15
    - <&f><&8><&m><&sp.repeat[24]>
    - <&f><&a>+2% Speed
    - <&f><&a>+2.5 Armor
    recipes:
        1:
            type: shaped
            input:
            - bone_meal|bone_meal|bone_meal
            - bone_meal|leather_legs|bone_meal
            - bone_meal|air|bone_meal

cured_leather_boots:
    type: item
    material: leather_boots
    flags:
        bonusDurability: <list[80|80]>
    mechanisms:
        color: 94,72,55
        attribute_modifiers:
            MOVEMENT_SPEED:
                1:
                    key: armor_leather_speed
                    slot: feet
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.02
            ARMOR:
                1:
                    key: armor_studded_boots
                    slot: feet
                    operation: add_number
                    amount: 1.5
        trim:
            material: copper
            pattern: rib
        hides: all
    display name: <&r><&a>Cured Leather Boots
    lore:
    - <&f><&8><&m><&sp.repeat[24]>
    - <&r><&b>⛨ Light Armor
    - <&r><&2>⭐ Level 15
    - <&f><&8><&m><&sp.repeat[24]>
    - <&f><&a>+2% Speed
    - <&f><&a>+1.5 Armor
    recipes:
        1:
            type: shaped
            input:
            - air|air|air
            - bone_meal|leather_shoes|bone_meal
            - bone_meal|air|bone_meal
hardened_leather_cap:
    type: item
    material: leather_helmet
    flags:
        bonusDurability: <list[80|80]>
    mechanisms:
        color: 94,72,55
        attribute_modifiers:
            MOVEMENT_SPEED:
                1:
                    key: armor_leather_speed
                    slot: head
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.02
            ARMOR:
                1:
                    key: armor_studded_head
                    slot: head
                    operation: add_number
                    amount: 1.5
        trim:
            material: copper
            pattern: rib
        hides: all
    display name: <&r><&a>Hardened Coif
    lore:
    - <&f><&8><&m><&sp.repeat[24]>
    - <&r><&b>⛨ Light Armor
    - <&r><&2>⭐ Level 15
    - <&f><&8><&m><&sp.repeat[24]>
    - <&f><&a>+2% Speed
    - <&f><&a>+1.5 Armor
    recipes:
        1:
            type: shaped
            input:
            - air|air|air
            - bone_meal|bone_meal|bone_meal
            - bone_meal|leather_hat|bone_meal
studded_leather_tunic:
    type: item
    material: leather_chestplate
    flags:
        bonusDurability: <list[120|120]>
    mechanisms:
        color: 118,84,59
        attribute_modifiers:
            MOVEMENT_SPEED:
                1:
                    key: armor_leather_speed
                    slot: chest
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.02
            ARMOR:
                1:
                    key: armor_studded_chest
                    slot: chest
                    operation: add_number
                    amount: 4
        trim:
            material: iron
            pattern: raiser
        hides: all
        #hides: attributes
    display name: <&r><&9>Studded Vest
    lore:
    - <&f><&8><&m><&sp.repeat[24]>
    - <&r><&b>⛨ Light Armor
    - <&r><&9>⭐ Level 25
    - <&f><&8><&m><&sp.repeat[24]>
    - <&f><&a>+2% Speed
    - <&f><&a>+4 Armor
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
    flags:
        bonusDurability: <list[120|120]>
    mechanisms:
        color: 118,84,59
        attribute_modifiers:
            MOVEMENT_SPEED:
                1:
                    key: armor_leather_speed
                    slot: legs
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.02
            ARMOR:
                1:
                    key: armor_studded_legs
                    slot: legs
                    operation: add_number
                    amount: 3
        trim:
            material: iron
            pattern: raiser
        hides: all
    display name: <&r><&9>Studded Chaps
    lore:
    - <&f><&8><&m><&sp.repeat[24]>
    - <&r><&b>⛨ Light Armor
    - <&r><&9>⭐ Level 25
    - <&f><&8><&m><&sp.repeat[24]>
    - <&f><&a>+2% Speed
    - <&f><&a>+3 Armor
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
    flags:
        bonusDurability: <list[120|120]>
    mechanisms:
        color: 118,84,59
        attribute_modifiers:
            MOVEMENT_SPEED:
                1:
                    key: armor_leather_speed
                    slot: feet
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.02
            ARMOR:
                1:
                    key: armor_studded_boots
                    slot: feet
                    operation: add_number
                    amount: 2
        trim:
            material: iron
            pattern: raiser
        hides: all
    display name: <&r><&9>Thick Leather Boots
    lore:
    - <&f><&8><&m><&sp.repeat[24]>
    - <&r><&b>⛨ Light Armor
    - <&r><&9>⭐ Level 25
    - <&f><&8><&m><&sp.repeat[24]>
    - <&f><&a>+2% Speed
    - <&f><&a>+2 Armor
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
    flags:
        bonusDurability: <list[120|120]>
    mechanisms:
        color: 118,84,59
        attribute_modifiers:
            MOVEMENT_SPEED:
                1:
                    key: armor_leather_speed
                    slot: head
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.02
            ARMOR:
                1:
                    key: armor_studded_head
                    slot: head
                    operation: add_number
                    amount: 2
        trim:
            material: iron
            pattern: raiser
        hides: all
    display name: <&r><&9>Studded Coif
    lore:
    - <&f><&8><&m><&sp.repeat[24]>
    - <&r><&b>⛨ Light Armor
    - <&r><&9>⭐ Level 25
    - <&f><&8><&m><&sp.repeat[24]>
    - <&f><&a>+2% Speed
    - <&f><&a>+2 Armor
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
                    key: armor_chain_body
                    slot: chest
                    operation: add_number
                    amount: 5
            MOVEMENT_SPEED:
                1:
                    key: armor_chain_speed
                    slot: chest
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.01
        hides: all
    display name: <&r><&a>Chainbody
    recipes:
        1:
            type: shaped
            input:
            - iron_nugget|air|iron_nugget
            - iron_nugget|iron_nugget|iron_nugget
            - iron_nugget|iron_nugget|iron_nugget
    lore:
    - <&f><&8><&m><&sp.repeat[24]>
    - <&r><&b>⛨ Light Armor
    - <&r><&2>⭐ Level 10
    - <&f><&8><&m><&sp.repeat[24]>
    - <&f><&a>+1% Speed
    - <&f><&a>+5 Armor
chainmail_legs:
    type: item
    material: chainmail_leggings
    mechanisms:
        hides: all
        attribute_modifiers:
            armor:
                1:
                    key: armor_chain_legs
                    slot: legs
                    operation: add_number
                    amount: 4
            MOVEMENT_SPEED:
                1:
                    key: armor_chain_speed
                    slot: legs
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.01
    display name: <&r><&a>Chainlegs
    recipes:
        1:
            type: shaped
            input:
            - iron_nugget|iron_nugget|iron_nugget
            - iron_nugget|air|iron_nugget
            - iron_nugget|air|iron_nugget
    lore:
    - <&f><&8><&m><&sp.repeat[24]>
    - <&r><&b>⛨ Light Armor
    - <&r><&2>⭐ Level 10
    - <&f><&8><&m><&sp.repeat[24]>
    - <&f><&a>+1% Speed
    - <&f><&a>+4 Armor


chainmail_helm:
    type: item
    material: chainmail_helmet
    mechanisms:
        hides: all
        attribute_modifiers:
            armor:
                1:
                    key: armor_chain_hat
                    slot: head
                    operation: add_number
                    amount: 2
            MOVEMENT_SPEED:
                1:
                    key: armor_chain_speed
                    slot: head
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.01
    display name: <&r><&a>Chainmail Coif
    recipes:
        1:
            type: shaped
            input:
            - iron_nugget|iron_nugget|iron_nugget
            - iron_nugget|air|iron_nugget
            - air|air|air
    lore:
    - <&f><&8><&m><&sp.repeat[24]>
    - <&r><&b>⛨ Light Armor
    - <&r><&2>⭐ Level 10
    - <&f><&8><&m><&sp.repeat[24]>
    - <&f><&a>+1% Speed
    - <&f><&a>+2 Armor
chainboots:
    type: item
    material: chainmail_boots
    mechanisms:
        hides: all
        attribute_modifiers:
            armor:
                1:
                    key: armor_chain_boots
                    slot: feet
                    operation: add_number
                    amount: 1
            MOVEMENT_SPEED:
                1:
                    key: armor_chain_speed
                    slot: feet
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.01
    display name: <&r><&a>Chainboots
    recipes:
        1:
            type: shaped
            input:
            - iron_nugget|air|iron_nugget
            - iron_nugget|air|iron_nugget
            - air|air|air
    lore:
    - <&f><&8><&m><&sp.repeat[24]>
    - <&r><&b>⛨ Light Armor
    - <&r><&2>⭐ Level 10
    - <&f><&8><&m><&sp.repeat[24]>
    - <&f><&a>+1% Speed
    - <&f><&a>+1.5 Armor

sturdy_chainmail_body:
    type: item
    material: chainmail_chestplate
    flags:
        bonusDurability: <list[120|120]>
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    key: armor_chain_body
                    slot: chest
                    operation: add_number
                    amount: 5.5
            MOVEMENT_SPEED:
                1:
                    key: armor_chain_speed
                    slot: chest
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.01
        trim:
            material: quartz
            pattern: raiser
        hides: all
    display name: <&r><&9>Sturdy Chainbody
    recipes:
        1:
            type: shaped
            input:
            - iron_nugget|air|iron_nugget
            - iron_nugget|iron_nugget|iron_nugget
            - iron_nugget|iron_nugget|iron_nugget
    lore:
    - <&f><&8><&m><&sp.repeat[24]>
    - <&r><&b>⛨ Light Armor
    - <&r><&9>⭐ Level 20
    - <&f><&8><&m><&sp.repeat[24]>
    - <&f><&a>+1% Speed
    - <&f><&a>+6 Armor
sturdy_chainmail_legs:
    type: item
    material: chainmail_leggings
    flags:
        bonusDurability: <list[120|120]>
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    key: armor_chain_legs
                    slot: legs
                    operation: add_number
                    amount: 4.5
            MOVEMENT_SPEED:
                1:
                    key: armor_chain_speed
                    slot: legs
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.01
        trim:
            material: quartz
            pattern: raiser
        hides: all
    display name: <&r><&9>Sturdy Chainlegs
    recipes:
        1:
            type: shaped
            input:
            - iron_nugget|iron_nugget|iron_nugget
            - iron_nugget|air|iron_nugget
            - iron_nugget|air|iron_nugget
    lore:
    - <&f><&8><&m><&sp.repeat[24]>
    - <&r><&b>⛨ Light Armor
    - <&r><&9>⭐ Level 20
    - <&f><&8><&m><&sp.repeat[24]>
    - <&f><&a>+1% Speed
    - <&f><&a>+5.5 Armor
sturdy_chainmail_helm:
    type: item
    material: chainmail_helmet
    flags:
        bonusDurability: <list[120|120]>
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    key: armor_chain_hat
                    slot: head
                    operation: add_number
                    amount: 2.5
            MOVEMENT_SPEED:
                1:
                    key: armor_chain_speed
                    slot: head
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.01
        trim:
            material: quartz
            pattern: raiser
        hides: all
    display name: <&r><&9>Sturdy Chainmail Coif
    recipes:
        1:
            type: shaped
            input:
            - iron_nugget|iron_nugget|iron_nugget
            - iron_nugget|air|iron_nugget
            - air|air|air
    lore:
    - <&f><&8><&m><&sp.repeat[24]>
    - <&r><&b>⛨ Light Armor
    - <&r><&9>⭐ Level 20
    - <&f><&8><&m><&sp.repeat[24]>
    - <&f><&a>+1% Speed
    - <&f><&a>+2.5 Armor
sturdy_chainboots:
    type: item
    material: chainmail_boots
    flags:
        bonusDurability: <list[120|120]>
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    key: armor_chain_boots
                    slot: feet
                    operation: add_number
                    amount: 2
            MOVEMENT_SPEED:
                1:
                    key: armor_chain_speed
                    slot: feet
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.01
        trim:
            material: quartz
            pattern: raiser
        hides: all
    display name: <&r><&9>Sturdy Chainboots
    recipes:
        1:
            type: shaped
            input:
            - iron_nugget|air|iron_nugget
            - iron_nugget|air|iron_nugget
            - air|air|air
    lore:
    - <&f><&8><&m><&sp.repeat[24]>
    - <&r><&b>⛨ Light Armor
    - <&r><&9>⭐ Level 20
    - <&f><&8><&m><&sp.repeat[24]>
    - <&f><&a>+1% Speed
    - <&f><&a>+2 Armor
diamond_chainmail_body:
    type: item
    material: chainmail_chestplate
    flags:
        bonusDurability: <list[260|260]>
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    key: armor_chain_body
                    slot: chest
                    operation: add_number
                    amount: 7
            MOVEMENT_SPEED:
                1:
                    key: armor_chain_speed
                    slot: chest
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.01
        trim:
            material: diamond
            pattern: raiser
        hides: all
    display name: <&r><&d>Diamond Chainbody
    recipes:
        1:
            type: shaped
            input:
            - diamond|air|diamond
            - iron_nugget|diamond|iron_nugget
            - iron_nugget|diamond|iron_nugget
    lore:
    - <&f><&8><&m><&sp.repeat[24]>
    - <&r><&b>⛨ Light Armor
    - <&r><&d>⭐ Level 30
    - <&f><&8><&m><&sp.repeat[24]>
    - <&f><&a>+1% Speed
    - <&f><&a>+7 Armor
diamond_chainmail_legs:
    type: item
    material: chainmail_leggings
    flags:
        bonusDurability: <list[260|260]>
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    key: armor_chain_body
                    slot: legs
                    operation: add_number
                    amount: 6
            MOVEMENT_SPEED:
                1:
                    key: armor_chain_speed
                    slot: legs
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.01
        trim:
            material: diamond
            pattern: raiser
        hides: all
    display name: <&r><&d>Diamond Chainlegs
    recipes:
        1:
            type: shaped
            input:
            - diamond|iron_nugget|diamond
            - iron_nugget|air|iron_nugget
            - diamond|air|diamond
    lore:
    - <&f><&8><&m><&sp.repeat[24]>
    - <&r><&b>⛨ Light Armor
    - <&r><&d>⭐ Level 30
    - <&f><&8><&m><&sp.repeat[24]>
    - <&f><&a>+1% Speed
    - <&f><&a>+6 Armor
diamond_chainmail_helm:
    type: item
    material: chainmail_helmet
    flags:
        bonusDurability: <list[260|260]>
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    key: armor_chain_body
                    slot: head
                    operation: add_number
                    amount: 2.5
            MOVEMENT_SPEED:
                1:
                    key: armor_chain_speed
                    slot: head
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.01
        trim:
            material: diamond
            pattern: raiser
        hides: all
    display name: <&r><&d>Diamond Chainhelm
    recipes:
        1:
            type: shaped
            input:
            - diamond|iron_nugget|diamond
            - iron_nugget|air|iron_nugget
            - air|air|air
    lore:
    - <&f><&8><&m><&sp.repeat[24]>
    - <&r><&b>⛨ Light Armor
    - <&r><&d>⭐ Level 30
    - <&f><&8><&m><&sp.repeat[24]>
    - <&f><&a>+1% Speed
    - <&f><&a>+2.5 Armor
diamond_chainmail_boots:
    type: item
    material: chainmail_boots
    flags:
        bonusDurability: <list[260|260]>
    mechanisms:
        attribute_modifiers:
            armor:
                1:
                    key: armor_chain_body
                    slot: feet
                    operation: add_number
                    amount: 2.5
            MOVEMENT_SPEED:
                1:
                    key: armor_chain_speed
                    slot: feet
                    operation: MULTIPLY_SCALAR_1
                    amount: 0.01
        trim:
            material: diamond
            pattern: raiser
        hides: all
    display name: <&r><&d>Diamond Chainboots
    recipes:
        1:
            type: shaped
            input:
            - diamond|air|diamond
            - iron_nugget|air|iron_nugget
            - air|air|air
    lore:
    - <&f><&8><&m><&sp.repeat[24]>
    - <&r><&b>⛨ Light Armor
    - <&r><&d>⭐ Level 30
    - <&f><&8><&m><&sp.repeat[24]>
    - <&f><&a>+1% Speed
    - <&f><&a>+2.5 Armor








armor_events:
    type: world
    events:
        on player item takes damage:
            - if <context.item.has_flag[bonusDurability]> && <context.item.flag[bonusDurability].get[1]> > 0:
                - narrate A
                - inventory flag slot:<context.slot> bonusDurability[1]:--
                - determine cancelled