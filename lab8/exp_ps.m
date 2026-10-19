% Taylor Series for e^x


function y = exp_ps(vec_x, n)

    y = zeros(1, length(vec_x));

    for i = 1:length(vec_x)

        for k = 0:n

            y(i) = y(i) + vec_x(i)^k / my_factorial(k);

        end

    end

end


% function y = exp_ps(vec_x, n)
% 
%     y = zeros(1, length(vec_x));
% 
%     for i = 1:length(vec_x)
% 
%         for k = 0:n
% 
%             k_fact = 1;
% 
%             for j = k:-1:1
%                 k_fact = k_fact * j;
%             end
% 
%             y(i) = y(i) + vec_x(i)^k / k_fact;
% 
%         end
% 
%     end
% 
% end