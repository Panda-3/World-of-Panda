--colours
white = Color.new(255,255,255)
IP, port = Network.initFTP()
--Font/BG
robotofont = Font.load("app0:/Roboto.ttf")
BG = Graphics.loadImage("app0:/BG.png")
--text location
x=5
q=15
--------------------------------------------------- functions
 function ScreenDraw ()
	Graphics.drawImage(0,0,BG)
	Font.setPixelSizes(robotofont,35)
	Font.print(robotofont, 480, 5, "World of Panda", Color.new(64,64,64))
	Font.setPixelSizes(robotofont,18)
end

while true do
y=45

---------------------------------------- Main
Graphics.initBlend()
ScreenDraw()

Font.print(robotofont, x, y, tostring(System.getBatteryPercentage()) .. "% Battery gonna BLOWWWW", white)
y=y+q
Font.print(robotofont, x, y, tostring(System.getCpuSpeed()) .. "MHZ SPEEEEEED", white)
y=y+q
Font.print(robotofont,x , y, "PRESS X to make magic happen Pls DONT! do it save me from Panda", white)
y=y+q
Font.print(robotofont,x , y, "PRESS SQUARE FOR SUPER PANDA DRIVE!!!!!!!! BTW it also tickles", white)
y=y+q
Font.print(robotofont,x , y, "dont do it save me from Panda", white)
y=y+q
Font.print(robotofont,x , y, "He is comming SAVE ME!!!", white)
y=y+q

	if Controls.check(Controls.read(), SCE_CTRL_START) then
		System.exit()
	end
	if Controls.check(Controls.read(), SCE_CTRL_CROSS) then
    Font.print(robotofont,x ,y, "I said dont WHYYYYYYYYYYYYYYYYYYYYYYYYYYYYY", white)
    y=y+q
		Font.print(robotofont,x ,y, tostring(System.getUsername()), white)
    y=y+q
		end

    if Controls.check(Controls.read(), SCE_CTRL_SQUARE) then
      Network.termFTP()
      Font.print(robotofont,x ,y, "I said it tickles why", white)
      y=y+q
      Font.print(robotofont,x ,y, "STOP U MAKE ME LAUGH", white)
      y=y+q
  		Font.print(robotofont,x ,y, "FTP STARTED ON " .. IP ":" .. port , white)
      y=y+q
  		end

    Graphics.termBlend()
    Screen.flip()
end
