clear;
syms P1 v1 P2 v2  q qm w deltau;
P1=100;v1=0.845;P2=800;v2=0.175;deltau=139;q=-50;c=10;
%�տ�ϵ��������q=deltau+w
w=q-deltau;
%ѹ�����ǿ�������ϵ��ѹ�����Ĺ�wc=-wt�����ȶ���������ϵ����q=deltah+wt,��
syms deltah wt 
eq1=deltah==deltau+(P2*v2-P1*v1);
eq2=wt==q-deltah;
[deltah,wt]=solve([eq1,eq2],[deltah,wt]);
%�������ΪN=qm*wt
sym qm;
qm=c/60;
N=qm*wt;
fprintf('(1)��һ������������Ϊ%.2fkJ\n(2)���輼����Ϊ%.2fkJ\n(3)�������Ϊ%.2fkW',double(abs(w)),double(abs(wt)),double(abs(N)));


