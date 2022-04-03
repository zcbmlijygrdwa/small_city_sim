function map = addRoad(map)
  
% add road
map(40, 50:150) = 1;
map(60, 50:150) = 1;
map(40:60, 50) = 1;
map(40:60, 150) = 1;
map(30:40, 100) = 1;
map(50, 150:170) = 1;
  
endfunction
