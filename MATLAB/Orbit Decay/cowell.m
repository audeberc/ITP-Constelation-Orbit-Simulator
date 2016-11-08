% Low Earth Orbit Simulator - Solve Cowell's method
% Audebert Clément 7 nov 2016

% 
function ydot = cowell(t, y, a)
% total acceleration vector
mu = 398.6004418e12; 
r = sqrt(y(1)^2+y(2)^2+y(3)^2);
ydot = zeros(6,1);
ydot(1) = y(4); %vx
ydot(2) = y(5); %vy
ydot(3) = y(6); %vz
ydot(4) = -y(1)*mu/(r^3)+a(1); %ax
ydot(5) = -y(2)*mu/(r^3)+a(2); %ay
ydot(6) = -y(3)*mu/(r^3)+a(3); %az
    
end


