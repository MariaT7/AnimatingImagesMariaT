

-- Title: AnimatingImages
-- Name: Maria T
-- Course: ICS2O/3C
-- This program displays 3 images moving in different directions, 
-- with some coloured text and a background

----------------------------------------------------------------------------------------

-- hide the status bar
display.setStatusBar(display.HiddenStatusBar)

-- global variables
scrollSpeed = 2.25

-- background image with width and height
local backgroundImage = display.newImageRect("Images/background.png", 2048, 1536)

-- characheter image with width and height
local Google = display.newImageRect("Images/Google.png", 350, 350)

-- set the image to be transparent
Google.alpha = 0

--set the initial x and y position of Google
Google.x = 200
Google.y = display.contentHeight/3

-- background sound
local bSound = audio.loadSound("Sounds/background.mp3") -- Setting a variable to an mp3 file 
local bSoundChannel



	bSoundChannel = audio.play(bSound)

-- Function: MoveGoo
-- Input: this function accepts an event listener
-- Output: none
-- Description: this function adds the scroll speed to the x-value of the Goo
local function MoveGoo(event)
	-- add the scroll speed to the x-value of the Goo
	Google.x = Google.x + scrollSpeed

	Google.y = Google.y + scrollSpeed
	-- change the transparency of the Goo every time is moves so that it fades out
	Google.alpha = Google.alpha + 0.1
end

-- MoveShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveGoo)

------------------

-- global variables
scrollSpeed1 = -3

-- characheter image with width and height
local sphere = display.newImageRect("Images/sphere.png", 230, 230)
-- set the image to be transparent
--sphere.alpha = 0

--set the initial x and y position of octoship
sphere.x = 1000
sphere.y = display.contentHeight/1.5

-- Function: Movesphere
-- Input: this function accepts an event listener
-- Output: none
-- Description: this function adds the scroll speed to the x-value of the sphere
local function Movesphere(event)
	-- add the scroll speed to the x-value of the sphere
	sphere.x = sphere.x + scrollSpeed1
	-- change the transparency of the sphere every time is moves so that it fades out
	sphere.alpha = sphere.alpha - 0.00001
end



-- sphere will be called over and over again
Runtime:addEventListener("enterFrame", Movesphere)

--------------------

-- global variables
scrollSpeed2 = -2

-- characheter image with width and height
local Mit = display.newImageRect("Images/Mitflipped.png", 350, 350)
-- set the image to be transparent
Mit.alpha = 0

Mit:scale (-1, 1)

--set the initial x and y position of Mit
Mit.x = 980
Mit.y = display.contentHeight/3

-- Function: MoveMit
-- Input: this function accepts an event listener
-- Output: none
-- Description: this function adds the scroll speed to the x-value of the ship
local function MoveMit(event)
	-- add the scroll speed to the x-value of the Mit
	Mit.x = Mit.x + scrollSpeed2

    --make the Mit crest rotate
	Mit.rotation = Mit.rotation + scrollSpeed2

	-- change the transparency of the Mit every time is moves so that it fades 
	Mit.alpha = Mit.alpha + 0.01
end

-- OctoShip will be called over and over again
Runtime:addEventListener("enterFrame", MoveMit)

----------------------

-- global variables
scrollSpeed3 = 3

-- characheter image with width and height
local Arrow = display.newImageRect("Images/Arrow.png", 200, 200)
-- set the image to be transparent
Arrow.alpha = 0

Arrow:scale (-1, 1)

--set the initial x and y position of Arrow
Arrow.x = 0
Arrow.y = display.contentHeight/3

------------

-- Function: MoveArrow
-- Input: this function accepts an event listener
-- Output: none
-- Description: this function adds the scroll speed to the x-value of the Arrow
local function MoveArrow(event)
	-- add the scroll speed to the x-value of the Arrow
	Arrow.x = Arrow.x + scrollSpeed3

    -- width equals width plus scrollspeed
	Arrow.width = Arrow.width + scrollSpeed3

	Arrow.height = Arrow.height + scrollSpeed3

	-- change the transparency of the Arrow every time is moves so that it fades in
	Arrow.alpha = Arrow.alpha + 0.03
end

-- Arrow will be called over and over again
Runtime:addEventListener("enterFrame", MoveArrow)








