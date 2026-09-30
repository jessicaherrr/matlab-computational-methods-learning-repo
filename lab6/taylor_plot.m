% Taylor Exponential


% function y = taylor_plot(a, b, n)
% 
% h = (b - a) / n;
% x = a:h:b;
% 
% y0 = 1;
% y1 = 1 + x;
% y2 = 1 + x + x.^2 / factorial(2);
% y3 = 1 + x + x.^2 / factorial(2) + x.^3 / factorial(3);
% y4 = 1 + x + x.^2 / factorial(2) + x.^3 / factorial(3) + x.^4 / factorial(4);
% 
% plot(x, y0)
% hold on
% plot(x, y1)
% plot(x, y2)
% plot(x, y3)
% plot(x, y4)
% hold off
% 
% y = y4;
% 
% end



% or

function y = taylor_plot(a, b, n)

h = (b - a) / n;
x = a:h:b;

y = 0;

hold off

for m = 0:4
    y = y + x.^m / factorial(m);
    plot(x, y)
    hold on
end

hold off

end