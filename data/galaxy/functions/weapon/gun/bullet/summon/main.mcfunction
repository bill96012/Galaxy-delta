# summon
execute at @s anchored eyes run summon minecraft:armor_stand ^ ^ ^0.5 {DisabledSlots:4144959,Marker:1b,NoGravity:1b,Invulnerable:1b,Small:1b,Invisible:1b,Tags:["bullet","init"],ArmorItems:[{id:"minecraft:diamond_sword",Count:1b,tag:{CustomModelData:100,CustomData:{galaxy:{Type:"data_storage",data:{entityDamaged:[]}}}}},{},{},{}]}
execute as @e[tag=bullet,tag=init] at @s unless block ~ ~ ~ #minecraft:passable unless block ~ ~ ~ #minecraft:transparent run kill @s

execute unless score @s reqGunFire matches 11 run function galaxy:weapon/gun/bullet/summon/get_data-hand_main
execute if score @s reqGunFire matches 11 run function galaxy:weapon/gun/bullet/summon/get_data-hand_off

scoreboard players set @e[tag=bullet,tag=init,limit=1] bulletTraceCD 12
scoreboard players set @e[tag=bullet,tag=init,limit=1] bulletDistance 0

function galaxy:weapon/gun/bullet/summon/offset/main

execute if score @e[tag=bullet,tag=init,limit=1] bulletColor matches 17 run function galaxy:weapon/gun/bullet/summon/rainbow

tag @e[tag=bullet,tag=init] remove init

scoreboard players remove @s gunBulletSummon 1
execute if entity @s[scores={gunBulletSummon=1..}] at @s run function galaxy:weapon/gun/bullet/summon/main