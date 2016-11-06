-- Stuff
white = color.new(255,255,255)
BG = image.load("app0:/BG.png")
x=5
q=20
font.setdefault("app0:/Roboto.ttf")
default = 1

splash.show("app0:/SU.png")

---------------------------------------- Main LOOP
while true do
buttons.read()
y=50
image.blit(BG,0,0)
screen.print(310, 27, "World of Panda",2.5, color.new(64,64,64))
if ftp.state()== true then
	screen.print(x ,y, "FTP on " .. tostring(wlan.getip()),default, white)
	y=y+q
else
	screen.print(x ,y, "FTP OFF ",default, white)
	y=y+q
end
screen.print(x, y, tostring(os.cpu()) .. "MHZ SPEEEEEED",default, white)
y=y+q
screen.print(x, y, tostring(os.gpuclock()) .. "MHZ GPU SPEEEEEED",default, white)
y=y+q
screen.print(x , y, "PRESS X to make magic happen Pls DONT! do it save me from Panda",default, white)
y=y+q
screen.print(x , y, "PRESS Δ FOR SUPER PANDA DRIVE!!!!!!!! BTW it also tickles",default,white)
y=y+q
screen.print(x , y, "START to close and stop FTP bbbut why would u do that :)",default, white)
y=y+q
screen.print(x , y, "Panda is nice!",default, white)
y=y+q
screen.print(x , y, "QUICK HE AINT LOOKING RUNNNNNNNNNNNNNNNNNNNNNNN",default, white)
y=y+q

	if buttons.start then
    ftp.term()
		os.exit()
	end
	if buttons.cross then
    screen.print(x ,y, "I said dont WHYYYYYYYYYYYYYYYYYYYYYYYYYYYYY",default, white)
    y=y+q
		screen.print(x ,y, tostring(os.login()),default, white)
    y=y+q
		end

    if buttons.triangle and ftp.state()== false then
      screen.print(x ,y, "I said it tickles why",default, white)
      y=y+q
      screen.print(x ,y, "STOP U MAKE ME LAUGH",default, white)
      y=y+q
			ftp.init()
			screen.print(x ,y, "FINE! started FTP ",default, white)
			y=y+q
  		end

		screen.flip()
		os.delay(100)
end
------------------------------------end
