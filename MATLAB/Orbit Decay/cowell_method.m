% Low Earth Orbit Simulator - Solve Cowell's method
% Audebert Clément 7 nov 2016

% 

function [v_sortie] = cowell_method(syst,ti,tf,x_i,a,rel_err)
   
    [T,ya] = ode45(@(t,y)cowell(t,y,a),[ti tf],x_i,odeset('RelTol',rel_err,'Stats','on','OutputFcn',@odeplot));
    v_sortie = ya;
end
