
clear;
syms Qm Qc eta xi
Qc = 1;
eta = 0.35;
xi = 3;
W = Qc/xi;
Qm = W/eta;
fprintf('����ȼ������Ϊ %.3f kJ \n', double(Qm))