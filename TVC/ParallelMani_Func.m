function f = ParallelMani_Func(d_l,d_r,phi,theta,Param)
%PARALLELMANI_FUNC Summary of this function goes here
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

f = [2*r^2 + a^2 + b^2 + h0^2 - d_l^2 - 2*r^2*cos(theta) - 2*a*r*sin(theta)*sin(phi) - 2*a*b*cos(phi) + 2*r*h0*sin(theta) - 2*a*h0*cos(theta)*sin(phi);
     2*r^2 + a^2 + b^2 + h0^2 - d_r^2 - 2*r^2*cos(theta) + 2*a*r*sin(theta)*sin(phi) - 2*a*b*cos(phi) + 2*r*h0*sin(theta) + 2*a*h0*cos(theta)*sin(phi)];

end

