--Splash.png

SplashScreen = GUI:new()

function SplashScreen:setup()
	--leaving this as Games for now
	splashImage = love.graphics.newImage("images/".. "Splash.png")
end

function SplashScreen:draw()
	--centers the logo
	love.graphics.draw(splashImage, Game.width / 2 - splashImage:getWidth() /2 ,0 )
end