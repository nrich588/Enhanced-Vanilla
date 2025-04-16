archerySkill:
    type: world
    events:
        on entity damaged by player:

            - define bowUsed <list[<player.item_in_hand.script.name||null>|<player.item_in_offhand.script.name||null>]>
            - narrate <[bowUsed]>
            - if crude_bow in <[bowUsed]>:
                - determine passively <context.final_damage.sub[2]>
                - narrate <context.entity.health_percentage>
                - adjust <player.item_in_hand> durability:1000
        after entity damaged by player:
            - narrate <player.item_in_hand.durability>
            - adjust <player.item_in_hand> durability:1000
            - narrate <player.item_in_hand.max_durability>