% Matrix-Vector Multiplication

function b = mat_vec(mat_A, vec_x)
    
    if size(mat_A,2) == size(vec_x,1) && size(vec_x,2) == 1
        
        b = mat_A(:,1);

        for j = 1:length(mat_A(:,1))
            
            sum = 0;

            for k = 1:length(mat_A(1,:))

                sum = sum + mat_A(j,k) * vec_x(k,1);
            
            end

            b(j,1) = sum;

        end

    else
        b = [];
       
    end

end