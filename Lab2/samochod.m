h = 0.1;
T = 80;
v = 1;
psi=2;
L = [1 3 10 30];
X = 0; Y = 0;
x0=[X Y psi v];

for i = 1:6
   [u, t] = przypadki(i);
   figure;
   for l = 1:4
       length = L(l);
       subplot(2,2,l);
       for c = 1:3
            optional_parameters = findplace(length, c);
            dxModel = @(t, x, u) kinematicBicycleModel(t, x, u, optional_parameters);
            [t1, x1]=rk4(x0, u, h, dxModel); 
            hold on
            plot(x1(:,1), x1(:,2));
       end
       xlabel('X'); ylabel('Y');
       title(sprintf('L = %d', length)); 
       legend('lr=L, lf=0','lf=0.5, lr=0.5','lr=0,lf=L');
   end
end