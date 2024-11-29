execute store result score .Players playerCount if entity @a
execute as @a[scores={.Players=2..}] run schedule function brloot:plrcount 1t replace
execute if score gameStarted started matches 0 run schedule function brloot:plrcount 1t append



scoreboard objectives setdisplay sidebar totalkills
scoreboard objectives setdisplay list wins

team join notag @a

gamemode spectator @a[gamemode=!spectator, scores={deaths=1}] 
scoreboard players set @a deaths 0
#remove if you need to go into creative
#execute if score .Players playerCount matches 1 run gamemode spectator @a
execute if score .Players playerCount matches 1 run title @a times 0 99999 0
execute if score .Players playerCount matches 1 run scoreboard players set gameStarted started 0

execute store result score survivals playerCount if entity @a[gamemode=survival]
execute if score survivals playerCount matches 1 run schedule function brloot:verifywin 1 replace
#execute if entity @a[gamemode=spectator] run schedule function brloot:plrcount 1t replace
