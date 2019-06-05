function place = findplace(L,scenario)
%place(1) = lr, place(2) = lf
if scenario == 1
    place(1) = L; place(2) = 0;
elseif scenario == 2
    place(1) = L/2; place(2) = L/2;
elseif scenario == 3
    place(1) = 0; place(2) = L;
end
end

