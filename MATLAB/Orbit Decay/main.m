% Low Earth Orbit Simulator - Main sim loop
% Audebert Clément 23 oct 2016

%%%%%% Constants %%%%%%
mu = 398.6004418e12;  %  Earth's gravitational constant 
earth_r=6371000; % in m

%%%%%% Initial State %%%%%%
r_0 = [0 0 500000]; % in m
v_0_mag = 7500; % in m/s 
v_0_n = [1 0 0]; % Velocity vector 
v_0_n = V_0_n/norm(V_0_n); % Velocity vector (normalized)
v_0_vect = v_0_mag * v_0_n; % final initial velocity vector

%%%%%% Sim Setting %%%%%%
TIME_STEP = 1 % in sec
SIM_TIME = 3600 % Sim duration in sec