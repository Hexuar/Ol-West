####################################################
##### Ol' West ##### Loop ##### By Hellogaming #####
####################################################

##### Revolver

## Load

execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{revolver:1b,Charged:1b}}},nbt=!{SelectedItem:{tag:{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,tag:{clipItem:1b,display:{Name:'{"text":"Clip","italic":false}'}}}]}}}] run function ol_west:items/revolver_kick_arrow
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{revolver:1b,Charged:1b}}]},nbt=!{Inventory:[{Slot:-106b,tag:{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,tag:{clipItem:1b,display:{Name:'{"text":"Clip","italic":false}'}}}]}}]}] run function ol_west:items/revolver_kick_arrow_offhand

## //Load
## Reload

item replace entity @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{revolver:1b,Charged:1b,Clip:0b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,tag:{clipItem:1b,display:{Name:'{"text":"Clip","italic":false}'}}}]}}}] weapon.mainhand with crossbow{display:{Name:'{"text":"Revolver","italic":false}'},CustomModelData:159887,revolver:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,tag:{clipItem:1b,display:{Name:'{"text":"Clip","italic":false}'}}}],Charged:1b,Clip:6b,recharged:1b}
item replace entity @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{revolver:1b,Charged:1b,Clip:0b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,tag:{clipItem:1b,display:{Name:'{"text":"Clip","italic":false}'}}}]}}]}] weapon.offhand with crossbow{display:{Name:'{"text":"Revolver","italic":false}'},CustomModelData:159887,revolver:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,tag:{clipItem:1b,display:{Name:'{"text":"Clip","italic":false}'}}}],Charged:1b,Clip:6b,recharged:1b}

## //Reload
## Shoot

tag @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{revolver:1b}}}] add holdingRevolver
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{revolver:1b}}]}] add holdingRevolverO

execute as @a[tag=holdingRevolver,scores={shootCrossbow=1..}] at @s positioned ~ ~1 ~ run function ol_west:items/revolver_shoot
execute as @a[tag=holdingRevolverO,scores={shootCrossbow=1..}] at @s positioned ~ ~1 ~ run function ol_west:items/revolver_shoot_offhand

tag @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{revolver:1b}}]}] remove holdingRevolverO
tag @a[nbt=!{SelectedItem:{id:"minecraft:crossbow",tag:{revolver:1b}}}] remove holdingRevolver


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

execute as @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{winchester:1b,Charged:1b}}},nbt=!{SelectedItem:{tag:{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,tag:{bullet:1b,display:{Name:'{"text":"Bullet","italic":false}'}}}]}}}] run function ol_west:items/winchester/kick_arrow
execute as @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{winchester:1b,Charged:1b}}]},nbt=!{Inventory:[{Slot:-106b,tag:{ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,tag:{bullet:1b,display:{Name:'{"text":"Bullet","italic":false}'}}}]}}]}] run function ol_west:items/winchester/kick_arrow_offhand

## //Load
## Shoot

tag @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{winchester:1b}}}] add holdingWinchester
tag @a[nbt={Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{winchester:1b}}]}] add holdingWinchesterO

execute as @a[tag=holdingWinchester,scores={shootCrossbow=1..}] at @s positioned ~ ~1 ~ run function ol_west:items/winchester/shoot
execute as @a[tag=holdingWinchesterO,scores={shootCrossbow=1..}] at @s positioned ~ ~1 ~ run function ol_west:items/winchester/shoot_offhand

tag @a[nbt=!{Inventory:[{Slot:-106b,id:"minecraft:crossbow",tag:{winchester:1b}}]}] remove holdingWinchesterO
tag @a[nbt=!{SelectedItem:{id:"minecraft:crossbow",tag:{winchester:1b}}}] remove holdingWinchester


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