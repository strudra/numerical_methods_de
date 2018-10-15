% performs improved euler method on function f
% on range [xinit, xend]
% y(xinit) = yinit
% h - step
function [x,y] = ImprovedEulerMethod(f,xinit,xend,yinit,h)
    N = floor((xend-xinit)/h);

    x = [xinit zeros(1, N)];
    y = [yinit zeros(1, N)];

    for i=1:N    
        x(i+1) = x(i)+h;
        ynew = y(i) + h*feval(f,x(i),y(i));
        y(i+1) = y(i) + h*feval(f,x(i),y(i))/2 + h*feval(f,x(i+1),ynew)/2;
    end
    
end