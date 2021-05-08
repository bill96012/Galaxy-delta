execute store result score #1 calcu_temp run scoreboard players get @s ktnFlashCd
execute if entity @s[scores={ktnFlashMoved=1..}] run scoreboard players operation #1 calcu_temp *= #1000 num
execute if entity @s[scores={ktnFlashMoved=1..}] run scoreboard players operation #1 calcu_temp /= @s ktnFlashCdMax
execute if score #1 calcu_temp matches 901..1000 run title @s actionbar [{"translate":"action.flash","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"+","color":"yellow"},{"text":"---------","color":"gray"},{"text":"]","color":"dark_gray"}]
execute if score #1 calcu_temp matches 801..900 run title @s actionbar [{"translate":"action.flash","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"=","color":"green"},{"text":"+","color":"yellow"},{"text":"--------","color":"gray"},{"text":"]","color":"dark_gray"}]
execute if score #1 calcu_temp matches 701..800 run title @s actionbar [{"translate":"action.flash","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"==","color":"green"},{"text":"+","color":"yellow"},{"text":"-------","color":"gray"},{"text":"]","color":"dark_gray"}]
execute if score #1 calcu_temp matches 601..700 run title @s actionbar [{"translate":"action.flash","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"===","color":"green"},{"text":"+","color":"yellow"},{"text":"------","color":"gray"},{"text":"]","color":"dark_gray"}]
execute if score #1 calcu_temp matches 501..600 run title @s actionbar [{"translate":"action.flash","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"====","color":"green"},{"text":"+","color":"yellow"},{"text":"-----","color":"gray"},{"text":"]","color":"dark_gray"}]
execute if score #1 calcu_temp matches 401..500 run title @s actionbar [{"translate":"action.flash","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"=====","color":"green"},{"text":"+","color":"yellow"},{"text":"----","color":"gray"},{"text":"]","color":"dark_gray"}]
execute if score #1 calcu_temp matches 301..400 run title @s actionbar [{"translate":"action.flash","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"======","color":"green"},{"text":"+","color":"yellow"},{"text":"---","color":"gray"},{"text":"]","color":"dark_gray"}]
execute if score #1 calcu_temp matches 201..300 run title @s actionbar [{"translate":"action.flash","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"=======","color":"green"},{"text":"+","color":"yellow"},{"text":"--","color":"gray"},{"text":"]","color":"dark_gray"}]
execute if score #1 calcu_temp matches 101..200 run title @s actionbar [{"translate":"action.flash","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"========","color":"green"},{"text":"+","color":"yellow"},{"text":"-","color":"gray"},{"text":"]","color":"dark_gray"}]
execute if score #1 calcu_temp matches 1..100 run title @s actionbar [{"translate":"action.flash","color":"gray"},{"text":" [","color":"dark_gray"},{"text":"=========","color":"green"},{"text":"+","color":"yellow"},{"text":"]","color":"dark_gray"}]
execute if score #galaxy$katana_act_flash_charge Config matches 0 if score #1 calcu_temp matches ..0 run title @s actionbar [{"translate":"action.flash","color":"aqua"},{"text":" [","color":"gray"},{"text":"==========","color":"green"},{"text":"]","color":"gray"}]
execute if score #galaxy$katana_act_flash_charge Config matches 1 if score #1 calcu_temp matches ..0 run function galaxy:hud/katana/flash/charge

scoreboard players set @s hudKatana 4
