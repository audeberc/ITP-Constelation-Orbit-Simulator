% Low Earth Orbit Simulator - Cartesian coordinates to orbital element
% Audebert Clément 23 oct 2016

% Converts Earth-centered inertial (ECI) coordinates (position/velocity)
% into 

epsilon_comp = 0.01;

function [a,e,inc,Omega,w,nu] = cart2orbital(r, v)
    H = cross(r,v); % Angular Momentum
    node_vect = cross([0 0 1],H); % node vector
    e_vect = ((norm(v)^2-mu/norm(r))*r-dot(r,v)*v)/mu;
    e = norm(e_vect); % eccentricity
    mech_energy = (norm(v)^2)/2 - mu/norm(r); % Energy
    if abs(e-1.0) > epsilon_comp % if eccentricity = 1 
        a = inf; % semi major axis
    else
        a = -mu/(2*mech_energy);

    inc = acos(H(3)/mag(H)); % inclination
    Omega = acos(node_vect(1)/norm(node_vect)); % LONGITUDE OF NODES
    if n(2) < 0.0
        Omega = 2*pi - Omega;
    w = acos(dot(node_vect,e_vect)/(e*norm(r))); %ARGUMENT OF PERICENTER
    
    if e_vect(3) < 0 
        w = 2*pi - w;
    
    nu = acos(dot(e_vect,r)/(e*norm(r))); % TRUE ANOMALY
    if dot(r,v) < 0.0
        nu = 2*pi - nu;
    
end
