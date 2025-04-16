lightarmor:
    type: world
    events:
        on player damaged by entity:
            - define playerGear:<player.equipment>
            - flag player heavyOn:!
            - flag player lightOn:!
            - define damageDifferential:<context.damage.sub[<context.final_damage>].round_up>
            #- narrate <[playerGear]>
            - foreach <[playerGear]> as:item:
                #- narrate <[item].material.name>
                - if <[item].material.name> matches netherite_* || <[item].material.name> matches iron_* || <[item].material.name> matches gold_* <[item].material.name> matches diamond_*:
                    - flag player heavyOn
                - if <[item].material.name> matches leather_* || <[item].material.name> matches chainmail_*:
                    - flag player lightOn
            - if <player.has_flag[lightOn]> && <player.has_flag[heavyOn]>:
                - narrate "You have differing armor classes, no XP gained!"
            # gives players xp based on the amount of damage they reduced the attack by, light armor has a higher multiplier
            # due to it reducing damage less
            - if <player.has_flag[lightOn]>:
                - narrate <[damageDifferential].mul[4]>
                - define skill <player.flag[skillLightArmor]>
                - run skillChecker def.xp:<[damageDifferential].mul[4]> def.skill:<[skill]> def.skillFlag:skillLightArmor
            - if <player.has_flag[heavyOn]>:
                - narrate <[damageDifferential].mul[3]>
                - define skill <player.flag[skillHeavyArmor]>
                - run skillChecker def.xp:<[damageDifferential].mul[3]> def.skill:<[skill]> def.skillFlag:skillHeavyArmor
        after player damaged by entity:
            # displays the appropriate xp bar, can't earn armor xp from taking damaged with mixed armor classes
            - if <player.has_flag[lightOn]> && <player.has_flag[heavyOn]>:
                - determine passively
            - else if <player.has_flag[lightOn]>:
                - define skill <player.flag[skillLightArmor]>
                - run xpBar def.skill:<[skill]>
            - else if <player.has_flag[heavyOn]>:
                - define skill <player.flag[skillHeavyArmor]>
                - run xpBar def.skill:<[skill]>
        on player clicks in player:
            - narrate <context.inventory>
            - define heavyArmor <list[netherite_*|iron_*|golden_*|diamond_*]>
            - define armorSlot <list[37|38|39|40]>
            - define hLevel <player.flag[skillHeavyArmor].get[1]>
            - define lLevel <player.flag[skillLightArmor].get[1]>
            - define slot <context.slot>
            - define item <context.cursor_item>
            # this checks dragging armor into an armor slot
            - if <[slot]> in <[armorSlot]>:
                - if <[item]> matches iron_* && <[hLevel]> < 1:
                    - determine cancelled
                - else if <[item]> matches golden_* && <[hLevel]> < 10:
                    - determine cancelled
                - else if <[item]> matches netherite_* && <[hLevel]> < 50:
                    - determine cancelled
                - else if <[item]> matches diamond_* && <[hLevel]> < 30:
                    - determine cancelled
                - else if <[item]> matches studded_* && <[lLevel]> < 20:
                    - determine cancelled
                - else if <[item]> matches chainmail_* && <[lLevel]> < 10:
                    - determine cancelled
                - else if <[item]> matches leather_* && <[lLevel]> < 1:
                    - determine cancelled
        on player shift_left clicks in inventory:
            - define item <context.item>
            - define hLevel <player.flag[skillHeavyArmor].get[1]>
            - define lLevel <player.flag[skillLightArmor].get[1]>
            # this checks for shift clicks to equip an item as armor
            - if <[item]> matches <list[*leggings|*helm|*chestplate|*boots|*tunic|*pants|*cap]>:
                - if <[item]> matches iron_* && <[hLevel]> < 1:
                    - determine cancelled
                - else if <[item]> matches golden_* && <[hLevel]> < 10:
                    - determine cancelled
                - else if <[item]> matches netherite_* && <[hLevel]> < 50:
                    - determine cancelled
                - else if <[item]> matches diamond_* && <[hLevel]> < 30:
                    - determine cancelled
                - else if <[item]> matches studded_* && <[lLevel]> < 20:
                    - determine cancelled
                - else if <[item]> matches chainmail_* && <[lLevel]> < 10:
                    - determine cancelled
                - else if <[item]> matches leather_* && !<[item].has_display> && <[lLevel]> < 1:
                    - determine cancelled
        on player right clicks block using:either_hand:
            - define item <context.item>
            - define hLevel <player.flag[skillHeavyArmor].get[1]>
            - define lLevel <player.flag[skillLightArmor].get[1]>
            # this checks if a player tries to right click with an armor piece in hand to equip it (no idea why that is a thing)
            - if <[item]> matches <list[*leggings|*helm|*chestplate|*boots|*tunic|*pants|*cap]>:
                - if <[item]> matches iron_* && <[hLevel]> < 1:
                    - determine cancelled
                - else if <[item]> matches golden_* && <[hLevel]> < 10:
                    - determine cancelled
                - else if <[item]> matches netherite_* && <[hLevel]> < 50:
                    - determine cancelled
                - else if <[item]> matches diamond_* && <[hLevel]> < 30:
                    - determine cancelled
                - else if <[item]> matches studded_* && <[lLevel]> < 20:
                    - determine cancelled
                - else if <[item]> matches chainmail_* && <[lLevel]> < 10:
                    - determine cancelled
                - else if <[item]> matches leather_* && !<[item].has_display> && <[lLevel]> < 1:
                    - determine cancelled

armorLevelKey:
    # level key for armor
    type: data
    leather: 1
    iron: 10
    studded_leather: 10


