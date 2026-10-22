% Graph Stats


function [num_edges, in_degrees, out_degrees, has_loop] = graph_stats(adj_mat)

    num_edges = 0;
    
    n = length(adj_mat(1,:));

    in_degrees = zeros(1,n);
    
    out_degrees = zeros(1,n);
    
    has_loop = [];

    for i = 1:n
        for j = 1:n
            
            % Count incoming edges for node i
            if adj_mat(j,i) == 1
                in_degrees(i) = in_degrees(i) + 1;
            end
            
            % Count outgoing edges for node i
            if adj_mat(i,j) == 1
                out_degrees(i) = out_degrees(i) + 1;
            end
            
            % Count total edges
            if adj_mat(i,j) == 1
                num_edges = num_edges + 1;
            end

            % Detect self-loops
            if i == j && adj_mat(i,j) == 1
                has_loop = [has_loop,i];
            end
        end
    end


end