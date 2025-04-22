agilityEvents:
    type: world
    events:

        on player starts sprinting:
            - flag <player> startSprint:<player.location>
        on player stops sprinting:
            - define skill <player.flag[skillAgility]>
            - flag <player> stopSprint:<player.location>
            - flag <player> runCounter:+:<player.flag[startSprint].distance[<player.flag[stopSprint]>].round>
            - define xp 0
            - while <player.flag[runCounter]> >= 25:
                - define xp:+:1
                - flag <player> runCounter:-:25
            - run skillChecker def.xp:<[xp]> def.skill:<[skill]> def.skillFlag:skillAgility
        after player stops sprinting:
            - if <player.has_flag[showXpAgility]>:
                - define skill <player.flag[skillAgility]>
                - run xpBar def.skill:<[skill]>
        on player jumps:
            - define xp 1
            - define skill <player.flag[skillAgility]>
            - run skillChecker def.xp:<[xp]> def.skill:<[skill]> def.skillFlag:skillAgility
        after player jumps:
            - if <player.has_flag[showXpAgility]>:
                - define skill <player.flag[skillAgility]>
                - run xpBar def.skill:<[skill]>
        on player joins:
            - define speedBoost <player.flag[skillAgility].get[1].div[500].round_down_to_precision[0.01].add[1]>
            #- narrate "<[speedBoost]> //// <player.speed>"
            - define oldSpeed <player.speed>
            - define newSpeed <[oldSpeed].mul[<[speedBoost]>]>
            #- narrate <[newSpeed]>
            - adjust <player> speed:<[newSpeed]>
