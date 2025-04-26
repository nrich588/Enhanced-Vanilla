axes_xp:
    type: world
    events:

        # this gives players xp for breaking logs
        on player breaks *_log with:*_axe:
            - define skill <player.flag[skillAxe]>
            - run skillChecker def.xp:5 def.skill:<[skill]> def.skillFlag:skillAxe
        after player breaks *_log with:*_axe:
            - define skill <player.flag[skillAxe]>
            - run xpBar def.skill:<[skill]>
        # this gives players bonus logs for having a higher wood cutting level
        on player places *_log:
            #- narrate <context.location.formatted>
            - flag server unnaturalLogs:|:<context.location.formatted>
            #- narrate <server.flag[unnaturalLogs]>
        after player breaks *_log:
            #- narrate <context.location.formatted>
            - if <context.location.formatted.is_in[<server.flag[unnaturalLogs]>]>:
                - flag server unnaturalLogs:<-:<context.location.formatted>
        on *_log drops *_log from breaking:
            - if !<context.location.formatted.is_in[<server.flag[unnaturalLogs]>]>:
                - define dropChance:<util.random.int[0].to[95].add[<player.flag[skillAxe].get[1]>]>
                - if <[dropChance]> >= 194:
                    - drop <context.drop_entities.parse[item]> <context.location> quantity:3
                    - narrate "<italic>Due to your skill with an axe, you were able to two and additional log!"
                - else if <[dropChance]> >= 150:
                    - drop <context.drop_entities.parse[item]> <context.location> quantity:2
                    - narrate "<italic>Due to your skill with an axe, you were able to two and additional log!"
                - else if <[dropChance]> >= 100:
                    - drop <context.drop_entities.parse[item]> <context.location>
                    - narrate "<italic>Due to your skill with an axe, you were able to gain and additional log!"

        # this applies bonus damage for players based on their axe level
        on entity damaged by player with:*_axe:
            # sets the damage multiplier from ~0 to 40%
            - define damageMult:<player.flag[skillAxe].get[1].mul[0.0040]>
            - define damage:<context.damage>
            - if <player.item_in_hand> matches diamond_axe:
                - define damage:<[damage].add[0.4]>
            - if <player.item_in_hand> matches iron_axe :
                - define damage:<[damage].add[0.2]>
            - if <player.item_in_hand> matches netherite_axe:
                - define damage:<[damage].add[0.3]>
            - define bonusDamage:<[damage].mul[<[damageMult]>]>
            - define totalDamage:<[damage].add[<[bonusDamage]>]>
            - determine <[totalDamage]>

        # these calls ensure that a player has the appropriate level to equip an axe. See key at bottom for level requirements
        on player scrolls their hotbar item:*_axe:
            - if <player.inventory.slot[<context.new_slot>].has_display>:
                - if <player.flag[skillAxe].get[1]> < <script[axeMaterial].data_key[<player.inventory.slot[<context.new_slot>].script.name>]>:
                    - narrate "You do not have high enough axe skill to equip <player.inventory.slot[<context.new_slot>].display>!"
                    - determine cancelled passively
            - else:
                - if <player.flag[skillAxe].get[1]> < <script[axeMaterial].data_key[<player.inventory.slot[<context.new_slot>].material.name>]>:
                    - narrate "You do not have high enough axe skill to equip <player.inventory.slot[<context.new_slot>].material.name>!"
                    - determine cancelled passively
        on player drags item in inventory:
            - inject axeEquipCheck
            - inject bowEquipCheck
        after player inventory slot changes:
            - inject axeEquipCheck
            - inject bowEquipCheck
        after player closes inventory:
            - inject axeEquipCheck
            - inject bowEquipCheck
        on player clicks item in inventory:
            - inject axeEquipCheck
            - inject bowEquipCheck
        on player swaps items:
            - inject axeEquipCheck
            - inject bowEquipCheck
        # checks when players pick up an axe if they can use it
        on player picks up *_axe:
            #- inject axeEquipCheck
            #- inject bowEquipCheck
            - if <context.item.has_display>:
                - if <player.item_in_hand> matches air && <player.flag[skillAxe].get[1]> < <script[axeMaterial].data_key[<context.item.script.name>]>:
                    - determine cancelled passively
                    - ratelimit <player> 2s
                    - narrate "You can't pick this up with an empty hand with you current Axes level!"
            - else:
                - if <player.item_in_hand> matches air && <player.flag[skillAxe].get[1]> < <script[axeMaterial].data_key[<context.item.material.name>]>:
                    - determine cancelled passively
                    - ratelimit <player> 2s
                    - narrate "You can't pick this up with an empty hand with you current Axes level!"
#axeEquipCheck:
#    type: task
#    script:
# checks vanilla items
#       - if !<player.item_in_hand.has_display> && !<context.item.has_display> && !<context.cursor_item.has_display>:
#           #- narrate "Not custom item detected!"
#           - if <player.item_in_hand> matches *_axe && <player.flag[skillAxe].get[1]> < <script[axeMaterial].data_key[<player.item_in_hand.material.name>]>:
#           #    - narrate <player.item_in_hand.formatted>
#           #    - narrate a
#               - define item:<player.item_in_hand>
#               - inventory set o:air slot:<player.held_item_slot> d:<player.inventory>
#               - drop <[item]> <player.location>
#           - if <player.item_in_hand> matches *_axe && <player.flag[skillAxe].get[1]> < <script[axeMaterial].data_key[<context.item.material.name>]>:
#           #    - narrate b
#               - determine cancelled
#           - if <player.item_in_offhand> matches *_axe  && <player.flag[skillAxe].get[1]> < <script[axeMaterial].data_key[<context.item.material.name>]>:
#           #    - narrate c
#               - determine cancelled
#           - if <context.cursor_item> matches *_axe  && <context.slot> == 41 && <player.flag[skillAxe].get[1]> < <script[axeMaterial].data_key[<context.cursor_item.material.name>]>:
#           #    - narrate d
#               - determine cancelled
#           - if <context.cursor_item> matches *_axe  && <context.slot> == <player.held_item_slot> && <player.flag[skillAxe].get[1]> < <script[axeMaterial].data_key[<context.cursor_item.material.name>]>:
#           #    - narrate e
#               - determine cancelled
#           - if <context.hotbar_button> == <player.held_item_slot> && <context.item> matches *_axe  && <player.flag[skillAxe].get[1]> < <script[axeMaterial].data_key[<context.item.material.name>]>:
#           #    - narrate f
#               - determine cancelled
#           - if <player.held_item_slot.is_in[<context.slots>]> && <context.item> matches *_axe && <player.flag[skillAxe].get[1]> < <script[axeMaterial].data_key[<context.item.material.name>]>:
#           #    - narrate g
#               - determine cancelled
# checks custom items
#       - else:
#           - if <player.item_in_hand> matches *_axe && <player.flag[skillAxe].get[1]> < <script[axeMaterial].data_key[<player.item_in_hand.script.name>]>:
#               - define item:<player.item_in_hand>
#               - inventory set o:air slot:<player.held_item_slot> d:<player.inventory>
#               - drop <[item]> <player.location>
#           - if <player.item_in_hand> matches *_axe && <player.flag[skillAxe].get[1]> < <script[axeMaterial].data_key[<context.item.script.name>]>:
#               - determine cancelled
#           - if <player.item_in_offhand> matches *_axe  && <player.flag[skillAxe].get[1]> < <script[axeMaterial].data_key[<context.item.script.name>]>:
#               - determine cancelled
#           - if <context.cursor_item> matches *_axe  && <context.slot> == 41 && <player.flag[skillAxe].get[1]> < <script[axeMaterial].data_key[<context.cursor_item.script.name>]>:
#               - determine cancelled
#           - if <context.cursor_item> matches *_axe  && <context.slot> == <player.held_item_slot> && <player.flag[skillAxe].get[1]> < <script[axeMaterial].data_key[<context.cursor_item.script.name>]>:
#               - determine cancelled
#           - if <context.hotbar_button> == <player.held_item_slot> && <context.item> matches *_axe  && <player.flag[skillAxe].get[1]> < <script[axeMaterial].data_key[<context.item.script.name>]>:
#               - determine cancelled
#           - if <player.held_item_slot.is_in[<context.slots>]> && <context.item> matches *_axe && <player.flag[skillAxe].get[1]> < <script[axeMaterial].data_key[<context.item.script.name>]>:
#               - determine cancelled
# material reference for level requirements
axeMaterial:
    type: data
    # items are set to 1 for now for testing
    stone_axe: 1
    sharpened_stone_axe: 1
    iron_axe: 1
    superior_iron_axe: 1
    diamond_axe: 1

