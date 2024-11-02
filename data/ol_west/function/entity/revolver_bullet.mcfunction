playsound entity.dragon_fireball.explode player @a ~ ~ ~
execute store result entity @s damage double 0.01 run scoreboard players get #revolver ol_west.bulletDamage
tag @s add ol_west.projectile