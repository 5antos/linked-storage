#> linked_storage:actions/placed_item_on_frame


# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Revoke the advancement
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
advancement revoke @s only linked_storage:interactions/placed_item_on_frame


# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# If there is an item frame that is not tagged as linked, handle the item placement on it
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
execute as @e[type=glow_item_frame,tag=!LS_LINKED,limit=1] if data entity @s Item run function linked_storage:macros/register_item with entity @s Item
