function [u, t] = przypadki(i)
%u = [delta_f delta_r a]
v = 1;
if i == 1
    delta_f = deg2rad(5)*ones(800,1);
    delta_r = zeros(800,1);
    t = 0:0.1:80;
    a = zeros(800,1);
    u = [delta_f delta_r a];
    
elseif i == 2
    t = 1:0.1:81;
    delta_f = zeros(800,1);
    for j = 1:800
        delta_f(j) = deg2rad(10*sin(0.25/(2*pi*j/10)));
    end
    delta_r = zeros(800,1);
    a = zeros(800,1);
    u = [delta_f delta_r a];
    
elseif i == 3
    t = 0:0.1:320;
    k = 3200/4;
    delta_f(1:k,1) = deg2rad(10)*ones(k,1);
    delta_f(k+1:2*k,1) = deg2rad(-10)*ones(k,1);
    delta_f(2*k+1:3*k,1) = deg2rad(10)*ones(k,1); 
    delta_f(3*k+1:4*k,1) = deg2rad(-10)*ones(k,1);
    delta_r = zeros(3200,1);
    a = zeros(3200,1);
    u = [delta_f delta_r a];
    
elseif i == 4
    delta_f = zeros(800,1);
    delta_r = deg2rad(-5)*ones(800,1);
    t = 0:0.1:80;
    a = zeros(800,1);
    u = [delta_f delta_r a];
    
elseif i == 5
    t = 1:0.1:81;
    delta_r = zeros(800,1);
    for j = 1:800
        delta_r(j) = deg2rad(-10*sin(0.25/(2*pi*j/10)));
    end
    delta_f = zeros(800,1);
    a = zeros(800,1);
    u = [delta_f delta_r a];
    
elseif i == 6
    t = 0:0.1:320;
    k = 3200/4;
    delta_r(1:k,1) = deg2rad(-10)*ones(k,1);
    delta_r(k+1:2*k,1) = deg2rad(10)*ones(k,1);
    delta_r(2*k+1:3*k,1) = deg2rad(-10)*ones(k,1); 
    delta_r(3*k+1:4*k,1) = deg2rad(10)*ones(k,1);
    delta_f = zeros(3200,1);
    a = zeros(3200,1);
    u = [delta_f delta_r a];
end


end