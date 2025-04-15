combatXp:
    type: data

    #hostile mobs
    zombie: 25
    husk: 25
    drowned: 25
    creeper: 30
    skeleton: 30
    bogged: 30
    stray: 30
    silverfish: 5
    slime: 5
    spider: 20
    enderman: 50
    phantom: 20
    zombie_villager: 25
    witch: 40
    breeze: 50
    cave_spider: 24
    guardian: 40
    elder_guardian: 60

    #raider
    pillager: 30
    ravager: 150
    evoker: 45
    vex: 25

    #nether
    blaze: 35
    hoglin: 40
    zoglin: 40
    ghast: 35
    magma_cube: 8
    piglin: 20
    piglin_brute: 60
    zombified_piglin: 35

    #animals
    cow: 5
    pig: 5
    chicken: 3
    sheep: 4
    squid: 8
    bat: 1
    bee: 1
    donkey: 5
    horse: 5
    dolphin: 5
    goat: 5
    ocelot: 5
    cat: 5
    allay: 5
    llama: 5
    wandering_trader: 10
    trader_llama: 5

combatEvents:
    type: world
    events:


        on player kills entity:
            # sets xp value of kill
            - define xp:<script[combatXp].data_key[<context.entity.name>]>
            - foreach <context.entity.equipment> as:piece:
                - define piece: <[piece].material.name>
                - if <[piece]> matches stone_*:
                    - define xp:+:1
                - if <[piece]> matches netherite_*:
                    - define xp:+:3
                - if <[piece]> matches diamond_*:
                    - define xp:+:2
                - if <[piece]> matches iron_*:
                    - define xp:+:1
                - if <[piece]> matches chainmail_*:
                    - define xp:+:1
            - if <player.location.world.difficulty> == easy:
                - define xp <[xp].mul[0.8].round>
            - if <player.location.world.difficulty> == hard:
                - define xp <[xp].mul[1.2].round>
            - actionbar targets:<player> <green>+<[xp]>
            # axes
            - if <player.item_in_hand.material.name> matches *_axe:
                - define skill <player.flag[skillAxe]>
                - run skillChecker def.xp:<[xp]> def.skill:<[skill]> def.skillFlag:skillAxe
            # swords
            - if <player.item_in_hand.material.name> matches *_sword:
                - define skill <player.flag[skillSword]>
                - run skillChecker def.xp:<[xp]> def.skill:<[skill]> def.skillFlag:skillSword
            - narrate <player.equipment.formatted>
            # grants xp for heavy armor
            - if <player.equipment.contains_match[iron_*|netherite_*|golden_*|diamond_*]>:
                - define skill <player.flag[skillHeavyArmor]>
                - run skillChecker def.xp:<[xp].div[3].round_up> def.skill:<[skill]> def.skillFlag:skillHeavyArmor
                - narrate "Giving <[xp].div[3].round_up>!"
            # grants xp for light armor
            - if <player.equipment.contains_match[chainmail_*|leather_*]>:
                - define skill <player.flag[skillLightArmor]>
                - run skillChecker def.xp:<[xp].div[3].round_up> def.skill:<[skill]> def.skillFlag:skillLightArmor
                - narrate "Giving <[xp].div[3].round_up>!"
        after player kills entity:
            # creates / updates xp bar for each skill that is proc'd.
            - if <player.item_in_hand.material.name> matches *_sword:
                - define skill <player.flag[skillSword]>
                - run xpBar def.skill:<[skill]>
            - if <player.item_in_hand.material.name> matches *_axe:
                - define skill <player.flag[skillAxe]>
                - run xpBar def.skill:<[skill]>
            - if <player.equipment.contains_match[iron_*|netherite_*|golden_*|diamond_*]>:
                - define skill <player.flag[skillHeavyArmor]>
                - run xpBar def.skill:<[skill]>
            - if <player.equipment.contains_match[chainmail_*|leather_*]>:
                - define skill <player.flag[skillLightArmor]>
                - run xpBar def.skill:<[skill]>
        # archery testing
        on player shoots bow:
            - narrate <context.projectile.shooter>
