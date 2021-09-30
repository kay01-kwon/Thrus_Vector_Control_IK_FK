clear all;
clc;
close all;

Deg2Rad = pi/180;
Rad2Deg = 180/pi;

rp_deg = [0 0];

rp_rad = Deg2Rad * rp_deg';
init_rp = rp_rad;
% Parameter setting
RobotParam.r = 0.2;
RobotParam.a = 0.25/2;
RobotParam.b = 0.3/2;
RobotParam.h0 = 0.15;


P_b_l = [-RobotParam.r;-RobotParam.a;0];
P_b_r = [-RobotParam.r;RobotParam.a;0];

B_a_l = [-RobotParam.r;-RobotParam.b;-RobotParam.h0];
B_a_r = [-RobotParam.r;RobotParam.b;-RobotParam.h0];

for i = 1:100

rp_rad =5*[sin(0.1*(i-1));sin(0.1*(i-1))]*Deg2Rad;
rp_rad_(i,:) = rp_rad';
init_rp = rp_rad;

[d_l(i), d_r(i)] = InverseKinematics(rp_rad,P_b_l,P_b_r,B_a_l,B_a_r);

rp_real(i,:) = NewtonRaphsonMethod(d_l(i),d_r(i),[0;0],RobotParam,100);
DrawParallelMani(rp_real(i,:),RobotParam);
pause(0.01)
end

figure(2)
subplot(2,2,1)
plot(d_l);

subplot(2,2,2);
plot(d_r);

subplot(2,2,3);
plot(rp_rad_(:,1)*Rad2Deg);
hold on;
plot(rp_real(:,1)*Rad2Deg);
legend('ref','FK')
ylim([-10 10])

subplot(2,2,4);
plot(rp_rad_(:,2)*Rad2Deg);
hold on;
plot(rp_real(:,2)*Rad2Deg);
legend('ref','FK')
ylim([-10 10])
