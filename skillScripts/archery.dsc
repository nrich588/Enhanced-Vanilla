archerySkill:
    type: world
    events:
        on entity damaged by player:

            - define bowUsed <list[<player.item_in_hand.script.name||null>|<player.item_in_offhand.script.name||null>]>
            - if crude_bow in <[bowUsed]>:
                - determine passively <context.final_damage.sub[2]>
