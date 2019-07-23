# Play sound
execute as @s at @s run playsound minecraft:item.trident.hit block @s

# Display fail message
tellraw @s ["",{"text":"[Unbreakable-Items]","color":"aqua"},{"text":" [Error]","color":"red"},{"text":"\n"},{"text":"50 levels required.","italic":true,"color":"yellow"}]
