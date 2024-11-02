summon item ~ ~ ~ {Item:{id:"minecraft:arrow"},Tags:["ol_west.new"]}
data modify entity @n[type=item,tag=ol_west.new] Item set from entity @s SelectedItem.components."minecraft:charged_projectiles"[0]
item modify entity @n[type=item,tag=ol_west.new] container.0 ol_west:clean_projectile_data
tag @n[type=item,tag=ol_west.new] remove ol_west.new