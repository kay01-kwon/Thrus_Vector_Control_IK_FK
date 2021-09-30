# Thrus_Vector_Control_IK_FK

Inverse Kinematics and Forward Kinematics Simulation

Purpose: To change the direction of thrust in the coaxial rotorcraft

S 2 SPS and SPR Parallel manipulator

Pitch Only Test

<img src="TVC/test_pitch.gif" width="500" height="400">

<img src="TVC/test2_pitch.gif" width="500" height="400">

Roll Only Test

<img src="TVC/test_roll.gif" width="500" height="400">

<img src="TVC/test2_roll.gif" width="500" height="400">

The number of actuators = 2 linear actuators

The plate moves in a conical way.

The conical motion would take 3 degree of freedom(Roll, Pitch and Yaw) if the manipulator consists of S 2SPS except SPR.

However, the number of actuator is less than the number of DOF that have to be controlled.

Hence, it is necessary to include one more joint (SPR) to make the mechanism have 2 DOF.

Check Simulation.

Pitch and Roll - RPS joint prevent the platform from taking yaw motion( = moving side to side).

<img src="TVC/test3.gif" width="500" height="400">

main function: Forward Kinematics through Newton Raphson Method

test function: Forward Kinematics through fsolve function
