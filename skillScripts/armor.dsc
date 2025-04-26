lightarmor:
    type: world
    events:
        on player damaged by entity:
            - define damage <context.final_damage>
            - if <context.entity.has_flag[blunted]>:
                #- narrate targets:<player> "They are blunted!"
                - define damage <[damage].div[2].round_up>
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
                - ratelimit <player> 10s
                - narrate "You have differing armor classes, no XP gained!"
            # gives players xp based on the amount of damage they reduced the attack by, light armor has a higher multiplier
            # due to it reducing damage less
            - if <player.has_flag[lightOn]>:
                #- narrate <[damageDifferential].mul[4]>
                - define skill <player.flag[skillLightArmor]>
                - run skillChecker def.xp:<[damageDifferential].mul[4]> def.skill:<[skill]> def.skillFlag:skillLightArmor
                - run xpBar def.skill:<[skill]>
                - define dodgeChance <[skill].get[1].mul[0.3].add[4.7]>
                - foreach <[playerGear]> as:item:
                    - if <[item].material.name> matches chainmail_*:
                        - define dodgeChance <[dodgeChance].sub[5]>
                        #- narrate "Since you have chainmail on, you dodge worse! Your dodge chance is now <[dodgeChance]>%!"
                        - foreach stop
                - if <util.random_chance[<[dodgeChance]>]>:
                    - playsound <player> sound:ENTITY_LLAMA_SPIT volume:0.1
                    - playeffect at:<player.location> effect:poof quantity:20 offset:1
                    - determine 0
            - if <player.has_flag[heavyOn]>:
                #- narrate <[damageDifferential].mul[3]>
                - define skill <player.flag[skillHeavyArmor]>
                - run skillChecker def.xp:<[damageDifferential].mul[3]> def.skill:<[skill]> def.skillFlag:skillHeavyArmor
                - define bluntChance <[skill].get[1].mul[0.3].add[4.7]>
                - if <util.random_chance[<[bluntChance]>]>:
                    - if <context.damager.location.find_players_within[2.5]> contains <player>:
                        - flag <context.entity> blunted expire:10s
                    - playsound <player> sound:BLOCK_ANVIL_PLACE volume:0.1
                    - playeffect at:<player.location> effect:ELECTRIC_SPARK quantity:20 offset:1 velocity:100
                    - determine 0
            - determine <[damage]>
        after player damaged by entity:
            # displays the appropriate xp bar, can't earn armor xp from taking damaged with mixed armor classes
            - if <player.has_flag[lightOn]> && <player.has_flag[heavyOn]>:
                - determine passively
            - else if <player.has_flag[lightOn]> && <player.has_flag[showXpLightArmor]>:
                - define skill <player.flag[skillLightArmor]>
                - run xpBar def.skill:<[skill]>
            - else if <player.has_flag[heavyOn]> && <player.has_flag[showXpHeavyArmor]>:
                - define skill <player.flag[skillHeavyArmor]>
                - run xpBar def.skill:<[skill]>
        on player clicks in player:
            #- narrate <context.inventory>
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
                - else if <[item]> matches studded_* && <[lLevel]> < 1:
                    - determine cancelled
                - else if <[item]> matches chainmail_* && <[lLevel]> < 1:
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
                - else if <[item]> matches studded_* && <[lLevel]> < 1:
                    - determine cancelled
                - else if <[item]> matches chainmail_* && <[lLevel]> < 1:
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
                - else if <[item]> matches studded_* && <[lLevel]> < 1:
                    - determine cancelled
                - else if <[item]> matches chainmail_* && <[lLevel]> < 1:
                    - determine cancelled
                - else if <[item]> matches leather_* && !<[item].has_display> && <[lLevel]> < 1:
                    - determine cancelled

armorLevelKey:
    # level key for armor
    type: data
    leather: 1
    iron: 10
    studded_leather: 10


