################################
## Datapack written by ReckTy ##
################################

# Create scoreboard objectives
scoreboard objectives add Make_Unbreakable trigger
scoreboard objectives add ui_status dummy

# Display load message
tellraw @a ["",{"text":"[Unbreakable-Items] ","color":"aqua","hoverEvent":{"action":"show_text","value":"Type '/trigger Make_Unbreakable' to make your hand-held item unbreakable in exchange for 50-levels!"}},{"text":"(1.0.4)","color":"gray","hoverEvent":{"action":"show_text","value":"Type '/trigger Make_Unbreakable' to make your hand-held item unbreakable in exchange for 50-levels!"}},{"text":" ","color":"aqua","hoverEvent":{"action":"show_text","value":"Type '/trigger Make_Unbreakable' to make your hand-held item unbreakable in exchange for 50-levels!"}},{"text":"Available!\n(Hover for more info)","color":"yellow","hoverEvent":{"action":"show_text","value":"Type '/trigger Make_Unbreakable' to make your hand-held item unbreakable in exchange for 50-levels!"}},{"text":"\n"},{"text":"<Update-Link>","color":"gold","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/mod/unbreakable-items/"},"hoverEvent":{"action":"show_text","value":"https://www.planetminecraft.com/mod/unbreakable-items/"}}]