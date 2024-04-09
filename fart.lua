---@type Plugin
local plugin = ...
plugin.name = 'Fart'
plugin.author = 'sans'
plugin.description = 'poopoo stinky haha'

local fart
local gasreleases = {
    "*silently farts*",
    "*toots*",
    "*rips a big one*",
    "*burst fires gas out of ass*",
    "*cuts the cheese*",
    "*releases borborygmus at an alarming rate*",
    "*shoots a cosmic blast of air and dies*",
}

local function fart(human)
  local ass = human:getRigidBody(3)
  		human:addVelocity(Vector(0,-0.05,0))
  		human:speak(string.format("%s", gasreleases[math.random(#gasreleases)]), 1) 
		--- I dont think math.random is needed i was on crack when I made this
	    events.createSound(48, ass.pos, 1, math.random())
end

plugin.commands['/fart'] = {
  info = 'Makes you fart. Can be silent or deafening',
  canCall = function (ply) return ply end,
  call = function (ply, man, _)
    assert(man, "not spawned in.")
		if man.isAlive == true then
			fart(ply.human)
		end
	end
}