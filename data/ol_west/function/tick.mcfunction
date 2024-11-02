## Kick Wrong Ammunition
execute as @a[gamemode=!creative] run function ol_west:items/check_projectile


## Shoot
# Winchester
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{ol_west:{winchester:true}}}}},scores={ol_west.shootCrossbow=1..}] at @s run function ol_west:items/winchester/shoot
execute as @a[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{ol_west:{winchester:true}}}}]},scores={ol_west.shootCrossbow=1..}] at @s run function ol_west:items/winchester/shoot

# Revolver
execute as @a[nbt={SelectedItem:{components:{"minecraft:custom_data":{ol_west:{revolver:true}}}}},scores={ol_west.shootCrossbow=1..}] at @s run function ol_west:items/revolver/shoot_mainhand
execute as @a[nbt={Inventory:[{Slot:-106b,components:{"minecraft:custom_data":{ol_west:{revolver:true}}}}]},scores={ol_west.shootCrossbow=1..}] at @s run function ol_west:items/revolver/shoot_offhand

scoreboard players reset @a ol_west.shootCrossbow


## Projectiles
execute at @e[type=minecraft:arrow,tag=ol_west.projectile] run particle ash
kill @e[type=minecraft:arrow,tag=ol_west.projectile,nbt={inGround:1b}]