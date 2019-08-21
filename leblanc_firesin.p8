pico-8 cartridge // http://www.pico-8.com
version 16
__lua__
--https://twitter.com/SeanSLeBlanc/status/982648532296503304
for i=1,16 do
	pal(i-1,sub("029878920",i/2,i/2),1)
end
cls()
::q::
x=rnd(128)
y=rnd(128)
a=64+32*sin(t()/2)-x
b=64+32*cos(t()/3)-y
z=atan2(a,b)+t()/4
line(x,y,x+cos(z)*4,y+sin(z)*4,(pget(x,y)+pget(x+1,y)+pget(x,y+1)+pget(x+1,y+1))/4+1)
goto q
