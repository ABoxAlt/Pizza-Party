 rem romsize
 set romsize 4k
 rem Pizza Power Vars
 a = 0
 b = 0
 rem timer for countdown and rev time
 t = 150
 r = 10

 COLUBK = 32


main
count
 drawscreen
 if joy0fire then goto rev
 if joy1fire then goto rev
 goto count

rev 
 COLUBK = 157
 COLUP0 = 70
 COLUP1 = 150

 player0:
 %00111100
 %01110110
 %10111111
 %11011101
 %11111111
 %11101111
 %01111010
 %00111100
end

 player1:
 %00111100
 %01110110
 %10111111
 %11011101
 %11111111
 %11101111
 %01111010
 %00111100
end

 player0x = 10
 player0y = 30

 player1x = 10
 player1y = 70

 drawscreen
 
 if joy0fire then COLUBK = 30
 if joy1fire then COLUBK = 20
 
 t = t - 1
 if t = 0 then goto roll
 
 goto rev

roll
 
 COLUBK = 200
 COLUP0 = 70
 COLUP1 = 150

  player0:
 %00111100
 %01110110
 %10111111
 %11011101
 %11111111
 %11101111
 %01111010
 %00111100
end

 player1:
 %00111100
 %01110110
 %10111111
 %11011101
 %11111111
 %11101111
 %01111010
 %00111100
end

 drawscreen
 a = a - 1
 player0x = player0x + 1
 if b <= 0 then goto result
 b = b - 1
 player1x = player1x + 1
 if a <= 0 then goto result
 goto roll
result
 COLUBK = 157

 if r >= 5 then if a = 0 then COLUP1 = 30
 if r <= 4 then if a = 0 then COLUP1 = 150

 if r >= 5 then if b = 0 then COLUP0 = 30
 if r <= 4 then if b = 0 then COLUP0 = 70

 if r = 0 then r = 11
 r = r - 1
 drawscreen

 goto result
 goto main