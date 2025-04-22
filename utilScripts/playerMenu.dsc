menuGui:
    type: inventory
    inventory: chest
    title: <blue><bold>         <underline>PLAYER MENU
    size: 36
    gui: true
    slots:

    - [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone]
    - [null_zone] [combatStats] [miningStats] [guideMenu] [notificationMenu] [skillsMenu] [null_zone] [null_zone] [null_zone]
    - [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone]
    - [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [close_menu] [null_zone]
menuEvents:
    type: world
    events:
        on player clicks skillsMenu in menuGui:
            - inventory open d:skillGui
        on player clicks close_menu in inventory:
            - inventory close
        on player clicks notificationMenu in menuGui:
            - inventory open d:notificationMenuGui
MenuCommand:
    type: command
    name: menu
    description: Opens the player main menu.
    usage: /menu
    script:
        - inventory open d:menuGui
combatStats:
    type: item
    material: iron_sword
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    operation: add_number
                    amount: 5
        hides: attributes
    display name: <&r><&l>COMBAT STATISTICS
    lore:
    - <&r>Shows player statistics on
    - <&r>combat related activities.
miningStats:
    type: item
    material: iron_pickaxe
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    operation: add_number
                    amount: 5
        hides: attributes
    display name: <&r><&l>MINING STATISTICS
    lore:
    - <&r>Shows player statistics on
    - <&r>mining and resource gathering.
guideMenu:
    type: item
    material: writable_book
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    operation: add_number
                    amount: 5
        hides: attributes
    display name: <&r><&l>GAME MANUAL
    lore:
    - <&r>List of guides and information
    - <&r>on game systems.
notificationMenu:
    type: item
    material: bell
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    operation: add_number
                    amount: 5
        hides: attributes
    display name: <&r><&l>HUD SETTINGS
    lore:
    - <&r>Customize user experience.
skillsMenu:
    type: item
    material: player_head
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    operation: add_number
                    amount: 5
        hides: attributes
    display name: <&r><&l>PLAYER SKILLS MENU
    lore:
    - <&r>View all of your skills,
    - <&r>XP, and levels.

notificationMenuGui:
    type: inventory
    inventory: chest
    title: <blue><bold>  <underline>NOTIFICATION SETTINGS
    size: 36
    gui: true
    slots:

    - [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone]
    - [null_zone] [globalNotifIcon] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone]
    - [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone]
    - [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [null_zone] [close_menu] [null_zone]
globalNotifIcon:
    type: item
    material: bell
    mechanisms:
        attribute_modifiers:
            attack_damage:
                1:
                    operation: add_number
                    amount: 5
        hides: attributes
    display name: <&r><&l>ALL
    lore:
    - <&r>SHOW XP BARS: <&e><player.has_flag[showXp]>
notificationMenuEvents:
    type: world
    events:
        on player clicks globalNotifIcon in inventory:
            - if <player.has_flag[showXp]>:
                - flag <player> showXp:!
                - inventory open d:notificationMenuGui
            - else:
                - flag <player> showXp
                - inventory open d:notificationMenuGui