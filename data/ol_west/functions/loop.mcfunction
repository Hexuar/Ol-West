###############################
##### Ol' West ##### Loop #####
###############################

##### Revolver

## Load

execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{ctc:{id:'revolver', from:'hexuar:ol_west'},Charged:1b}}},nbt=!{SelectedItem:{tag:{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,tag:{ctc:{id:'clip', from:'hexuar:ol_west'}}}]}}}] run function ol_west:items/revolver_kick_arrow

execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{ctc:{id:'revolver', from:'hexuar:ol_west'},Charged:1b}}]},nbt=!{Inventory:[{Slot:-106b,tag:{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,tag:{ctc:{id:'clip', from:'hexuar:ol_west'}}}]}}]}] run function ol_west:items/revolver_kick_arrow_offhand

## //Load
## Reload

item modify entity @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{ctc:{id:'revolver', from:'hexuar:ol_west'},ol_west:{Clip:0b},Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,tag:{ctc:{id:'clip', from:'hexuar:ol_west'}}}]}}}] weapon.mainhand ol_west:revolver_6

item modify entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{ctc:{id:'revolver', from:'hexuar:ol_west'},ol_west:{Clip:0b},Charged:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,tag:{ctc:{id:'clip', from:'hexuar:ol_west'}}}]}}]}] weapon.offhand ol_west:revolver_6

## //Reload
## Shoot

tag @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{ctc:{id:'revolver', from:'hexuar:ol_west'}}}}] add ol_west.shootCrossbowholdingRevolver
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{ctc:{id:'revolver', from:'hexuar:ol_west'}}}]}] add ol_west.shootCrossbowholdingRevolverO

execute as @a[tag=ol_west.shootCrossbowholdingRevolver,scores={ol_west.shootCrossbow=1..}] at @s positioned ~ ~1 ~ run function ol_west:items/revolver_shoot
execute as @a[tag=ol_west.shootCrossbowholdingRevolverO,scores={ol_west.shootCrossbow=1..}] at @s positioned ~ ~1 ~ run function ol_west:items/revolver_shoot_offhand

tag @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{ctc:{id:'revolver', from:'hexuar:ol_west'}}}]}] remove ol_west.shootCrossbowholdingRevolverO
tag @a[nbt=!{SelectedItem:{id:"minecraft:crossbow",tag:{ctc:{id:'revolver', from:'hexuar:ol_west'}}}}] remove ol_west.shootCrossbowholdingRevolver


## //Shoot
## Bullet

# Summon

execute as @e[type=arrow,tag=revolverBullet,tag=!hasTags] at @s run function ol_west:entity/revolver_bullet

# //Summon
# Alive

execute at @e[type=arrow,tag=revolverBullet] run particle ash ~ ~ ~ 0.2 0.2 0.2 5 50 force @a
kill @e[type=arrow,tag=revolverBullet,nbt={inGround:1b}]

# //Alive
## //Bullet
##### //Revolver



##### Winchester

## Load

execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{ctc:{id:'winchester', from:'hexuar:ol_west'},Charged:1b}}},nbt=!{SelectedItem:{tag:{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,tag:{ctc:{id:'bullet', from:'hexuar:ol_west'}}}]}}}] run function ol_west:items/winchester/kick_arrow
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{ctc:{id:'winchester', from:'hexuar:ol_west'},Charged:1b}}]},nbt=!{Inventory:[{Slot:-106b,tag:{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,tag:{ctc:{id:'bullet', from:'hexuar:ol_west'}}}]}}]}] run function ol_west:items/winchester/kick_arrow_offhand

## //Load
## Shoot

tag @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{ctc:{id:'winchester', from:'hexuar:ol_west'}}}}] add holdingWinchester
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{ctc:{id:'winchester', from:'hexuar:ol_west'}}}]}] add holdingWinchesterO

execute as @a[tag=holdingWinchester,scores={ol_west.shootCrossbow=1..}] at @s positioned ~ ~1 ~ run function ol_west:items/winchester/shoot
execute as @a[tag=holdingWinchesterO,scores={ol_west.shootCrossbow=1..}] at @s positioned ~ ~1 ~ run function ol_west:items/winchester/shoot_offhand

tag @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{ctc:{id:'winchester', from:'hexuar:ol_west'}}}]}] remove holdingWinchesterO
tag @a[nbt=!{SelectedItem:{id:"minecraft:crossbow",tag:{ctc:{id:'winchester', from:'hexuar:ol_west'}}}}] remove holdingWinchester


## //Shoot
## Bullet

# Summon

execute as @e[type=arrow,tag=winchesterBullet,tag=!hasTags] at @s run function ol_west:entity/winchester_bullet

# //Summon
# Alive

execute at @e[type=arrow,tag=winchesterBullet] run particle ash ~ ~ ~ 0.2 0.2 0.2 5 50 force @a
kill @e[type=arrow,tag=winchesterBullet,nbt={inGround:1b}]

# //Alive
## //Bullet
##### //Winchester