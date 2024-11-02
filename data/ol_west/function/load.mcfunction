scoreboard objectives add ol_west.shootCrossbow minecraft.used:minecraft.crossbow
scoreboard objectives add ol_west.bulletDamage dummy
scoreboard objectives add ol_west.value dummy

execute unless score #initiated ol_west.value matches 1 run scoreboard players set #revolver ol_west.bulletDamage 200
execute unless score #initiated ol_west.value matches 1 run scoreboard players set #winchester ol_west.bulletDamage 350
scoreboard players set #initiated ol_west.value 1