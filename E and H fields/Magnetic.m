clc;
clear all;
close all;
load Magnetic.mat;
x =(1e6*lum.x)+3.2;
y =1e6*lum.y;
A =1/1.85*lum.z;
colormap jet ;
x2 = linspace(min(x),max(x),16123);
y2 = linspace(min(y),max(y),897);
[X,Y] = meshgrid(y,x);
[X2, Y2] = meshgrid(y2,x2);
A2 = interp2(X,Y,A,X2,Y2,'nearest');
A3 = A2.';

imagesc(x2, y2, real(A3));
clim([0 1])
set(get(gca, 'XLabel'), 'String', 'x(\mum)')
set(get(gca, 'XLabel'), 'FontSize', 16)
set(get(gca, 'XLabel'), 'FontWeight')
set(get(gca, 'YLabel'), 'String', 'y(\mum)')
set(get(gca, 'YLabel'), 'FontSize', 16)
set(get(gca, 'YLabel'), 'FontWeight')
set(gca, 'XLim', [0 9.2])
set(gca, 'YLim', [-1 1])
set(get(gca, 'Title'), 'String', '')
set(get(gca, 'Title'), 'FontSize', 18)
set(get(gca, 'Title'), 'FontWeight', 'bold')
colorbar;
set(gca, 'YDir','normal');
fontsize(16,"points");
