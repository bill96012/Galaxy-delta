execute store result score #1 calcu_temp run scoreboard players get @s cdActStun
execute if entity @s[scores={sucActStun=1..}] store result score #2 calcu_temp run scoreboard players get #katana_act_stun_hit_cd Config
execute if entity @s[scores={sucActStun=0}] store result score #2 calcu_temp run scoreboard players get #katana_act_stun_miss_cd Config
scoreboard players operation #1 calcu_temp *= #1000 num
scoreboard players operation #1 calcu_temp /= #2 calcu_temp
execute if score #1 calcu_temp matches 901..1000 run title @s actionbar [{"translate":"action.stun","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"+","color":"yellow"},{"text":"---------","color":"gray"},{"text":"]","color":"dark_gray"}]
execute if score #1 calcu_temp matches 801..900 run title @s actionbar [{"translate":"action.stun","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"=","color":"green"},{"text":"+","color":"yellow"},{"text":"--------","color":"gray"},{"text":"]","color":"dark_gray"}]
execute if score #1 calcu_temp matches 701..800 run title @s actionbar [{"translate":"action.stun","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"==","color":"green"},{"text":"+","color":"yellow"},{"text":"-------","color":"gray"},{"text":"]","color":"dark_gray"}]
execute if score #1 calcu_temp matches 601..700 run title @s actionbar [{"translate":"action.stun","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"===","color":"green"},{"text":"+","color":"yellow"},{"text":"------","color":"gray"},{"text":"]","color":"dark_gray"}]
execute if score #1 calcu_temp matches 501..600 run title @s actionbar [{"translate":"action.stun","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"====","color":"green"},{"text":"+","color":"yellow"},{"text":"-----","color":"gray"},{"text":"]","color":"dark_gray"}]
execute if score #1 calcu_temp matches 401..500 run title @s actionbar [{"translate":"action.stun","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"=====","color":"green"},{"text":"+","color":"yellow"},{"text":"----","color":"gray"},{"text":"]","color":"dark_gray"}]
execute if score #1 calcu_temp matches 301..400 run title @s actionbar [{"translate":"action.stun","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"======","color":"green"},{"text":"+","color":"yellow"},{"text":"---","color":"gray"},{"text":"]","color":"dark_gray"}]
execute if score #1 calcu_temp matches 201..300 run title @s actionbar [{"translate":"action.stun","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"=======","color":"green"},{"text":"+","color":"yellow"},{"text":"--","color":"gray"},{"text":"]","color":"dark_gray"}]
execute if score #1 calcu_temp matches 101..200 run title @s actionbar [{"translate":"action.stun","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"========","color":"green"},{"text":"+","color":"yellow"},{"text":"-","color":"gray"},{"text":"]","color":"dark_gray"}]
execute if score #1 calcu_temp matches 1..100 run title @s actionbar [{"translate":"action.stun","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"=========","color":"green"},{"text":"+","color":"yellow"},{"text":"]","color":"dark_gray"}]
execute if score #1 calcu_temp matches ..0 run title @s actionbar [{"translate":"action.stun","color":"aqua"},{"text":" [","color":"gray"},{"text":"==========","color":"green"},{"text":"]","color":"gray"}]

scoreboard players set @s hudKatana 3
