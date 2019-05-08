syms l s v;
assume(v>0);
 Rg=0.26;T=273.15+27;V2=2*l*s;V1=l*s;
 w=Rg*T*log(V2/V1);
 str='w=%.2fkJ/kg\n';
 fprintf(str,w);
 %�����ų��������
 p0=0.1*10^6;
 p=0.5*10^6;m=1;
 V1=m*Rg*T/p;V2=2*V1;
 w1=p0*(V2-V1);
 str='w1=%.2fkJ/kg\n';
 fprintf(str,w1);
 %���������غ�
 m1=10;
v=solve(1/2*m1*v^2==(w-w1)*10^3,v);
fprintf('v=%.1fm/s\n',v)
fprintf('�ʻ������Դﵽ������ٶ�Ϊ%.1fm/s',double(v))