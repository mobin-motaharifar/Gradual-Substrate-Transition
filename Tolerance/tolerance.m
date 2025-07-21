clc;
clear all;
close all;

A = load("tolerance.mat");
ax1 = axes; 
plot(A.lum.x0*1e6, A.lum.y0,'LineWidth',2,'Color','#F54D42')
hold on;
plot(A.lum.x1*1e6, A.lum.y1,A.lum.x2*1e6, A.lum.y2,A.lum.x3*1e6, A.lum.y3,A.lum.x4*1e6, A.lum.y4,'LineWidth',1,'LineStyle','--')
plot(A.lum.x5*1e6, A.lum.y5,'LineWidth',2,'Color','#6BB8F6')


set(ax1, 'XLim', [1.3 1.6])
set(ax1, 'YLim', [0.3 0.9])
set(ax1,'XGrid', 'off')
set(ax1,'YGrid', 'off')


xline(1.33,':k','1.33\mum','LabelVerticalAlignment','bottom');
xline(1.55,':k','1.55\mum','LabelVerticalAlignment','bottom');
l1=legend('Proposed Design (m=1.55)','-10% error','-5% error','+5% error','+10% error','Abrupt Junction');
xlabel('Wavelength ({\it\mum})');
ylabel('Transmission(a.u.) = {\itP_{out} / P_{in}}');