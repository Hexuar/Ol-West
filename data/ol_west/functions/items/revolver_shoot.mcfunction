tag @e[type=arrow,distance=..2] add revolverBullet

replaceitem entity @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{revolver:1b,Clip:1b}}}] weapon.mainhand crossbow{display:{Name:'{"text":"Revolver","italic":false}'},CustomModelData:2220401,revolver:1b,ChargedProjectiles:[{}],Charged:0b,Clip:0b}
replaceitem entity @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{revolver:1b,Clip:2b}}}] weapon.mainhand crossbow{display:{Name:'{"text":"Revolver","italic":false}'},CustomModelData:2220401,revolver:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,tag:{clipItem:1b,display:{Name:'{"text":"Clip","italic":false}'}}}],Charged:1b,Clip:1b}
replaceitem entity @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{revolver:1b,Clip:3b}}}] weapon.mainhand crossbow{display:{Name:'{"text":"Revolver","italic":false}'},CustomModelData:2220401,revolver:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,tag:{clipItem:1b,display:{Name:'{"text":"Clip","italic":false}'}}}],Charged:1b,Clip:2b}
replaceitem entity @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{revolver:1b,Clip:4b}}}] weapon.mainhand crossbow{display:{Name:'{"text":"Revolver","italic":false}'},CustomModelData:2220401,revolver:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,tag:{clipItem:1b,display:{Name:'{"text":"Clip","italic":false}'}}}],Charged:1b,Clip:3b}
replaceitem entity @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{revolver:1b,Clip:5b}}}] weapon.mainhand crossbow{display:{Name:'{"text":"Revolver","italic":false}'},CustomModelData:2220401,revolver:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,tag:{clipItem:1b,display:{Name:'{"text":"Clip","italic":false}'}}}],Charged:1b,Clip:4b}
replaceitem entity @a[nbt={SelectedItem:{id:"minecraft:crossbow",tag:{revolver:1b,Clip:6b}}}] weapon.mainhand crossbow{display:{Name:'{"text":"Revolver","italic":false}'},CustomModelData:2220401,revolver:1b,ChargedProjectiles:[{id:"minecraft:arrow",Count:1b,tag:{clipItem:1b,display:{Name:'{"text":"Clip","italic":false}'}}}],Charged:1b,Clip:5b}

scoreboard players set @s[scores={shootCrossbow=1..}] shootCrossbow 0
