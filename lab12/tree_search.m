% Tree Search (depth-first tree search algorithm)
% The tree will be given by an adjacency matrix, 
% where you can assume the root node is node 1
% The data will be a separate vector

function [found_at, indices] = tree_search(adjacency, data, num)

    % Start from root node 1
    curr_node = 1;

    % Call recursive function
    [found_at, indices] = tree_search_inner(adjacency, data, num, curr_node);

end


function [found_at, indices] = tree_search_inner(adjacency, data, num, curr_node)
    
    % Record the current node
    indices = curr_node;

    % Check the current node
    if data(curr_node) == num
        found_at = curr_node;
    else
        found_at = -1;
    end
    
    % Check all possible child nodes
    for i = 1:size(adjacency, 1)

        % Only search if the child exists and value is not found
        if adjacency(curr_node, i) == 1

            % Recursively search child node i
            [found_at, next_indices] = tree_search_inner(adjacency, data, num, i);
            
            % Add all visited nodes
            indices = [indices, next_indices];
        
        end
    end

end


%%% Tree Search Example: tree_search(adjacency, data, 31)


%%%% Adjacency Matrix

%          Node 1 2 3 4 5 6 7 8 9 10
% Row 1:        0 1 1 1 0 0 0 0 0 0
% Row 2:        0 0 0 0 1 1 0 0 0 0
% Row 3:        0 0 0 0 0 0 1 0 0 0
% Row 4:        0 0 0 0 0 0 0 1 1 1
% Row 5:        0 0 0 0 0 0 0 0 0 0
% Row 6:        0 0 0 0 0 0 0 0 0 0
% Row 7:        0 0 0 0 0 0 0 0 0 0
% Row 8:        0 0 0 0 0 0 0 0 0 0
% Row 9:        0 0 0 0 0 0 0 0 0 0
% Row 10:       0 0 0 0 0 0 0 0 0 0

% Node:     1  2   3  4  5  6  7  8  9 10
% Data:    52 35 101 78 44 22 31 63 86 95

% Search for num = 31


%%%% Recursive Calls

% Call 1: curr_node = 1
% data(1) = 52 -> Not found
% found_at = -1, indices = [1]
% for i = 1:10
% i = 1 -> adjacency(1,1) = 0 -> Skip
% i = 2 -> adjacency(1,2) = 1 -> Search Node 2
% Pause Call 1's loop at i = 2

    % Call 2: curr_node = 2
    % data(2) = 35 -> Not found
    % found_at = -1, indices = [2]
    % for i = 1:10
    % i = 1:4 -> All 0 -> Skip
    % i = 5 -> adjacency(2,5) = 1 -> Search Node 5
    % Pause Call 2's loop at i = 5

        % Call 3: curr_node = 5
        % data(5) = 44 -> Not found
        % for i = 1:10 -> All 0
        % No children
        % Return (-1, [5])

    % Back to Call 2
    % next_indices = [5]
    % indices = [2, 5]
    % Resume Call 2's loop
    % i = 6 -> adjacency(2,6) = 1 -> Search Node 6
    % Pause Call 2's loop at i = 6

        % Call 4: curr_node = 6
        % data(6) = 22 -> Not found
        % for i = 1:10 -> All 0
        % No children
        % Return (-1, [6])
    
    % Back to Call 2
    % next_indices = [6]
    % indices = [2, 5, 6]
    % Resume Call 2's loop
    % i = 7:10 -> All 0 -> Skip
    % Loop finishes
    % Return (-1, [2, 5, 6])

% Back to Call 1
% next_indices = [2, 5, 6]
% indices = [1, 2, 5, 6]
% Resume Call 1's loop
% i = 3 -> adjacency(1,3) = 1 -> Search Node 3
% Pause Call 1's loop at i = 3

    % Call 5: curr_node = 3
    % data(3) = 101 -> Not found
    % found_at = -1, indices = [3]
    % for i = 1:10
    % i = 1:6 -> All 0 -> Skip
    % i = 7 -> adjacency(3,7) = 1 -> Search Node 7
    % Pause Call 5's loop at i = 7

        % Call 6: curr_node = 7
        % data(7) = 31 -> Found!
        % found_at = 7, indices = [7]
        % for i = 1:10 -> All 0
        % No children
        % Return (7, [7])

    % Back to Call 5
    % found_at = 7
    % next_indices = [7]
    % indices = [3, 7]
    % Resume Call 5's loop
    % i = 8:10 -> All 0 -> Skip
    % Loop finishes
    % Return (7, [3, 7])


% Back to Call 1
% found_at = 7
% next_indices = [3, 7]
% indices = [1, 2, 5, 6, 3, 7]
% Resume Call 1's loop
% i = 4 -> adjacency(1,4) = 1
% But found_at = 7, so found_at == -1 is false
% Skip Node 4
%
% i = 5:10 -> All 0 -> Skip
% Loop finishes
% Return (7, [1, 2, 5, 6, 3, 7])


%%%% Final Output
% found_at = 7
% indices = [1, 2, 5, 6, 3, 7]