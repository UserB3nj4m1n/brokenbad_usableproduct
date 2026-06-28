# Load scoreboard objectives
scoreboard objectives add trip_time dummy "Trip Timer"
scoreboard objectives add trip_stage dummy "Trip Stage"
scoreboard objectives add trip_rand dummy "Random Selector"
scoreboard objectives add trip_wobble dummy "Wobble Ticks"

# Kill any orphaned illusions on reload/load
kill @e[tag=trippy_illusion]
