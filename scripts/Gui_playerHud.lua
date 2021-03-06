require('scripts/Gui')

PlayerHud = GUI:new()

function PlayerHud:setup()
	--leaving this as Games for now
	heartImage 		= love.graphics.newImage("images/Gui/".. "heart_full_16x16.png")
	halfHeartImage 	= love.graphics.newImage("images/Gui/".. "heart_half_16x16.png")
	emptyHeartImage = love.graphics.newImage("images/Gui/".. "heart_empty_16x16.png")

	waterImage 		= love.graphics.newImage("images/Gui/".. "bottleFull.png")
	halfWaterImage 	= love.graphics.newImage("images/Gui/".. "bottleHalf.png")
	emptyWaterImage = love.graphics.newImage("images/Gui/".. "bottleEmpty.png")
	
	heartHolder 	= {}
	waterHolder 	= {}

end

function PlayerHud:draw()
	for i,v in ipairs(heartHolder) do  	
			 love.graphics.draw(heartHolder[i], i * 20 ,10 )
	end
	for i,v in ipairs(waterHolder) do  	
		 love.graphics.draw(waterHolder[i], i * 20 ,30 )
	end
	love.graphics.print("Current FPS: "..tostring(love.timer.getFPS( )), 150, 10)
end

function PlayerHud:update(dt)
------------------------display the hearts
	for i,v in ipairs(heartHolder ) do  	
		heartHolder[i]=nil
	end
	
	if Game.player_Health == 10 then
		table.insert(heartHolder ,heartImage)
		table.insert(heartHolder ,heartImage)
		table.insert(heartHolder ,heartImage)
		table.insert(heartHolder ,heartImage)
		table.insert(heartHolder ,heartImage)	
	end
	
	if Game.player_Health == 9 then
		table.insert(heartHolder,heartImage)
		table.insert(heartHolder,heartImage)
		table.insert(heartHolder ,heartImage)
		table.insert(heartHolder ,heartImage)
		table.insert(heartHolder ,halfHeartImage)	
	end
	
	if Game.player_Health == 8 then
		table.insert(heartHolder ,heartImage)
		table.insert(heartHolder ,heartImage)
		table.insert(heartHolder ,heartImage)
		table.insert(heartHolder ,heartImage)
		table.insert(heartHolder ,emptyHeartImage)	
	end
	
	if Game.player_Health == 7 then
		table.insert(heartHolder ,heartImage)
		table.insert(heartHolder ,heartImage)
		table.insert(heartHolder ,heartImage)
		table.insert(heartHolder ,halfHeartImage)
		table.insert(heartHolder ,emptyHeartImage)	
	end
	
	if Game.player_Health == 6 then
		table.insert(heartHolder ,heartImage)
		table.insert(heartHolder ,heartImage)
		table.insert(heartHolder ,heartImage)
		table.insert(heartHolder ,emptyHeartImage)
		table.insert(heartHolder ,emptyHeartImage)	
	end
	
	if Game.player_Health == 5 then
		table.insert(heartHolder ,heartImage)
		table.insert(heartHolder ,heartImage)
		table.insert(heartHolder ,halfHeartImage)
		table.insert(heartHolder ,emptyHeartImage)
		table.insert(heartHolder ,emptyHeartImage)	
	end

	if Game.player_Health == 4 then
		table.insert(heartHolder ,heartImage)
		table.insert(heartHolder ,heartImage)
		table.insert(heartHolder ,emptyHeartImage)
		table.insert(heartHolder ,emptyHeartImage)
		table.insert(heartHolder ,emptyHeartImage)	
	end
		
	if Game.player_Health == 3 then
		table.insert(heartHolder ,heartImage)
		table.insert(heartHolder ,halfHeartImage)
		table.insert(heartHolder ,emptyHeartImage)
		table.insert(heartHolder ,emptyHeartImage)
		table.insert(heartHolder ,emptyHeartImage)	
	end

	if Game.player_Health == 2 then
		table.insert(heartHolder ,heartImage)
		table.insert(heartHolder ,emptyHeartImage)
		table.insert(heartHolder ,emptyHeartImage)
		table.insert(heartHolder ,emptyHeartImage)
		table.insert(heartHolder ,emptyHeartImage)	
	end

	if Game.player_Health == 1 then
		table.insert(heartHolder ,halfHeartImage)
		table.insert(heartHolder ,emptyHeartImage)
		table.insert(heartHolder ,emptyHeartImage)
		table.insert(heartHolder ,emptyHeartImage)
		table.insert(heartHolder ,emptyHeartImage)	
	end

	if Game.player_Health <= 0 then
		table.insert(heartHolder ,emptyHeartImage)
		table.insert(heartHolder ,emptyHeartImage)
		table.insert(heartHolder ,emptyHeartImage)
		table.insert(heartHolder ,emptyHeartImage)
		table.insert(heartHolder ,emptyHeartImage)	
	end
---------------------------------	display the water
	for i,v in ipairs(waterHolder ) do  	
		waterHolder[i]=nil
	end
	
	if Game.player_Water == 10 then
		table.insert(waterHolder ,waterImage)
		table.insert(waterHolder ,waterImage)
		table.insert(waterHolder ,waterImage)
		table.insert(waterHolder ,waterImage)
		table.insert(waterHolder ,waterImage)	
	end
	
	if Game.player_Water == 9 then
		table.insert(waterHolder,waterImage)
		table.insert(waterHolder,waterImage)
		table.insert(waterHolder ,waterImage)
		table.insert(waterHolder ,waterImage)
		table.insert(waterHolder ,halfWaterImage)	
	end
	
	if Game.player_Water == 8 then
		table.insert(waterHolder ,waterImage)
		table.insert(waterHolder ,waterImage)
		table.insert(waterHolder ,waterImage)
		table.insert(waterHolder ,waterImage)
		table.insert(waterHolder ,emptyWaterImage)	
	end
	
	if Game.player_Water == 7 then
		table.insert(waterHolder ,waterImage)
		table.insert(waterHolder ,waterImage)
		table.insert(waterHolder ,waterImage)
		table.insert(waterHolder ,halfWaterImage)
		table.insert(waterHolder ,emptyWaterImage)	
	end
	
	if Game.player_Water == 6 then
		table.insert(waterHolder ,waterImage)
		table.insert(waterHolder ,waterImage)
		table.insert(waterHolder ,waterImage)
		table.insert(waterHolder ,emptyWaterImage)
		table.insert(waterHolder ,emptyWaterImage)	
	end
	
	if Game.player_Water == 5 then
		table.insert(waterHolder ,waterImage)
		table.insert(waterHolder ,waterImage)
		table.insert(waterHolder ,halfWaterImage)
		table.insert(waterHolder ,emptyWaterImage)
		table.insert(waterHolder ,emptyWaterImage)	
	end

	if Game.player_Water == 4 then
		table.insert(waterHolder ,waterImage)
		table.insert(waterHolder ,waterImage)
		table.insert(waterHolder ,emptyWaterImage)
		table.insert(waterHolder ,emptyWaterImage)
		table.insert(waterHolder ,emptyWaterImage)	
	end
		
	if Game.player_Water == 3 then
		table.insert(waterHolder ,waterImage)
		table.insert(waterHolder ,halfWaterImage)
		table.insert(waterHolder ,emptyWaterImage)
		table.insert(waterHolder ,emptyWaterImage)
		table.insert(waterHolder ,emptyWaterImage)	
	end

	if Game.player_Water == 2 then
		table.insert(waterHolder ,waterImage)
		table.insert(waterHolder ,emptyWaterImage)
		table.insert(waterHolder ,emptyWaterImage)
		table.insert(waterHolder ,emptyWaterImage)
		table.insert(waterHolder ,emptyWaterImage)	
	end

	if Game.player_Water == 1 then
		table.insert(waterHolder ,halfWaterImage)
		table.insert(waterHolder ,emptyWaterImage)
		table.insert(waterHolder ,emptyWaterImage)
		table.insert(waterHolder ,emptyWaterImage)
		table.insert(waterHolder ,emptyWaterImage)	
	end

	if Game.player_Water <= 0 then
		table.insert(waterHolder ,emptyWaterImage)
		table.insert(waterHolder ,emptyWaterImage)
		table.insert(waterHolder ,emptyWaterImage)
		table.insert(waterHolder ,emptyWaterImage)
		table.insert(waterHolder ,emptyWaterImage)	
	end
end
