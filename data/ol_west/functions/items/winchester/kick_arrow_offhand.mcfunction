execute as @s[nbt={Inventory:[{Slot:-106b,tag:{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,tag:{bullet:1b}}]}}]}] run function ol_west:give/bullet
execute as @s[nbt={Inventory:[{Slot:-106b,tag:{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,tag:{clipItem:1b}}]}}]}] run function ol_west:give/clip
item replace entity @s weapon.offhand with crossbow