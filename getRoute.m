function output = getRoute(p_curr, p_end, map, visited)
  output = [];
  %p_curr
  %pause(1)
  if(visited(p_curr(1),p_curr(2)) == 0 && map(p_curr(1),p_curr(2))==1 && map(p_end(1),p_end(2)) == 1)
    if(p_curr(1) == p_end(1) && p_curr(2) == p_end(2))
        output = [output; [p_curr(1), p_curr(2)]];
        %disp("Reach end!");
        return;
    else
        visited(p_curr(1),p_curr(2)) = 1;
        
        %check up
        p_next = p_curr;
        p_next(1) = p_next(1)-1;
        if(p_next(1)>0)
          output_up = getRoute(p_next, p_end, map, visited);
          if(size(output_up,1)>0)
            if(size(output,1) == 0 || size(output,1) > size(output_up,1))
              output = output_up;
            end
          end
        end
        
        %check down
        p_next = p_curr;
        p_next(1) = p_next(1)+1;
        if(p_next(1)<size(map,1))
          output_down = getRoute(p_next, p_end, map, visited);
          if(size(output_down,1)>0)
            if(size(output,1) == 0 || size(output,1) > size(output_down,1))
              output = output_down;
            end
          end
        end
        
        %check right
        p_next = p_curr;
        p_next(2) = p_next(2)+1;
        if(p_next(2)<size(map,2))
          output_right = getRoute(p_next, p_end, map, visited);
          if(size(output_right,1)>0)
            if(size(output,1) == 0 || size(output,1) > size(output_right,1))
              output = output_right;
            end
          end
        end
        
        
        %check left
        p_next = p_curr;
        p_next(2) = p_next(2)-1;
        if(p_next(2)>0)
          output_left = getRoute(p_next, p_end, map, visited);
          if(size(output_left,1)>0)
            if(size(output,1) == 0 || size(output,1) > size(output_left,1))
              output = output_left;
            end
          end
        end
    end
    if(size(output,1) > 0)
      output = [output; [p_curr(1), p_curr(2)]];
    end
  end
endfunction
