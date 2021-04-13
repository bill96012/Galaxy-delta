execute if score @s gunChargeLvl matches 100 run data modify storage galaxy:temp +HUD.gun.sub.value set value '{"translate":"%s%%","with":[{"score":{"name":"*","objective":"gunChargeLvl"}}],"color":"aqua"}'
execute if score @s gunChargeLvl matches 10..99 run data modify storage galaxy:temp +HUD.gun.sub.value set value '{"translate":" %s%%","with":[{"score":{"name":"*","objective":"gunChargeLvl"}}],"color":"aqua"}'
execute if score @s gunChargeLvl matches 0..9 run data modify storage galaxy:temp +HUD.gun.sub.value set value '{"translate":"  %s%%","with":[{"score":{"name":"*","objective":"gunChargeLvl"}}],"color":"aqua"}'

execute if score @s gunChargeLvl matches 91..100 run data modify storage galaxy:temp +HUD.gun.sub.bar set value '{"translate":"%s%s%s","with":[{"text":"","color":"gray"},{"text":"","color":"gold"},{"text":"==========","color":"dark_green"}]}'
execute if score @s gunChargeLvl matches 81..90 run data modify storage galaxy:temp +HUD.gun.sub.bar set value '{"translate":"%s%s%s","with":[{"text":"=","color":"gray"},{"text":"+","color":"gold"},{"text":"========","color":"dark_green"}]}'
execute if score @s gunChargeLvl matches 71..80 run data modify storage galaxy:temp +HUD.gun.sub.bar set value '{"translate":"%s%s%s","with":[{"text":"==","color":"gray"},{"text":"+","color":"gold"},{"text":"=======","color":"dark_green"}]}'
execute if score @s gunChargeLvl matches 61..70 run data modify storage galaxy:temp +HUD.gun.sub.bar set value '{"translate":"%s%s%s","with":[{"text":"===","color":"gray"},{"text":"+","color":"gold"},{"text":"======","color":"dark_green"}]}'
execute if score @s gunChargeLvl matches 51..60 run data modify storage galaxy:temp +HUD.gun.sub.bar set value '{"translate":"%s%s%s","with":[{"text":"====","color":"gray"},{"text":"+","color":"gold"},{"text":"=====","color":"dark_green"}]}'
execute if score @s gunChargeLvl matches 41..50 run data modify storage galaxy:temp +HUD.gun.sub.bar set value '{"translate":"%s%s%s","with":[{"text":"=====","color":"gray"},{"text":"+","color":"gold"},{"text":"====","color":"dark_green"}]}'
execute if score @s gunChargeLvl matches 31..40 run data modify storage galaxy:temp +HUD.gun.sub.bar set value '{"translate":"%s%s%s","with":[{"text":"======","color":"gray"},{"text":"+","color":"gold"},{"text":"===","color":"dark_green"}]}'
execute if score @s gunChargeLvl matches 21..30 run data modify storage galaxy:temp +HUD.gun.sub.bar set value '{"translate":"%s%s%s","with":[{"text":"=======","color":"gray"},{"text":"+","color":"gold"},{"text":"==","color":"dark_green"}]}'
execute if score @s gunChargeLvl matches 11..20 run data modify storage galaxy:temp +HUD.gun.sub.bar set value '{"translate":"%s%s%s","with":[{"text":"========","color":"gray"},{"text":"+","color":"gold"},{"text":"=","color":"dark_green"}]}'
execute if score @s gunChargeLvl matches 1..10 run data modify storage galaxy:temp +HUD.gun.sub.bar set value '{"translate":"%s%s%s","with":[{"text":"=========","color":"gray"},{"text":"+","color":"gold"},{"text":"","color":"dark_green"}]}'
execute if score @s gunChargeLvl matches 0 run data modify storage galaxy:temp +HUD.gun.sub.bar set value '{"translate":"%s%s%s","with":[{"text":"==========","color":"gray"},{"text":"","color":"gold"},{"text":"","color":"dark_green"}]}'

data modify storage galaxy:temp +HUD.gun.sub.final set value '{"translate":"[%s] %s","with":[{"nbt":"+HUD.gun.sub.bar","storage":"galaxy:temp","interpret":true},{"nbt":"+HUD.gun.sub.value","storage":"galaxy:temp","interpret":true}],"color":"gray"}'
