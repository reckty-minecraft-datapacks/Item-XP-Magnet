scoreboard objectives add Magnet_Item trigger
scoreboard objectives add Magnet_XP trigger
scoreboard objectives add Magnet_Age dummy

tellraw @a ["",{"text":"[Item & XP Magnet] ","color":"aqua","hoverEvent":{"action":"show_text","value":"Usage: '/trigger Magnet_Item' & '/trigger Magnet_XP'"}},{"text":"(1.0.3)","color":"gray","hoverEvent":{"action":"show_text","value":"Type '/trigger Make_Unbreakable' to make your hand-held item unbreakable in exchange for 50-levels!"}},{"text":" ","color":"aqua","hoverEvent":{"action":"show_text","value":"Type '/trigger Make_Unbreakable' to make your hand-held item unbreakable in exchange for 50-levels!"}},{"text":"Available!\n(Hover for more info)","color":"yellow","hoverEvent":{"action":"show_text","value":"Type '/trigger Make_Unbreakable' to make your hand-held item unbreakable in exchange for 50-levels!"}},{"text":"\n"},{"text":"<Update-Link>","color":"gold","clickEvent":{"action":"open_url","value":"https://www.planetminecraft.com/mod/item-amp-xp-magnet/"},"hoverEvent":{"action":"show_text","value":"https://www.planetminecraft.com/mod/item-amp-xp-magnet/"}}]
