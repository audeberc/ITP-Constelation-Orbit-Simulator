% Low Earth Orbit Simulator - Solve Cowell's method
% Audebert Clément 7 nov 2016

% 

function [v_sortie] = cowell_method(x_sat,v_sat,a_perturb)
    mu = 398.6004418e12; 
    r = sqrt(x_sat(1)^2+x_sat(2)^2+x_sat(3)^2);
    function xdot=cowell(t,x)
    xdot = [a_perturb - x(2)*mu/r; x(1)];
    [t,y] = ode45(@cowell,[0 20],[v_sat(1); x_sat(1)]);
    y_sortie = y;
end
