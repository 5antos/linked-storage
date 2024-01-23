#> linked_storage:macros/register_item


# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# If there isn't already an entry for the item in the storage, initialize one with an empty array
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
$execute unless data storage ls:storage items.$(id) run data modify storage ls:storage items.$(id) set value []


# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# If there are no items already in the storage, add them from the chest, under the same entry id
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
$execute unless data storage ls:storage items.$(id)[0] run execute at @e[nbt={Item:{id:"$(id)"}}] run data modify storage ls:storage items.$(id) set from block ^ ^ ^-1 Items


# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Otherwise, if there are items inside the storage, put them in the chest.
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
$execute if data storage ls:storage items.$(id)[0] run execute at @e[nbt={Item:{id:"$(id)"}}] run data modify block ^ ^ ^-1 Items set from storage ls:storage items.$(id)


# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
# Add the LS_LINKED tag to the item frame, representing that it is linked to a storage
# ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――
$tag @e[nbt={Item:{id:"$(id)"}}] add LS_LINKED
