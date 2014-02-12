
local myText={
[1]="Pink", 
[2]="Orange",
[3]="Green",
[4]="Blue",
[5]="Purple",
[6]="Red",
[7]="White" ,
 }
local myColor={
  [1]={249/255,121/255,1/255}, 
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
_w = display.actualContentWidth
_h = display.actualContentHeight

local background = display.newImage("rainbow.jpg",240,160)
local allText=myText[1].." "..myText[2].." "..myText[3].." "..myText[4].." "..
myText[5].." "..myText[6].." "..myText[7]

local displayWord = display.newText(allText,155,80,"Comic Sans MS",15)

local inText=display.newText("Shake for your lucky color",150,150,"Comic Sans MS",15)

local randomWord
function onShake(event)
	
	if event.isShake then
    textIndex = math.random(1,7)
    local colorIndex= textIndex
	 randomWord = display.newText(myText[textIndex],160,300,"Comic Sans MS",20)	
   	local myCircle = display.newCircle( 220, 305, 15 ) 
    myCircle:setFillColor(unpack(myColor[colorIndex]))
    
     local function fallSnow()
    physics.setGravity(0,2)
    local snow=display.newImage("snow1.png")
    snow.x=180; snow.y=0; snow.rotation=15
    physics.addBody(snow,"dynamic",{density=0.1, friction=1,bouce=0.2, shape=6})
    
     end
     if textIndex==7 then    
   
    fallSnow()
    timer.performWithDelay(300, fallSnow,0)
 
  end
    local function fallFlower()
    physics.setGravity(0,2)
    local flower=display.newImage("flower.png")
    flower.x=150; flower.y=0; flower.rotation=15
    physics.addBody(flower,"dynamic",{density=0.1, friction=1,bouce=0.2, shape=6})
     
    end
    if textIndex==1 then    
    
    fallFlower()
    timer.performWithDelay(300, fallFlower,0)
  end
 
end
      
	end

--creat a runtime listener to check whether the user shakes the phone  
--http://thatssopanda.com/corona-sdk-tutorials/using-the-shake-event-with-corona-sdk/

------stil cannot remove the old text
if randomWord==nil then
	Runtime:addEventListener("accelerometer", onShake)
else
  randomWord: removeSelf()
  randomWord=nil
end
 






