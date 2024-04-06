 rem romsize
 set romsize 4k
 rem Pizza Power Vars
 a = 0
 b = 0
 rem timer for countdown and rev time
 t = 3
 COLUBK = 157
  
main
rev
 player0:
 %01001000
 %01111000
 %01111000
 %11111100
 %00110000
 %01111000
 %00110000
 %00110000
 %00110000
 %00110000
 %00110000
 
end
 player0x = 50
 player0y = 50
 drawscreen
 goto rev
roll
 drawscreen
 goto roll
 goto main