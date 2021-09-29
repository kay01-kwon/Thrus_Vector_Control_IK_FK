function B_R_P = RP2Rot(phi,theta)
% Rotation Convention: y - x'

B_R_I = [cos(theta)    0   sin(theta);
          0             1   0;
          -sin(theta)   0   cos(theta)];

I_R_P = [1 0         0;
         0 cos(phi) -sin(phi);
         0 sin(phi)  cos(phi)];
     
B_R_P = B_R_I * I_R_P;      
end

