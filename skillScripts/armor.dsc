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
                    - narrate "asdasdas"
                    - flag player heavyOn
                - if <[item].material.name> matches leather_* || <[item].material.name> matches chainmail_*:
                    - narrate "AAA A"
                    - flag player lightOn
            - if <player.has_flag[lightOn]> && <player.has_flag[heavyOn]>:
                - narrate "You have differing armor classes, no XP gained!"
            - if <player.has_flag[lightOn]>:
                - narrate <[damageDifferential].mul[4]>
                - define skill <player.flag[skillLightArmor]>
                - run skillChecker def.xp:<[damageDifferential].mul[4]> def.skill:<[skill]> def.skillFlag:skillLightArmor
            - if <player.has_flag[heavyOn]>:
                - narrate <[damageDifferential].mul[3]>
                - define skill <player.flag[skillHeavyArmor]>
                - run skillChecker def.xp:<[damageDifferential].mul[3]> def.skill:<[skill]> def.skillFlag:skillHeavyArmor
        after player damaged by entity:
            - if <player.has_flag[lightOn]> && <player.has_flag[heavyOn]>:
                - determine passively
            - else if <player.has_flag[lightOn]>:
                - define skill <player.flag[skillLightArmor]>
                - run xpBar def.skill:<[skill]>
            - else if <player.has_flag[heavyOn]>:
                - define skill <player.flag[skillHeavyArmor]>
                - run xpBar def.skill:<[skill]>
        on player clicks in inventory:
            - narrate <context.click>
            - define heavyArmor <list[netherite_*|iron_*|golden_*|diamond_*]>
            - define armorSlot <list[37|38|39|40]>
            - define hLevel <player.flag[skillHeavyArmor].get[1]>
            - define lLevel <player.flag[skillLightArmor].get[1]>
            - define slot <context.slot>
            - define item <context.cursor_item>
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
    type: data
    leather: 1
    iron: 10
    studded_leather: 10


