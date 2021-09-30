function rp_FowardKinematics = NewtonRaphsonMethod(d_l,d_r,initial_geuss,Param,iter)

phi = initial_geuss(1);
theta = initial_geuss(2);
    for i = 1:iter
        J = Jacob(d_l,d_r,phi,theta,Param);
        f = ParallelMani_Func(d_l,d_r,phi,theta,Param);
        dx = -inv(J)*f;
        phi = phi + dx(1);
        theta = theta + dx(2);
        
        if abs(f(1)) < 1e-5 && abs(f(2)) < 1e-5
            break;
        end
        
    end
    
rp_FowardKinematics = [phi;theta];
    
end