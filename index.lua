--colours
white = Color.new(255,255,255)

--Font/BG
fontb = Font.load("app0:/Roboto.ttf")
BG = Graphics.loadImage("app0:/BG.png")
--text location
x=5
q=15
--------------------------------------------------- functions
 function ScreenDraw ()
	Graphics.drawImage(0,0,BG)
	Font.setPixelSizes(fontb,35)
	Font.print(fontb, 480, 5, "Panda says Hello World!", Color.new(64,64,64))
	Font.setPixelSizes(fontb,18)
end

while true do
y=45
colour = Colur.new(math.random(255, 0),math.random(255, 0),math.random(255, 0))

---------------------------------------- Main
Graphics.initBlend()
ScreenDraw()

Font.print(fontb, x, y, tostring(System.getBatteryPercentage()) .. "% Battery gonna BLOWWWW", white)
y=y+q
Font.print(fontb, x, y, tostring(System.getCpuSpeed()) .. "MHZ SPEEEEEED", white)
y=y+q
Font.print(fontb,x , y, "ABCDEFGHIJKLMNOPQRSTUVWQYZ", colour)
y=y+q
Font.print(fontb,x , y, "PRESS X to make magic happen Pls DONT! do it save me from Panda", white)
y=y+q
Font.print(fontb,x , y, "dont do it save me from Panda", white)
y=y+q
Font.print(fontb,x , y, "He is comming SAVE ME!!!", white)
y=y+q
	if Controls.check(Controls.read(), SCE_CTRL_START) then
		System.exit()
	end
	if Controls.check(Controls.read(), SCE_CTRL_CROSS) then
    Font.print(fontb,x ,y, "I said dont WHYYYYYYYYYYYYYYYYYYYYYYYYYYYYY", white)
    y=y+q
		Font.print(fontb,x ,y, tostring(System.getUsername()), white)
    y=y+q
		end

    Graphics.termBlend()
    Screen.flip()
end
