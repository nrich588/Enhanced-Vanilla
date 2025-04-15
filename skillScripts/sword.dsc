swords:
    type: world
    events:

        on entity damaged by player with:*_sword:
            # sets the damage multiplier from ~0 to 40%
            - define damageMult:<player.flag[skillSword].get[1].mul[0.0040]>
            - define damage:<context.damage>
            - if <player.item_in_hand> matches diamond_sword:
                - define damage:<[damage].add[0.4]>
            - if <player.item_in_hand> matches iron_sword :
                - define damage:<[damage].add[0.2]>
            - if <player.item_in_hand> matches netherite_sword:
                - define damage:<[damage].add[0.3]>
            - define bonusDamage:<[damage].mul[<[damageMult]>]>
            - define totalDamage:<[damage].add[<[bonusDamage]>]>
            - determine <[totalDamage]>