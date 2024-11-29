execute if score .Players playerCount matches 2.. run scoreboard players set gameStarted started 1
execute if score .Players playerCount matches 2.. run schedule clear brloot:plrcount
execute if score .Players playerCount matches 2.. run schedule clear brloot:start
execute if score .Players playerCount matches 2.. run schedule function brloot:start 1t replace
execute if score .Players playerCount matches 1 run title @a times 0 99999 0
execute if score .Players playerCount matches 1 run title @a title ["",{"selector":"@s","color":"green","bold":true},{"text":"Waiting for players...","color":"green","bold":false}]

