function visMap(map, route)

map_viz = zeros(size(map,1), size(map,2),3);

% get viz map
for i = 1:size(map,1)
  for j = 1:size(map,2)
    if(map(i,j)==1)
      map_viz(i,j,3) = 1;
    end
  endfor
endfor

for i=1:size(route,1)
  map_viz(route(i,1),route(i,2),2) = 1;
  map_viz(route(i,1),route(i,2),3) = 0;
endfor

figure();
imshow(map_viz, []);

endfunction
