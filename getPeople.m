function people = getPeople(map, houses)

people.home = houses(randi(size(houses,1)),:);
people.office = houses(randi(size(houses,1)),:);
visited = zeros(size(map,1), size(map,2));
people.route = getRoute(people.home, people.office, map, visited);

endfunction
