% Low Earth Orbit Simulator - orbital element to Cartesian coordinates
% Audebert Clément 23 oct 2016

% Converts orbital parameters to Earth-centered inertial (ECI) coordinates 


function [r,v] = parameters_to_cartesian(a,e,inc,Omega,w,nu)
    mu = 398.6004418e12; 
    radius = a*(1-e^2)/(1+e*cos(nu)); %radius
    p = a*(1-e^2);
    H = (mu*p)^(1/2);     %angular momentum
    r(1) = radius*(cos(Omega)*cos(w+nu)-sin(Omega)*sin(w+nu)*cos(inc));
    r(2) = radius*(sin(Omega)*cos(w+nu)+cos(Omega)*sin(w+nu)*cos(inc));
    r(3) = radius*(sin(inc)*sin(w+nu));
    
    v(1) = (r(1)*H*e/(radius*p))*sin(nu) - (H/radius)*(cos(Omega)*sin(w+nu)+sin(Omega)*cos(w+nu)*cos(inc));
    v(2) = (r(2)*H*e/(radius*p))*sin(nu) - (H/radius)*(sin(Omega)*sin(w+nu)-cos(Omega)*cos(w+nu)*cos(inc));
    v(1) = (r(3)*H*e/(radius*p))*sin(nu) + (H/radius)*(sin(inc)*cos(w+nu));
end
