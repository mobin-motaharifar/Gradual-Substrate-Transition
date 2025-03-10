clc;
clear all;
close all;
transition = load("Abrupt.mat");
ax1 = axes;
[yupper,ylower] = envelope(transition.lum.y0,5,'peak') ;
plot(1e15*transition.lum.x0, (1/3.65623)*yupper,'LineWidth',1.5,'Color','#6BB8F6')
set(ax1, 'XLim', [0 2.5e2])
set(ax1, 'YLim', [0 1.20])
%set(ax1, 'YLim', [0 1.05])
set(ax1,'XGrid', 'on')
set(ax1,'YGrid', 'on')
xlabel('time(fs)')
ylabel('Normalized Power Amplitude')
hold on;

notransition = load("Design.mat"); 
[yupper2,ylower2] = envelope(notransition.lum.y0,5,'peak') ;
plot(1e15*notransition.lum.x0, (1/3.65623)*yupper2,'g','LineWidth',1.5,'Color','#F54D42')

%yline(0.5,':m','3dB power','LineWidth',1.5)
legend('Abrupt junction','m=1.55');
grid off;
fontsize(16,"points");
