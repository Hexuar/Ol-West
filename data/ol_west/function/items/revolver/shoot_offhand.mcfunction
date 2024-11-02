execute as @n[type=minecraft:arrow] run function ol_west:entity/revolver_bullet

# Set rounds
execute store result score #rounds ol_west.value run data get entity @s Inventory[{Slot:-106b}].components.minecraft:custom_data.ol_west.rounds
execute if score #rounds ol_west.value matches ..0 run scoreboard players set #rounds ol_west.value 6
scoreboard players remove #rounds ol_west.value 1

execute store result storage ol_west:input rounds int 1 run scoreboard players get #rounds ol_west.value
function ol_west:items/revolver/update_rounds_offhand with storage ol_west:input

execute if score #rounds ol_west.value matches 0 run return 0

# Load new projectile
item modify entity @s weapon.offhand ol_west:add_projectile