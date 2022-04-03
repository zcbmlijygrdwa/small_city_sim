function houses = getHousesFromMap(map)

houses = [];
for i = 1:size(map,1)
  for j = 1:size(map,2)
    if(map(i,j)==1)
      houses = [houses; [i,j]];
    end
  endfor
endfor
  
endfunction