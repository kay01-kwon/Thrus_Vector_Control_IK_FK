function rp = ForwardKinematics(d_l,d_r,Param,init_rp)


% Parameter
r = Param.r;
a = Param.a;
b = Param.b;
h0 = Param.h0;



    function f = constraint_func(rp)
        phi = rp(1);
        theta = rp(2);
        f(1) = d_l^2 - (-r*cos(theta)-a*sin(theta)*sin(phi)+r)^2 - (-a*cos(phi)+b)^2 - (r*sin(theta)-a*cos(theta)*sin(phi)+h0)^2;
        f(2) = d_r^2 - (-r*cos(theta)+a*sin(theta)*sin(phi)+r)^2 - (a*cos(phi)-b)^2 - (r*sin(theta)+a*cos(theta)*sin(phi)+h0)^2;
    end

c_func = @constraint_func;

options = optimset('Display','off');
rp = fsolve(c_func,[init_rp(1),init_rp(2)],options);
rp  = rp'; 

end