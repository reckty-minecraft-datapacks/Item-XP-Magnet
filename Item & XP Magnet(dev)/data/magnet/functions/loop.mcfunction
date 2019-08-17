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

# Teleport items
execute as @e[type=minecraft:item,nbt={Age:0s},nbt=!{Thrower:{}}] at @s run tp @p[scores={Magnet_Item=2},distance=..8]

# Teleport XP
execute as @e[type=minecraft:experience_orb] at @s run tp @p[scores={Magnet_XP=2},distance=..8]
