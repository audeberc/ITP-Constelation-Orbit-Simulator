% Low Earth Orbit Simulator - Main sim loop
% Audebert Cl?ment 23 oct 2016
import cartesian_to_parameters.*
import parameters_to_cartesian.*
import cowell_method.*
%%%%%% Constants %%%%%%
mu = 398.6004418e12;  %  Earth's gravitational constant 
earth_r=6371000; % in m

%%%%%% Initial State %%%%%%
r_0 = [800000+earth_r 0 0]; % in m
v_0_mag = sqrt(mu/(800000+earth_r)); % in m/s 
v_0 = [0 0.9 0.4]; % Velocity vector 

v_0_vect = v_0_mag * v_0; % final initial velocity vector

%%%%%% Sim Setting %%%%%%
TIME_STEP = 1 % in sec
SIM_TIME = 3600 % Sim duration in sec

%%%%%% Sim Loop
sim_t = 0.0;
ti=0;
tf=15000;
x_i = [r_0(1) r_0(2) r_0(3) v_0_vect(1) v_0_vect(2) v_0_vect(3)];
a = [0 0.1 0.01];

y = cowell_method('cowell',ti,tf,x_i,a,1e-8);
figure
hold on
plot3(y(:,1),y(:,2),y(:,3))
[x_e,y_e,z_e] = sphere();
surf( earth_r*x_e, earth_r*y_e, earth_r*z_e );
[lat,lon] = ground_track(y);
figure
plot(lon,lat)
[a,e,inc,Omega,w,nu] = cartesian_to_parameters(r_0, v_0_vect)
% Cowell method

while sim_t < SIM_TIME
    
perturb = [1 1 4]; % No perturbations


sim_t = sim_t + TIME_STEP; 
end

