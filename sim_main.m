clear all;
close all;

map_h = 100; % rows
map_w = 200; % cols

map = zeros(map_h, map_w);

% add road
map = addRoad(map);
houses = getHousesFromMap(map);

people_vec = [];
for i = 1:15
  disp(["Creating people [" num2str(i) "]"]);
  temp_people = getPeople(map, houses);
  people_vec = [people_vec; {temp_people}];
endfor

% accumulate people route to get daily traffic
map_traffic = zeros(size(map,1), size(map,2));
for i = 1:size(people_vec,1)
  disp(["adding route for people [" num2str(i) "]"]);
  map_traffic = accumulateTrafficOnMap(map_traffic, people_vec{i}.route);
endfor


figure()
imshow(map_traffic,[])

return;



% viz people map
visMapSingleRoute(map, people1.route)
visMapSingleRoute(map, people2.route)


%return;





