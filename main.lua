
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
  [1]={1/255,1/255,1/255}, 
  [2]={255/255,115/255,35/255},
  [3]={35/255,255/255,100/255},
  [4]={17/255,153/255,255/255},
  [5]={166/255,51/255,255/255},
  [6]={255/255,37/255,7/255},
  [7]={255/255,255/255,255/255},                                                     
  }



local background = display.newImage("rainbow.jpg",150,200)
local allText=myText[1].." "..myText[2].." "..myText[3].." "..myText[4].." "..
myText[5].." "..myText[6].." "..myText[7]

local displayWord = display.newText(allText,155,80,"Comic Sans MS",15)

local inText=display.newText("Shake for your lucky color",150,150,"Comic Sans MS",15)

local randomWord
function onShake(event)
	
	if event.isShake then
    local textIndex = math.random(1,7)
    local colorIndex= textIndex
	 randomWord = display.newText(myText[textIndex],160,300,"Comic Sans MS",20)	
   	local myCircle = display.newCircle( 220, 305, 15 ) 
   	myCircle:setFillColor(unpack(myColor[colorIndex]))
   	print(colorIndex)
   
	end
end

--creat a runtime listener to check whether the user shakes the phone  
--http://thatssopanda.com/corona-sdk-tutorials/using-the-shake-event-with-corona-sdk/
if randomWord==nil then
	Runtime:addEventListener("accelerometer", onShake)


else
randomWord:removeSelf()
randomWord=nil
end
