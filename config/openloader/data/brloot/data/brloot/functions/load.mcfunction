scoreboard objectives add count dummy
scoreboard objectives add playerCount dummy
scoreboard objectives add totalkills playerKillCount "Total Player Kills"
scoreboard objectives add wins dummy "Total Wins"
scoreboard objectives add deaths deathCount
scoreboard objectives add joined_game minecraft.custom:minecraft.leave_game
scoreboard objectives add JoinedBefore minecraft.custom:minecraft.leave_game
scoreboard objectives add started dummy
scoreboard players set gameStarted started 0

team add notag
team modify notag nametagVisibility never
