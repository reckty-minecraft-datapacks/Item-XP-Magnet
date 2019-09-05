scoreboard players add @a Magnet_Item 0
scoreboard players add @a Magnet_XP 0
scoreboard players enable @a Magnet_Item
scoreboard players enable @a Magnet_XP

# Item Magnet
execute as @a[scores={Magnet_Item=1}] at @s run tellraw @s ["",{"text":"[Item-Magnet]: ","color":"yellow"},{"text":"Enabled","color":"green"}]
execute as @a[scores={Magnet_Item=1}] at @s run scoreboard players set @s Magnet_Item 2
execute as @a[scores={Magnet_Item=3}] at @s run tellraw @s ["",{"text":"[Item-Magnet]: ","color":"yellow"},{"text":"Disabled","color":"red"}]
execute as @a[scores={Magnet_Item=3}] at @s run scoreboard players set @s Magnet_Item 0

# XP Magnet
execute as @a[scores={Magnet_XP=1}] at @s run tellraw @s ["",{"text":"[XP-Magnet]: ","color":"yellow"},{"text":"Enabled","color":"green"}]
execute as @a[scores={Magnet_XP=1}] at @s run scoreboard players set @s Magnet_XP 2
execute as @a[scores={Magnet_XP=3}] at @s run tellraw @s ["",{"text":"[XP-Magnet]: ","color":"yellow"},{"text":"Disabled","color":"red"}]
execute as @a[scores={Magnet_XP=3}] at @s run scoreboard players set @s Magnet_XP 0

# Disable Pickup Delay for items to teleport
execute as @a[scores={Magnet_Item=2}] run execute as @e[type=minecraft:item,nbt={Age:0s},nbt=!{Thrower:{}},distance=..8] run data merge entity @s {PickupDelay:-0s}

# Disable teleport for items near certain blocks/entities
execute as @e[type=minecraft:item,nbt={Age:0s},nbt=!{Thrower:{}}] at @s if block ~ ~ ~ minecraft:hopper run data merge entity @s {Age:1s} 
execute as @e[type=minecraft:item,nbt={Age:0s},nbt=!{Thrower:{}}] at @s if block ^ ^-1 ^ minecraft:hopper run data merge entity @s {Age:1s} 
execute as @e[type=minecraft:item,nbt={Age:0s},nbt=!{Thrower:{}}] at @s if block ^ ^-2 ^ minecraft:hopper run data merge entity @s {Age:1s}
execute as @e[type=minecraft:item,nbt={Age:0s},nbt=!{Thrower:{}}] at @s if entity @e[type=minecraft:hopper_minecart,distance=..3] run data merge entity @s {Age:1s}
execute as @e[type=minecraft:item,nbt={Age:0s},nbt=!{Thrower:{}}] at @s if entity @e[type=minecraft:chest_minecart,distance=..3] run data merge entity @s {Age:1s}

# Add attracted tag
execute as @e[type=minecraft:item,nbt={Age:0s},nbt=!{Thrower:{}}] run tag @s add Magnet_Attracted

# Set "Age" score
execute as @e[type=minecraft:item,nbt={Tags:["Magnet_Attracted"]}] store result score @s Magnet_Age run data get entity @s Age 1

# Teleport items with attracted tag
execute as @e[type=minecraft:item,scores={Magnet_Age=..10}] at @s run tp @p[scores={Magnet_Item=2},distance=..8]

# Teleport items
##execute as @e[type=minecraft:item,nbt={Age:0s},nbt=!{Thrower:{}}] at @s run tp @p[scores={Magnet_Item=2},distance=..8]

# Teleport XP
execute as @e[type=minecraft:experience_orb] at @s run tp @p[scores={Magnet_XP=2},distance=..8]
