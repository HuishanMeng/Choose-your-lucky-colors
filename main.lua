
local myText={
[1]="Pink", 
[2]="Orange",
[3]="Green",
[4]="Blue",
[5]="Purple",
[6]="Red",
[7]="White" 
 }
local myColor={
  [1]={249/255,121/255,255/255}, 
  [2]={255/255,115/255,35/255},
  [3]={35/255,255/255,100/255},
  [4]={17/255,153/255,255/255},
  [5]={166/255,51/255,255/255},
  [6]={255/255,37/255,7/255},
  [7]={255/255,255/255,255/255},                                                     
  }
local physics  = require ("physics")
physics.start()
display.setStatusBar(display.HiddenStatusBar)
local _w, _h
local z1
local textIndex
local myCircle
local snow
_w = display.actualContentWidth
_h = display.actualContentHeight
local background = display.newImage("rainbow.jpg",240,160)
local allText=myText[1].." "..myText[2].." "..myText[3].." "..myText[4].." "..
myText[5].." "..myText[6].." "..myText[7]
local displayWord = display.newText(allText,155,80,"Comic Sans MS",15)
local inText=display.newText("Shake for your lucky color",150,150,"Comic Sans MS",15)
local widget = require( "widget" )

function onShake(event)
	

	if event.isShake then
    textIndex = math.random(1,7)
    local colorIndex= textIndex
	 randomWord = display.newText(myText[textIndex],160,300,"Comic Sans MS",20)	
   	myCircle = display.newCircle( 220, 305, 15 ) 
    myCircle:setFillColor(unpack(myColor[colorIndex]))
    
     local function fallSnow()
    physics.setGravity(0,2)
    snow=display.newImage("snow1.png")
    snow.x=180; snow.y=0; snow.rotation=15
    physics.addBody(snow,"dynamic",{density=0.1, friction=1,bouce=0.2, shape=6})
     end
     if textIndex==7 then    
    fallSnow()
    timer.performWithDelay(300, fallSnow,7)
 
  end
    local function fallFlower()
    physics.setGravity(0,2)
    flower=display.newImage("flower.png")
    flower.x=150; flower.y=0; flower.rotation=15
    physics.addBody(flower,"dynamic",{density=0.1, friction=1,bouce=0.2, shape=6})
     
    end
    if textIndex==1 then    
    
    fallFlower()
    timer.performWithDelay(300, fallFlower,5)
  end
local function fallOrange()
    physics.setGravity(0,2)
    orange=display.newImage("orange.png")
    orange.x=180; orange.y=0; orange.rotation=15
    physics.addBody(orange,"dynamic",{density=0.1, friction=1,bouce=0.2, shape=6})
    
     end
     if textIndex==2 then    
   
    fallOrange()
    timer.performWithDelay(300, fallOrange,5)
 end
local function fallapple()
    physics.setGravity(0,2)
    apple=display.newImage("apple.png")
    apple.x=180; apple.y=0; apple.rotation=15
    physics.addBody(apple,"dynamic",{density=0.1, friction=1,bouce=0.2, shape=6})
    
     end
     if textIndex==3 then    
   
    fallapple()
    timer.performWithDelay(300, fallapple,5)
  end
local function fallDiamond()
    physics.setGravity(0,2)
    diamond=display.newImage("diamond.png")
    diamond.x=180; diamond.y=0; diamond.rotation=15
    physics.addBody(diamond,"dynamic",{density=0.1, friction=1,bouce=0.2, shape=6})
    
     end
     if textIndex==4 then    
   
    fallDiamond()
  end
local function fallButterfly()
    physics.setGravity(0,2)
    butterfly=display.newImage("butterfly.png")
    butterfly.x=180; butterfly.y=0; butterfly.rotation=45
    physics.addBody(butterfly,"dynamic",{density=0.1, friction=1,bouce=0.2, shape=6})
    
     end
     if textIndex==5 then    
   
    fallButterfly()
    timer.performWithDelay(300, fallButterfly,6)
  end
local function fallHeart()
    physics.setGravity(0,2)
    heart=display.newImage("heart.png")
    heart.x=180; heart.y=0
    physics.addBody(heart,"dynamic",{density=0.1, friction=1,bouce=0.2, shape=6})
    
     end
     if textIndex==6 then    
  
    fallHeart()
    timer.performWithDelay(300, fallHeart,6)
  end
end  
 local widget = require( "widget" )
-- -- Function to handle button events
 local function handleButtonEvent( event )
     if ( "ended" == event.phase ) then
   randomWord:removeSelf()
   randomWord=nil
   myCircle:removeSelf()
   myCircle=nil
   --physics.cancel()

       print( "Button was pressed and released" )
     end

     end
-- -- Create the widget
local button1 = widget.newButton
{
      left = _w/2-100,
      top = 350,
      id = "button1",
      label = "Click to refresh",

      onEvent = handleButtonEvent
 }
	end
Runtime:addEventListener("accelerometer", onShake)

