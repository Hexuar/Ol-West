execute as @s[nbt=!{SelectedItem:{tag:{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,tag:{ctc:{id:'clip', from:'hexuar:ol_west'}}}]}}}] run give @s arrow
execute as @s[nbt={SelectedItem:{tag:{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,tag:{ctc:{id:'clip', from:'hexuar:ol_west'}}}]}}}] run loot give @s loot ol_west:items/clip
item modify entity @s weapon.mainhand ol_west:revolver_0