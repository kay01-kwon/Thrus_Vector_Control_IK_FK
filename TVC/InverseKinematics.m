function [d_l, d_r] = InverseKinematics(rp,P_b_l,P_b_r,B_a_l,B_a_r)
%INVERSEKINEMATICS Summary of this function goes here

B_b_l = RP2Rot(rp(1), rp(2)) * P_b_l;
B_b_r = RP2Rot(rp(1), rp(2)) * P_b_r;


d_l = sqrt((B_b_l-B_a_l)'*(B_b_l-B_a_l));
d_r = sqrt((B_b_r-B_a_r)'*(B_b_r-B_a_r));

end