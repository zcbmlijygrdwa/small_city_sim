clear all;
close all;

map_h = 100; % rows
map_w = 200; % cols

map = zeros(map_h, map_w);


% add road
map = addRoad(map);


p_start = [50, 170];
p_end = [60, 70];
visited = zeros(size(map,1), size(map,2));
route = getRoute(p_start, p_end, map, visited);


% viz people map
visMap(map, route)

%return;





