#> linked_storage:helpers/check_frames


# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Unlink frames that are still linked but have no item placed in them
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
execute as @e[type=glow_item_frame,tag=LS_LINKED] unless data entity @s Item run function linked_storage:helpers/unlink_frame
