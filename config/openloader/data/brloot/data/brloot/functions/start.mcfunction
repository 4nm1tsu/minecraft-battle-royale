schedule clear brloot:start
schedule function xaero:silent/fairxaero 1 replace
time set 0
scoreboard objectives add count dummy
effect clear @a
worldborder set 50000000
team add test
gamemode survival @a
clear @a
title @a clear
execute as @r run team join test
effect give @a minecraft:resistance infinite 1 true
effect give @a minecraft:instant_health 1 200 true
effect give @a minecraft:saturation infinite 5 true
execute as @r run summon marker ~ 50 ~ {Tags:["lava_level"]}


give @a tacz:modern_kinetic_gun{HasBulletInBarrel:1b,GunFireMode:"SEMI",GunId:"tacz:glock_17",GunCurrentAmmoCount:17}
give @a tacz:ammo{AmmoId:"tacz:9mm"} 36
give @a golden_pickaxe{Enchantments:[{lvl:5,id:efficiency},{lvl:2,id:unbreaking}]}
give @a minecraft:torch 16

execute as @a[team=test] run spreadplayers 0 0 200 99999 false @s
execute as @a[team=test] at @a[team=test] run worldborder center ~ ~
worldborder set 256
execute as @a[team=test] at @a[team=test] run spreadplayers ~ ~ 64 96 false @a
say The round has started! Border will now start closing...
worldborder set 8 420
team remove test
schedule function brloot:endgame 10800 replace
