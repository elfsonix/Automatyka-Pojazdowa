function pochodne = kinematicBicycleModel(~, x, u, optional_parameters)
% x = [X Y psi v]
% u = [delta_f delta_r a]
% optional_parameters op = [lr lf]
% pochodne = [dx, dy, dpsi, dv]
beta = atan((optional_parameters(2)*tan(u(2))+optional_parameters(1)*tan(u(1)))/(optional_parameters(2)+optional_parameters(1)));
dx = x(4)*cos(x(3)+beta); dy = x(4)*sin(x(3)+beta);
dpsi = (x(4)*cos(beta))/(optional_parameters(1)+optional_parameters(2))*(tan(u(1))-tan(u(2)));
dv = u(3);
pochodne(1) = dx; 
pochodne(2) = dy;
pochodne(3) = dpsi; 
pochodne(4) = dv;
end

