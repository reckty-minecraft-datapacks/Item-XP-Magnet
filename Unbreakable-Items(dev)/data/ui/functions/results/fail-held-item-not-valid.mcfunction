# Play sound
execute as @s at @s run playsound minecraft:item.trident.hit block @s

# Display fail message
tellraw @s ["",{"text":"[Unbreakable-Items]","color":"aqua"},{"text":" [Error]","color":"red"},{"text":"\n"},{"text":"Held item is not valid.","italic":true,"color":"yellow"}]
