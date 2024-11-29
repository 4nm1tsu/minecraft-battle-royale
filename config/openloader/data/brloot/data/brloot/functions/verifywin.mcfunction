schedule clear brloot:endgame
schedule clear brloot:applywither
execute if score .Players playerCount matches 2.. run schedule clear brloot:verifywin
execute if score .Players playerCount matches 2.. run scoreboard players add @a[gamemode=survival] wins 1
execute if score .Players playerCount matches 2.. run title @a[gamemode=survival] times 20 60 20
execute if score .Players playerCount matches 2.. run title @a[gamemode=survival] title ["",{"selector":"@s","color":"green","bold":true},{"text":"Won The Game!","color":"green","bold":false}]
execute if score .Players playerCount matches 2.. run tellraw @a ["",{"selector":"@a[gamemode=survival]","bold":true,"color":"gold"},{"text":" has won the game!","color":"gold"}]
execute if score .Players playerCount matches 2.. run clear
execute if score .Players playerCount matches 2.. run gamemode spectator @a
execute if score .Players playerCount matches 2.. run say Round over... Starting new round in 5 seconds
execute if score .Players playerCount matches 2.. run schedule function brloot:plrcount 5s replace
