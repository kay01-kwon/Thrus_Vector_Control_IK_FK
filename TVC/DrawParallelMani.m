function DrawParallelMani(rp,Param)
cla
hold on;
v=[1 0 0];
view(v);
grid on
P_b_l = [-Param.r;-Param.a;0];
P_b_r = [-Param.r;Param.a;0];
P_b_m = [-Param.r;0;0];

B_a_l = [-Param.r;-Param.b;-Param.h0];
B_a_r = [-Param.r;Param.b;-Param.h0];
B_a_m = [-Param.r;0;-Param.h0];


phi = rp(1);
theta = rp(2);

RotMat = RP2Rot(phi,theta);

B_b_l = RotMat*P_b_l;
B_b_r = RotMat*P_b_r;
B_b_m = RotMat*P_b_m;


% Draw 2 SPS Joints
plot3([B_b_l(1) B_a_l(1)],[B_b_l(2) B_a_l(2)],[B_b_l(3) B_a_l(3)],'-k','linewidth',2);
plot3([B_b_r(1) B_a_r(1)],[B_b_r(2) B_a_r(2)],[B_b_r(3) B_a_r(3)],'-k','linewidth',2);


% Draw Plate
plot3([B_b_l(1) B_b_r(1)],[B_b_l(2) B_b_r(2)],[B_b_l(3) B_b_r(3)],'-b','linewidth',1.5);
plot3([0 B_b_r(1)],[0 B_b_r(2)],[0 B_b_r(3)],'-b','linewidth',1.5);
plot3([0 B_b_l(1)],[0 B_b_l(2)],[0 B_b_l(3)],'-b','linewidth',1.5);

% Draw Midle SPR joint
plot3([B_b_m(1) B_a_m(1)],[B_b_m(2) B_a_m(2)],[B_b_m(3) B_a_m(3)],'-k','linewidth',2);

axis([-0.4 0 -0.2 0.2 -0.15 0.1])

xlabel('X')
ylabel('Y')
zlabel('Z')

end

