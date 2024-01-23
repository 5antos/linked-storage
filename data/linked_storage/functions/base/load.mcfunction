#> linked_storage:base/load


# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Initialize storage
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
#declare storage ls:storage
execute unless data storage ls:storage items run data modify storage ls:storage items set value {}


# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Log upon successful load
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
tellraw @a [{"text":"Successfully loaded ","color":"white"}, {"text":"[Linked Storage]","color":"green","hoverEvent": {"action": "show_text","value": [{"text": "Linked Storage\n","color": "white"}, {"text": "By 5antos","color": "blue"}, {"text": ", for 1.20.3-1.20.4","color": "dark_gray"}]}}]
