clear;
syms P1 T1 V1 V2 P2 Cp Cv Rg g;
P1=14000;T1=290.15;V1=0;V2=0.008;P2=150;Cv=0.657;Cp=0.917;Rg=260;g=9.8;
%������������ dQ=dE_CV+(h+Cf_out^2/2+gz_out)dm_out-(h+Cf_in^2/2+gz_in)dm_in+dWi
%����ɵ�dQ=0,dm_out=0,dE_CV=dU,Cf_in=0,z_in=0
%�ɵ�dU-h_in*dm_in+dWi=0
%dWi=P0dV,���������ڵ�����Ϊ������������
syms m2 T2 h_in u2 u1 dWi;
dWi=101.325*(V2-V1);
h_in=Cp*T1;
u2=Cv*T2;
eq1=T2==P2*V2/(Rg*m2)*10^3;
eq2=m2==dWi/(h_in-u2);
[T2,m2]=solve([eq1,eq2],[T2,m2]);
fprintf('��������������Ϊ%.5fkg,���������¶�Ϊ%.5fK',double(m2),double(T2))
