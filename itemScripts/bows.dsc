# bows

crude_bow:
    type: item
    material: bow
    display name: <&7>Crude Bow
    lore:
    - <&f><&8><&m><&sp.repeat[8]>
    - <&9>🏹 Ranged
    - <&4>⚡<&r><&4>  Level 1
    - <&f><&8><&m><&sp.repeat[8]>
    - <&2>9 Max Damage
    recipes:
        1:
            type: shaped
            group: bow
            input:
            - air|air|air
            - material:string|air|material:stick
            - air|air|air
basic_bow:
    type: item
    material: bow
    display name: <&a>Bow
    lore:
    - <&f><&8><&m><&sp.repeat[8]>
    - <&9>🏹 Ranged
    - <&4>⚡<&r><&4>  Level 10
    - <&f><&8><&m><&sp.repeat[8]>
    - <&2>11 Max Damage
    recipes:
        1:
            type: shaped
            group: bow
            input:
            - material:string|stick|air
            - material:string|air|stick
            - material:string|stick|air
war_bow:
    type: item
    material: bow
    display name: <&b>War Bow
    lore:
    - <&f><&8><&m><&sp.repeat[8]>
    - <&9>🏹<&9> Ranged
    - <&4>⚡<&r><&4>  Level 20
    - <&f><&8><&m><&sp.repeat[8]>
    - <&9>13 Max Damage
    recipes:
        1:
            type: shaped
            group: bow
            input:
            - material:string|stick|air
            - material:string|air|iron_ingot
            - material:string|stick|air
basic_crossbow:
    type: item
    material: crossbow
    display name: <&a>Crossbow
    lore:
    - <&f><&8><&m><&sp.repeat[8]>
    - <&c>🏹<&c> Ranged
    - <&4>⚡<&r><&4>  Level 10
    - <&f><&8><&m><&sp.repeat[8]>
    - <&2>11 Max Damage
    recipes:
        1:
            type: shaped
            group: bow
            input:
            - material:stick|iron_ingot|stick
            - material:string|tripwire_hook|string
            - material:air|stick|air
hunter_crossbow:
    type: item
    material: crossbow
    display name: <&b>Hunter's Crossbow
    lore:
    - <&f><&8><&m><&sp.repeat[8]>
    - <&c>🏹<&c> Ranged
    - <&4>⚡<&r><&4>  Level 40
    - <&f><&8><&m><&sp.repeat[8]>
    - <&2>14 Max Damage
    recipes:
        1:
            type: shaped
            group: bow
            input:
            - material:iron_ingot|iron_ingot|iron_ingot
            - material:string|tripwire_hook|string
            - material:air|stick|air
heavy_crossbow:
    type: item
    material: crossbow
    display name: <&6>Heavy Crossbow
    lore:
    - <&f><&8><&m><&sp.repeat[8]>
    - <&c>🏹<&c> Ranged
    - <&4>⚡<&r><&4>  Level 50
    - <&f><&8><&m><&sp.repeat[8]>
    - <&2>16 Max Damage
    - <&9>Punishing
    recipes:
        1:
            type: shaped
            group: bow
            input:
            - material:iron_ingot|diamond|iron_ingot
            - material:string|tripwire_hook|string
            - material:air|stick|air

bowScripts:
    type: world
    events:
            on player shoots basic_crossbow:
                - adjust <context.projectile> velocity:<context.projectile.velocity.mul[1.2]>
            on player shoots hunter_crossbow:
                - adjust <context.projectile> velocity:<context.projectile.velocity.mul[1.3]>
            on player shoots heavy_crossbow:
                - adjust <context.projectile> velocity:<context.projectile.velocity.mul[1.4]>
            on player shoots war_bow:
                - adjust <context.projectile> velocity:<context.projectile.velocity.mul[1.2]>
