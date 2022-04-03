function map_traffic = accumulateTrafficOnMap(map_traffic,route)
  for i = 1:size(route,1)
  r = route(i,1);
  c = route(i,2);
  map_traffic(r,c) = map_traffic(r,c) + 1;
  endfor
endfunction
