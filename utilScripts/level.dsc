xp_values:
    type: data
    # mobs
    zombie: 35
    skeleton: 11
    spider: 8
    creeper: 12
    enderman: 20
    wither: 15
    blaze: 12
    hoglin: 20
    witch: 12
    cow: 3
    chicken: 1
    pig: 2
    sheep: 1
    # basic mineables
    stone: 1
    diamond_ore: 20
    iron_ore: 5
    copper_ore: 2
    coal_ore: 2
    redstone_ore: 3
    lapis_ore: 3
    gold_ore: 7
    emerald_ore: 20
    # deepslate mineables
    deepslate: 1
    deepslate_diamond_ore: 24
    deepslate_iron_ore: 6
    deepslate_copper_ore: 2
    deepslate_coal_ore: 2
    deepslate_redstone_ore: 4
    deepslate_lapis_ore: 4
    deepslate_gold_ore: 8
    deepslate_emerald_ore: 24
    gold_block: 250
    # farmables
    wheat: 2
    melon: 4
    pumpkin: 4
    carrots: 2
    potatoes: 2
    beetroot: 2
    # dirt stuff
    dirt: 1
    sand: 1
    gravel: 1





xp_calc:
    type: world
    events:
        # this is purely for making sure new users have nuked accounts and levels
        # gives players xp based on enemies they've killed.
        on entity breeds:
            - announce <context.breeder.name>
        on player kills entity:
            - define xpGiven:<script[xp_values].data_key[<context.entity.name>]>
            # gives the player that xp
            - if <context.entity.item_in_hand.material.name> != air:
                - define xpGiven:++
            - run levelCheck def:<[xpGiven]>
        # gives players xp based on things they mine
        on player breaks block:
            # does not give xp for mining with a silk touch tool for ores.
            - define enchants:<player.item_in_hand.enchantment_types>
            - if <[enchants].contains_text[silk_touch]> && <context.material.name.contains_text[ore]>:
                - narrate "You mined an ore with a silk touch tool. NO XP FOR YOU!"
                - determine cancelled:false
            # this gives 1 xp per log mined, much easier than using a table
            - if <context.material.name.ends_with[_log]>:
                - run levelCheck def:1
                - determine cancelled:false
            - define xpGiven:<script[xp_values].data_key[<context.material.name>]>
            - run levelCheck def:<[xpGiven]>


levelCheck:
    type: task
    definitions: xpGiven
    script:
        - define A:500
        - define B:1.4
        - define N:<player.flag[playerLevel]>
        # determines how much xp is needed to advance to the next level, assumes
        - define xpNeeded:<[A].mul[<[N].power[<[B]>]>].round>
        - flag <player> playerXp:+:<[xpGiven]>
        #- narrate "You need <[xpNeeded]>XP total to level up. You have <player.flag[playerXp]>. You still need <[xpNeeded].sub[<player.flag[playerXp]>]>"
        - while <player.flag[playerXp]> >= <[xpNeeded]>:
            - define remainderXp:<player.flag[playerXp].sub[<[xpNeeded]>]>
            #- narrate <[remainderXp]>
            - flag <player> playerLevel:++
            - flag <player> playerXp:<[remainderXp]>
            - narrate "You leveled up to <player.flag[playerLevel]> and have <player.flag[playerXp]>XP!"



skillChecker:
    type: task
    definitions: xp|skill|skillFlag
    script:
        - define A:500
        - define B:1.4
        - define N:<[skill].get[1]>
        - define xpNeeded:<[A].mul[<[N].power[<[B]>]>].round>
        - define newXp:<[skill].get[2].add[<[xp]>]>
        - define levelsGained:0
        - while <[newXp]> >= <[xpNeeded]>:
            # give level
            - define levelsGained:++
            # get remainder
            - define remainingXp:<[newXp].sub[<[xpNeeded]>]>
            # set xp to remainder
            - define newXp:<[remainingXp]>
            - define N:+:<[levelsGained]>
            - define xpNeeded:<[A].mul[<[N].power[<[B]>]>].round>
        - flag <player> <[skillFlag]>[2]:<[newXp]>
        - flag <player> <[skillFlag]>[1]:+:<[levelsGained]>
        - flag <player> <[skillFlag]>[3]:<[xpNeeded]>
xpBar:
    type: task
    definitions: skill
    script:
        #- define xpBarCount  && <[xpBarCount]> < 2
        - if <player.has_flag[showXp]>:
           # - flag <player> xpBarCount:++
            - flag <player> xpBarTimer<[skill].get[4]> expire:5s
            - bossbar auto <player.uuid><[skill].get[4]>XpBar color:Blue "title:<[skill].get[4]> XP: <yellow><[skill].get[2]> <white>/ <yellow><[skill].get[3]> " progress:<[skill].get[2].div[<[skill].get[3]>]> players:<player> style:segmented_10
            - wait 5.1s
            - if !<player.has_flag[xpBarTimer<[skill].get[4]>]>:
                - bossbar remove <player.uuid><[skill].get[4]>XpBar
                #- flag <player> xpBarCount:--