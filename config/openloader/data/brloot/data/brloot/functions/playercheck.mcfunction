execute as @a[scores={joined_game=1..}] run tellraw @s ["",{"text":"Welcome back, "}, {"selector":"@s"}, {"text":"!"}]
execute as @a[scores={joined_game=1..}] run gamemode spectator @s
execute as @a[scores={joined_game=1..}] run scoreboard players reset @s joined_game

execute as @a[tag=!JoinedBefore] run tellraw @s ["",{"text":"Welcome to Craft Royale, "}, {"selector":"@s"}, {"text":"! Since this is your first time playing, it is highly recommended to change your settings to what you see fit."}]
execute as @a[tag=!JoinedBefore] run tag @s add JoinedBefore