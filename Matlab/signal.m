N = 1024;       %����Ƶ��   
n = 0:N-1;      %������

fs = 1000;      %��Ч�ź�Ƶ��
fn1 = 20000;    %����Ƶ��1
fn2 = 10000;    %����Ƶ��2
fn3 = 100000;   %����Ƶ��3
s1 = 0.2*sin(2*pi*fn1*n/N)*16383+32767;
s2 = 0.5*sin(2*pi*fn2*n/N)*16383+32767;
s3 = 0.1*sin(2*pi*fn3*n/N)*16383+32767;
s=fix( ( sin(2*pi*fs*n/N)  +  0.2*sin(2*pi*fn1*n/N)  +  0.5*sin(2*pi*fn2*n/N)  +  0.1*sin(2*pi*fn3*n/N)  )*16383+32767  );   %����ź�

fid = fopen('D:\ComputerAPP\vivado\APP\FIR_Low_Pass_Filter-master\Matlab\signal1.txt','wt');
fprintf(fid,'%x\n',s);
fclose(fid);                        %�洢��*.txt�ļ�

                        
subplot(4,1,1)  %�鿴����
plot(n,s1);
title('s1')
subplot(4,1,2)  %�鿴����
plot(n,s2);
title('s2');
subplot(4,1,3) %�鿴����
plot(n,s3);
title('s3')
subplot(4,1,4) %�鿴����
plot(n,s)
title('s')