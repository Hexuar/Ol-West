
playsound entity.dragon_fireball.explode player @a ~ ~ ~
execute store result entity @s damage double 0.01 run scoreboard players get #winchester bulletDamage

tag @s add hasTags