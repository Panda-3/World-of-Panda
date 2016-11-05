-- Stuff
white = Color.new(255,255,255)
BG = image.loadfromdata("app0:/BG.png",0)
x=5
q=15
on=0
font.setdefault("app0:/Roboto.ttf")
---------------------------------------- Main LOOP
while true do
buttons.read()
y=45

splash.show(BG)
os.delay(20000)
image.load(BG,0,0)
screen.print(480, 5, "World of Panda", Color.new(64,64,64))
screen.print(x, y, tostring(batt.lifepercent()) .. "% Battery gonna BLOWWWW", 20 ,white)
y=y+q
screen.print(x, y, tostring(System.getCpuSpeed()) .. "MHZ SPEEEEEED",, white)
y=y+q
screen.print(x , y, "PRESS X to make magic happen Pls DONT! do it save me from Panda",, white)
y=y+q
screen.print(x , y, "PRESS SQUARE FOR SUPER PANDA DRIVE!!!!!!!! BTW it also tickles",,white)
y=y+q
screen.print(x , y, "dont do it save me from Panda",, white)
y=y+q
screen.print(x , y, "He is comming SAVE ME!!!",, white)
y=y+q

	if buttons.start then
    ftp.term()
    os.delay(10000)
		os.exit()
	end
	if buttons.cross then
    screen.print(x ,y, "I said dont WHYYYYYYYYYYYYYYYYYYYYYYYYYYYYY",, white)
    y=y+q
		screen.print(x ,y, tostring(System.getUsername()),, white)
    y=y+q
		end

    if buttons.square and ftp.state()== false then
      screen.print(x ,y, "I said it tickles why",, white)
      y=y+q
      screen.print(x ,y, "STOP U MAKE ME LAUGH",, white)
      y=y+q
			ftp.init ()
  		end

      if ftp.state()== true then
        screen.print(x ,y, "JESUSUSUSUSUSUS",, white)
        y=y+q
      end

    Screen.flip()
end
------------------------------------end
