execute as @s[nbt=!{SelectedItem:{tag:{ChargedProjectiles:[{id:"minecraft:arrow",tag:{ctc:{id:'bullet', from:'hexuar:ol_west'}}}]}}}] run give @s arrow
execute as @s[nbt={SelectedItem:{tag:{ChargedProjectiles:[{id:"minecraft:arrow",tag:{ctc:{id:'bullet', from:'hexuar:ol_west'}}}]}}}] run loot give @s loot ol_west:items/bullet
item modify entity @s weapon.mainhand ol_west:revolver_0