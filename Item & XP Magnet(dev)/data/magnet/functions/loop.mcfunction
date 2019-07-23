scoreboard players add @a Magnet_Item 0
scoreboard players add @a Magnet_XP 0
scoreboard players enable @a Magnet_Item
scoreboard players enable @a Magnet_XP

# Item Magnet
execute as @a at @s if entity @s[scores={Magnet_Item=1}] run tellraw @s ["",{"text":"[Item-Magnet]: ","color":"yellow"},{"text":"Enabled","color":"green"}]
execute as @a at @s if entity @s[scores={Magnet_Item=1}] run scoreboard players set @s Magnet_Item 2
execute as @a at @s if entity @s[scores={Magnet_Item=2}] run teleport @e[type=item,nbt=!{Thrower:{}},distance=..8] @s
execute as @a at @s if entity @s[scores={Magnet_Item=3}] run tellraw @s ["",{"text":"[Item-Magnet]: ","color":"yellow"},{"text":"Disabled","color":"red"}]
execute as @a at @s if entity @s[scores={Magnet_Item=3}] run scoreboard players set @s Magnet_Item 0

# XP Magnet
execute as @a at @s if entity @s[scores={Magnet_XP=1}] run tellraw @s ["",{"text":"[XP-Magnet]: ","color":"yellow"},{"text":"Enabled","color":"green"}]
execute as @a at @s if entity @s[scores={Magnet_XP=1}] run scoreboard players set @s Magnet_XP 2
execute as @a at @s if entity @s[scores={Magnet_XP=2}] run teleport @e[type=experience_orb,distance=..8] @s
execute as @a at @s if entity @s[scores={Magnet_XP=3}] run tellraw @s ["",{"text":"[XP-Magnet]: ","color":"yellow"},{"text":"Disabled","color":"red"}]
execute as @a at @s if entity @s[scores={Magnet_XP=3}] run scoreboard players set @s Magnet_XP 0



