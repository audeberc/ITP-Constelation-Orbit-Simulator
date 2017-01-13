% Low Earth Orbit Simulator - Solve Cowell's method
% Audebert Clément 7 nov 2016

% 

function [lat,lon] = ground_track(y)
   lat=radtodeg(real(asin(y(:,3)./sqrt(y(:,1).^2+y(:,2).^2)))); % lat
   lon_f=radtodeg(real(acos(y(:,3)./sqrt(y(:,1).^2+y(:,2).^2)))); % lon fixed earth
   
end
