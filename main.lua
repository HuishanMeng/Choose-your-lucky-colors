
local myText={
[1]="Pink", 
[2]="Orange",
[3]="Green",
[4]="Blue",
[5]="Purple",
[6]="Gold",
[7]="White"                                                     
}
local background = display.newImage("rainbow.jpg",100,70)
local allText=myText[1].." "..myText[2].." "..myText[3].." "..myText[4].." "..
myText[5].." "..myText[6].." "..myText[7]
local displayWord = display.newText(allText,155,80,"Comic Sans MS",15)
displayWord:setTextColor(1)
local inText=display.newText("Shake for your lucky color",150,150,"Comic Sans MS",15)
local textIndex = math.random(1,7)
--myColor.textIndex=myText.textIndex
local function onShake(event)
	if event.isShake then
	local randomWord = display.newText(myText[textIndex],160,300,"Comic Sans MS",20)	
   	--local myCircle = display.newCircle( 220, 305, 15 )  
end
end
--creat a runtime listener to check whether the user shakes the phone  
--http://thatssopanda.com/corona-sdk-tutorials/using-the-shake-event-with-corona-sdk/
Runtime:addEventListener("accelerometer", onShake)


