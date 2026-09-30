% Simple function plotting

function y = plot_func (f, a, b, n)

h = (b - a) / n;
x = a:h:b;

% or 
% x = linspace(a, b, n + 1); 
% where n is # of intervals and n + 1 is # of points

y = f(x);
plot(x, y);

ylim([0 10]);

end