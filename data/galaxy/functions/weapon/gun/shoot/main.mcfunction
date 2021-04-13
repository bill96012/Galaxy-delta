execute if score @s reqGunFire matches 10..11 run scoreboard players add @s gunSwitch 1
execute if score @s reqGunFire matches 10..11 if score @s gunSwitch matches 2.. run scoreboard players set @s gunSwitch 0

execute unless score @s reqGunFire matches 10..11 run function galaxy:weapon/gun/get_data-hand_main
execute if score @s reqGunFire matches 10 run function galaxy:weapon/gun/get_data-hand_main
execute if score @s reqGunFire matches 11 run function galaxy:weapon/gun/get_data-hand_off

execute if score @s reqGunFire matches 1 unless score @s MhGunAclrate matches 0 run function galaxy:weapon/gun/accelerate/level_up-hand_main
execute if score @s reqGunFire matches 10 unless score @s MhGunAclrate matches 0 run function galaxy:weapon/gun/accelerate/level_up-hand_main
execute if score @s reqGunFire matches 11 unless score @s FhGunAclrate matches 0 run function galaxy:weapon/gun/accelerate/level_up-hand_off
execute if score @s reqGunFire matches 20 unless score @s MhGunAclrate matches 0 run function galaxy:weapon/gun/accelerate/level_up-hand_main-charge

execute if score @s reqGunFire matches 20 run function galaxy:weapon/gun/shoot/charge/main

execute if score @s reqGunFire matches 1 run scoreboard players operation @s gunDelay = @s MhGunDelay
execute if score @s reqGunFire matches 10..11 if score @s MhGunDelay >= @s FhGunDelay run scoreboard players operation @s gunDelay = @s MhGunDelay
execute if score @s reqGunFire matches 10..11 if score @s MhGunDelay < @s FhGunDelay run scoreboard players operation @s gunDelay = @s FhGunDelay
execute if score @s reqGunFire matches 20 run scoreboard players set @s gunDelay 0
execute if score @s reqGunFire matches 21 run scoreboard players operation @s gunDelay = @s MhGunDelay

execute if score @s reqGunFire matches 20 run scoreboard players set @s MhGunHeat 0
execute if score @s reqGunFire matches 20 if score @s gunChargeLvl matches ..99 run scoreboard players operation @s MhGunHeat = @s gunChargeHeat

execute if score @s reqGunFire matches 1 run function galaxy:weapon/gun/temperature/heat-hand_main
execute if score @s reqGunFire matches 10 run function galaxy:weapon/gun/temperature/heat-hand_main
execute if score @s reqGunFire matches 11 run function galaxy:weapon/gun/temperature/heat-hand_off
execute if score @s reqGunFire matches 20 if score @s gunChargeLvl matches ..99 run function galaxy:weapon/gun/temperature/heat-hand_main
execute if score @s reqGunFire matches 21 run function galaxy:weapon/gun/temperature/heat-hand_main

execute unless score @s reqGunFire matches 20 at @s run function galaxy:weapon/gun/bullet/summon

execute unless score @s reqGunFire matches 20 at @s run function galaxy:weapon/gun/sound-shoot
# execute if score @s reqGunFire matches 20 at @s run function galaxy:weapon/gun/sound-charge

execute if score @s reqGunFire matches 21 run function galaxy:weapon/gun/shoot/charge/end

execute store result score #1 calcu_temp run scoreboard players get @s gunDelay
scoreboard players operation #1 calcu_temp %= #4 num
execute unless score #1 calcu_temp matches 0 run scoreboard players add @s gunSchedule 1

execute if score @s reqGunFire matches 20 run scoreboard players set @s gunSchedule 1
