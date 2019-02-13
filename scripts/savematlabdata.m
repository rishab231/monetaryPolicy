function savematlabdata
% save some data in a .mat

a = [1, 2, 3; 4, 5, 6];
S.b = [7, 8, 9; 10, 11, 12];
M(1).c = [2, 4, 6; 8, 10, 12];
M(2).c = [1, 3, 5; 7, 9, 11];

save('scripts/data.mat','a','S','M')

return