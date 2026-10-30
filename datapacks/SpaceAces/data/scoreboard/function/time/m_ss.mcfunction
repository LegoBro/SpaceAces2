# gets time into m_ss
function scoreboard:time
execute if score time.seconds Numbers matches 10.. run data modify storage scoreboard:time text set value [{score:{name:"time.minutes",objective:"Numbers"}},":",{score:{name:"time.seconds",objective:"Numbers"}}]
execute unless score time.seconds Numbers matches 10.. run data modify storage scoreboard:time text set value [{score:{name:"time.minutes",objective:"Numbers"}},":0",{score:{name:"time.seconds",objective:"Numbers"}}]