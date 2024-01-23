#> linked_storage:helpers/handle_chest_inv_changes


# execute as @e[tag=LS_LINKED] at @s unless blocks ^ ^ ^-1 ^ ^ ^-1 ^ ^ ^-3 masked run tag @s add ls_inv_change


# execute if entity @e[nbt={Dimension:"minecraft:overworld"},type=player] run execute at @e[tag=ls_inv_change] run clone ^ ^ ^-1 ^ ^ ^-1 to linked_storage:overworld ~ ~ ~
# execute if entity @e[nbt={Dimension:"minecraft:the_nether"},type=player] run execute at @e[tag=ls_inv_change] run clone ^ ^ ^-1 ^ ^ ^-1 to linked_storage:the_nether ~ ~ ~
# execute if entity @e[nbt={Dimension:"minecraft:the_end"},type=player] run execute at @e[tag=ls_inv_change] run clone ^ ^ ^-1 ^ ^ ^-1 to linked_storage:the_end ~ ~ ~

# execute at @e[tag=ls_inv_change] run clone ^ ^ ^-1 ^ ^ ^-1 to linked_storage:overworld ~ ~ ~

# execute at @e[tag=ls_inv_change] run clone ^ ^ ^-1 ^ ^ ^-1 ^ ^ ^-3


# tag @e[tag=ls_inv_change] remove ls_inv_change
