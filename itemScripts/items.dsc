iron_alloy_ingot:
    type: item
    material: iron_ingot
    display name: <&r><&b>Iron Alloy Ingot
    allow in material recipes: false
    recipes:
        1:
            type: shaped
            input:
            - air|material:iron_ingot|air
            - air|material:copper_ingot|air
            - air|air|air