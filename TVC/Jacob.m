function J = Jacob(d_l,d_r,phi,theta,Param)
% JACOB Summary of this function goes here
% Equations
% f = [d_l^2 - (-r*cos(theta)-a*sin(theta)*sin(phi)+r)^2 - (-a*cos(phi)+b)^2 - (r*sin(theta)-a*cos(theta)*sin(phi)+h0)^2;
%      d_r^2 - (-r*cos(theta)+a*sin(theta)*sin(phi)+r)^2 - (a*cos(phi)-b)^2 - (r*sin(theta)+a*cos(theta)*sin(phi)+h0)^2];

% Equations Rearranged
% f = [2*r^2 + a^2 + b^2 + h0^2 - d_l^2 - 2*r^2*cos(theta) - 2*a*r*sin(theta)*sin(phi) - 2*a*b*cos(phi) + 2*r*h0*sin(theta) - 2*a*h0*cos(theta)*sin(phi);
%      2*r^2 + a^2 + b^2 + h0^2 - d_r^2 - 2*r^2*cos(theta) + 2*a*r*sin(theta)*sin(phi) - 2*a*b*cos(phi) + 2*r*h0*sin(theta) + 2*a*h0*cos(theta)*sin(phi)];


r = Param.r;
a = Param.a;
b = Param.b;
h0 = Param.h0;

J = eye(2);

J(1,1) = -2*a*r*sin(theta)*cos(phi) + 2*a*b*sin(phi) - 2*a*h0*cos(theta)*cos(phi);
J(1,2) = 2*r^2*sin(theta) - 2*a*r*cos(theta)*sin(phi) + 2*r*h0*cos(theta) + 2*a*h0*sin(theta)*sin(phi);
J(2,1) = 2*a*r*sin(theta)*cos(phi) + 2*a*b*sin(phi) + 2*a*h0*cos(theta)*cos(phi);
J(2,2) = 2*r^2*sin(theta) + 2*a*r*cos(theta)*sin(phi) + 2*r*h0*cos(theta) - 2*a*h0*sin(theta)*sin(phi);
end

