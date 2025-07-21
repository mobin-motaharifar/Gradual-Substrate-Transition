clc;
clear all;
close all;

A = load("chartA.mat");
B = load("chartB.mat");
C = load("chartC.mat");
D = load("chartD.mat");
 

subplot(2,2,1);
A1 = plot(A.lum.x0*1e6, A.lum.y0,'LineWidth',2,'Color','#6BB8F6');
hold on;
A2 = plot(A.lum.x1*1e6, A.lum.y1,'LineWidth',2,'Color','#F54D42');
A3 = plot(A.lum.x2*1e6, A.lum.y2,'LineWidth',2,'Color','#58B15C');
uistack(A2,"top");
xlim([0.6 2])
ylim([0 0.9])
xline(1.33,':k','1.33\mum','LabelVerticalAlignment','bottom');
xline(1.55,':k','1.55\mum','LabelVerticalAlignment','bottom');
l1=legend('Abrupt Junction','Transition (m=0.68)','Transition (m=1.55)');
xlabel('Wavelength ({\it\mum})');
ylabel('Transmission(a.u.) = {\itP_{out} / P_{in}}');
hold off;


subplot(2,2,2);
plot(B.lum.x0*1e6, B.lum.y0,'LineWidth',2,'Color','#6BB8F6')
hold on;
plot(B.lum.x1*1e6, B.lum.y1,'LineWidth',2,'Color','#EB89FC')
xlim([0.6 2])
ylim([0 0.9])
xline(1.33,':k','1.33\mum','LabelVerticalAlignment','bottom');
l2=legend('Abrupt Junction','Transition (m=0.158)');
xlabel('Wavelength ({\it\mum})');
ylabel('Transmission(a.u.) = {\itP_{out} / P_{in}}');
hold off;


subplot(2,2,3);
plot(C.lum.x0*1e6, C.lum.y0,'LineWidth',2,'Color','#6BB8F6')
hold on;
plot(C.lum.x2*1e6, C.lum.y2,'LineWidth',2,'Color','#D28810')
plot(C.lum.x1*1e6, C.lum.y1,'LineWidth',2,'Color','#AC369E')
xlim([0.6 2])
ylim([0 0.9])
xline(0.85,':k','0.85\mum','LabelVerticalAlignment','bottom');
xline(1.33,':k','1.33\mum','LabelVerticalAlignment','bottom');
l3=legend('Abrupt Junction','Transition (m=0.1)','Transition (m=0.506)');
xlabel('Wavelength ({\it\mum})');
ylabel('Transmission(a.u.) = {\itP_{out} / P_{in}}');
hold off;


subplot(2,2,4);
plot(D.lum.x0*1e6, D.lum.y0,'LineWidth',2,'Color','#6BB8F6')
hold on;
plot(D.lum.x1*1e6, D.lum.y1,'LineWidth',2,'Color','#DED900')
xlim([0.6 2])
ylim([0 0.9])
xline(0.85,':k','0.85\mum','LabelVerticalAlignment','bottom');
l4=legend('Abrupt Junction','Transition (m=0.1)');
xlabel('Wavelength ({\it\mum})');
ylabel('Transmission(a.u.) = {\itP_{out} / P_{in}}');
hold off;
fontsize(16,"points");
l1.FontSize=11;
l2.FontSize=11;
l3.FontSize=11;
l4.FontSize=11;
