tag @e[type=arrow,distance=..2] add revolverBullet

item modify entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{ctc:{id:'revolver', from:'hexuar:ol_west'},ol_west:{Clip:1b}}}}] weapon.mainhand ol_west:revolver_0
item modify entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{ctc:{id:'revolver', from:'hexuar:ol_west'},ol_west:{Clip:2b}}}}] weapon.mainhand ol_west:revolver_1
item modify entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{ctc:{id:'revolver', from:'hexuar:ol_west'},ol_west:{Clip:3b}}}}] weapon.mainhand ol_west:revolver_2
item modify entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{ctc:{id:'revolver', from:'hexuar:ol_west'},ol_west:{Clip:4b}}}}] weapon.mainhand ol_west:revolver_3
item modify entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{ctc:{id:'revolver', from:'hexuar:ol_west'},ol_west:{Clip:5b}}}}] weapon.mainhand ol_west:revolver_4
item modify entity @s[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{ctc:{id:'revolver', from:'hexuar:ol_west'},ol_west:{Clip:6b}}}}] weapon.mainhand ol_west:revolver_5

scoreboard players set @s[scores={ol_west.shootCrossbow=1..}] ol_west.shootCrossbow 0
