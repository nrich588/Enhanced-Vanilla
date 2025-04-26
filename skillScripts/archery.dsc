archerySkill:
    type: world
    events:

        on entity damaged by player:
            - if <context.projectile.is_projectile||null>:
                # this determines if an archery weapon damaged the entity
                #- narrate "<context.projectile>"
                - define damageMod 0
                - narrate "Base:<context.damage> Final:<context.final_damage>"
                - define mainHand <player.item_in_hand>
                - define offHand <player.item_in_offhand>
                - if <[offHand]> matches *bow && <[mainHand]> matches *bow:
                    - define weapon <[mainHand]>
                    - inject bowType
                - else if <[mainHand]> matches *bow:
                    - define weapon <[mainHand]>
                    - inject bowType
                - else if <[offHand]> matches *bow:
                    - define weapon <[offHand]>
                    - inject bowType
                - define finalDamage <context.final_damage.add[<[damageMod]>]>
                - narrate "Final damage being dealt is <[finalDamage]> from <context.damage>."
                - determine <[finalDamage]>
        on entity killed by player:
            - define xp:<script[combatXp].data_key[<context.entity.name>]>
            - if <context.projectile> matches *arrow:
                - define skill <player.flag[skillArchery]>
                - run skillChecker def.xp:<[xp]> def.skill:<[skill]> def.skillFlag:skillArchery
        after player kills entity:
            - if <context.projectile> matches *arrow:
                - define skill <player.flag[skillArchery]>
                - run xpBar def.skill:<[skill]>
        on player scrolls their hotbar item:*bow:
            - if <player.inventory.slot[<context.new_slot>].has_display>:
                - if <player.flag[skillArchery].get[1]> < <script[bowMaterial].data_key[<player.inventory.slot[<context.new_slot>].script.name>]>:
                    - narrate "You do not have high enough Archery skill to equip <player.inventory.slot[<context.new_slot>].display>!"
                    - determine cancelled passively
            - else:
                - if <player.flag[skillArchery].get[1]> < <script[bowMaterial].data_key[<player.inventory.slot[<context.new_slot>].material.name>]>:
                    - narrate "You do not have high enough Archery skill to equip <player.inventory.slot[<context.new_slot>].material.name>!"
                    - determine cancelled passively

       # on player shoots item:
           # - narrate <context.projectile.velocity>

bowType:
    type: task
    definitions: weapon
    script:
        # if item is a custom weapon or not
        - if <[weapon].has_display>:
            - if <[weapon].script.name> matches crude_bow:
                - define damageMod -2
            - if <[weapon].script.name> matches war_bow:
                - define damageMod +2
            - if <[weapon].script.name> matches hunter_crossbow:
                - define damageMod +1
            - if <[weapon].script.name> matches heavy_crossbow:
                - define damageMod +2
#bowEquipCheck:
#    type: task
#    script:
# checks vanilla items
#       - if !<player.item_in_hand.has_display> && !<context.item.has_display> && !<context.cursor_item.has_display>:
#           #- narrate "Not custom item detected!"
#           - if <player.item_in_hand> matches *bow && <player.flag[skillArchery].get[1]> < <script[bowMaterial].data_key[<player.item_in_hand.material.name>]>:
#           #    - narrate <player.item_in_hand.formatted>
#           #    - narrate a
#               - define item:<player.item_in_hand>
#               - inventory set o:air slot:<player.held_item_slot> d:<player.inventory>
#               - drop <[item]> <player.location>
#           - if <player.item_in_hand> matches *bow && <player.flag[skillArchery].get[1]> < <script[bowMaterial].data_key[<context.item.material.name>]>:
#           #    - narrate b
#               - determine cancelled
#           - if <player.item_in_offhand> matches *bow  && <player.flag[skillArchery].get[1]> < <script[bowMaterial].data_key[<context.item.material.name>]>:
#           #    - narrate c
#               - determine cancelled
#           - if <context.cursor_item> matches *bow  && <context.slot> == 41 && <player.flag[skillArchery].get[1]> < <script[bowMaterial].data_key[<context.cursor_item.material.name>]>:
#           #    - narrate d
#               - determine cancelled
#           - if <context.cursor_item> matches *bow  && <context.slot> == <player.held_item_slot> && <player.flag[skillArchery].get[1]> < <script[bowMaterial].data_key[<context.cursor_item.material.name>]>:
#           #    - narrate e
#               - determine cancelled
#           - if <context.hotbar_button> == <player.held_item_slot> && <context.item> matches *bow  && <player.flag[skillArchery].get[1]> < <script[bowMaterial].data_key[<context.item.material.name>]>:
#           #    - narrate f
#               - determine cancelled
#           - if <player.held_item_slot.is_in[<context.slots>]> && <context.item> matches *bow && <player.flag[skillArchery].get[1]> < <script[bowMaterial].data_key[<context.item.material.name>]>:
#           #    - narrate g
#               - determine cancelled
# checks custom items
#       - else:
#           - if <player.item_in_hand> matches *bow && <player.flag[skillArchery].get[1]> < <script[bowMaterial].data_key[<player.item_in_hand.script.name>]>:
#               - define item:<player.item_in_hand>
#               - inventory set o:air slot:<player.held_item_slot> d:<player.inventory>
#               - drop <[item]> <player.location>
#           - if <player.item_in_hand> matches *bow && <player.flag[skillArchery].get[1]> < <script[bowMaterial].data_key[<context.item.script.name>]>:
#               - determine cancelled
#           - if <player.item_in_offhand> matches *bow  && <player.flag[skillArchery].get[1]> < <script[bowMaterial].data_key[<context.item.script.name>]>:
#               - determine cancelled
#           - if <context.cursor_item> matches *bow  && <context.slot> == 41 && <player.flag[skillArchery].get[1]> < <script[bowMaterial].data_key[<context.cursor_item.script.name>]>:
#               - determine cancelled
#           - if <context.cursor_item> matches *bow  && <context.slot> == <player.held_item_slot> && <player.flag[skillArchery].get[1]> < <script[bowMaterial].data_key[<context.cursor_item.script.name>]>:
#               - determine cancelled
#           - if <context.hotbar_button> == <player.held_item_slot> && <context.item> matches *bow  && <player.flag[skillArchery].get[1]> < <script[bowMaterial].data_key[<context.item.script.name>]>:
#               - determine cancelled
#           - if <player.held_item_slot.is_in[<context.slots>]> && <context.item> matches *bow && <player.flag[skillArchery].get[1]> < <script[bowMaterial].data_key[<context.item.script.name>]>:
#               - determine cancelled
bowMaterial:
    type: data
    # items are set to 1 for now for testing
    bow: 1
    crude_bow: 1
    crossbow: 1
    war_bow: 20
    heavy_crossbow: 30
