# Remove levels
experience add @s -50 levels

# Get new unbreakable item
    # Summon new item with "Unbreakable" & "new_item" tags <experimental>
        execute at @s run summon minecraft:item ~ ~ ~ {Item:{id:"minecraft:stone",Count:1,tag:{new_item:1,Unbreakable:1,PickupDelay:0}}}
    # Change ID
        data modify entity @e[type=minecraft:item,nbt={Item:{tag:{new_item:1}}},limit=1] Item.id set from entity @s SelectedItem.id
    # Change Name
        data modify entity @e[type=minecraft:item,nbt={Item:{tag:{new_item:1}}},limit=1] Item.tag.display.Name set from entity @s SelectedItem.tag.display.Name
    # Change Enchantments
        data modify entity @e[type=minecraft:item,nbt={Item:{tag:{new_item:1}}},limit=1] Item.tag.Enchantments set from entity @s SelectedItem.tag.Enchantments
    # Change RepairCost
        data modify entity @e[type=minecraft:item,nbt={Item:{tag:{new_item:1}}},limit=1] Item.tag.RepairCost set from entity @s SelectedItem.tag.RepairCost

# Clear SelectedItem
    replaceitem entity @s weapon.mainhand minecraft:air

# Discard 'new_item' tag
    data modify entity @e[type=minecraft:item,nbt={Item:{tag:{new_item:1}}},limit=1] Item.tag.new_item set value 0

# Play sounds
    # Private
        execute as @s at @s run playsound minecraft:block.end_portal.spawn block @s
    # Public
        execute as @a[scores={ui_status=..3}] at @s run playsound minecraft:entity.wither.ambient block @s

# Display conformation messages 
    # Private
        tellraw @s ["",{"text":"[Unbreakable-Items] ","color":"aqua"},{"text":"Made held item unbreakable for 50-levels!","color":"green"}]
    # Public
        tellraw @a[scores={ui_status=..3}] ["",{"text":"[Unbreakable-Items] ","color":"aqua"},{"selector":"@s","color":"yellow","italic":true},{"text":" has made an item unbreakable for 50 levels!","color":"green"}]
