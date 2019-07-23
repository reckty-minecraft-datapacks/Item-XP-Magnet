scoreboard players add @a Make_Unbreakable 0
scoreboard players enable @a Make_Unbreakable

# Check if 'Make_Unbreakable' triggered [Sets 'ui_status' to 1]
    execute as @a[scores={Make_Unbreakable=1..}] run scoreboard players set @s ui_status 1
# Reset 'Make_Unbreakable'
    scoreboard players set @a Make_Unbreakable 0

# Check if player is level 50+ [Sets 'ui_status' to 2]
    execute as @a[scores={ui_status=1},level=50..] run scoreboard players set @s ui_status 2 
    # Else
        execute as @a[scores={ui_status=1}] at @s run function ui:results/fail-level

# Check if held item is already unbreakable [Sets 'ui_status' to 3]
    execute as @a[scores={ui_status=2}] unless entity @s[nbt={SelectedItem:{tag:{Unbreakable:1}}}] run scoreboard players set @s ui_status 3
    # Else
        execute as @a[scores={ui_status=2}] run function ui:results/fail-held-item-unbreakable

# Check if held item is valid [Sets 'ui_status' to 4]
    execute as @a[scores={ui_status=3}] run function ui:checks/held-item-valid
    # Else
        execute as @a[scores={ui_status=3}] run function ui:results/fail-held-item-not-valid

# Continue if player is holding a valid item
    execute as @a[scores={ui_status=4}] run function ui:results/success

# Reset 'ui_status'
    scoreboard players set @a ui_status 0
