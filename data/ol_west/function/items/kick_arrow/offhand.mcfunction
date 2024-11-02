# Return Projectile
execute if entity @s[gamemode=!creative] run function ol_west:items/return_projectile/offhand

# Clear Projectiles
item modify entity @s weapon.offhand ol_west:clear_projectiles
item modify entity @s weapon.offhand ol_west:remove_projectiles
item modify entity @s weapon.offhand ol_west:clear_projectiles