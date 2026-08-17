clc;
clear;
close all;

stressFile = "Stress.xlsx";
avgStressFile = "Average Stress.xlsx";
dispFile = "Displaccement.xlsx";

S = readNumericExcel(stressFile);
A = readNumericExcel(avgStressFile);
D = readNumericExcel(dispFile);

% New colors
purple  = '#7E57C2';
orange  = '#E67E22';
darkred = '#B03A2E';
teal    = '#148F77';
gold    = '#B7950B';

%% Figure 1: Combined stress figure
% Stress.xlsx:
% Col 1 = T_final
% Col 2 = surface stress
% Col 3 = depth stress

T_S = S(:,1);
stress_depth   = S(:,2);
stress_surface = S(:,3);

% Average Stress.xlsx:
% Col 1 = T_final
% Col 2 = average first principal stress

T_A = A(:,1);
avg_stress = A(:,2);

figure;
plot(T_S, stress_depth, 'LineWidth', 2, 'Color', teal);
hold on;
plot(T_S, stress_surface, 'LineWidth', 2, 'Color', gold);
plot(T_A, avg_stress, 'LineWidth', 2, 'Color', orange);

xline(300, ':k', '300 K', 'LabelVerticalAlignment', 'top');

xlabel('Final temperature, {\itT}_{final} (K)');
ylabel('First principal stress (Mega N/m^2)');
legend('Depth = 220 nm', 'Surface', 'Average over InP/SiO_2 interface', ...
       'Location', 'northwest');

grid on;
box on;
set(gca, 'FontSize', 16);
xlim([10 500]);
hold off;

%% Figure 2: Point displacement magnitude
% Displaccement.xlsx:
% Col 1 = T_final
% Col 2 = surface displacement
% Col 3 = depth displacement

T_D = D(:,1);
disp_depth   = D(:,2);
disp_surface = D(:,3);


figure;
plot(T_D, disp_depth, 'LineWidth', 2, 'Color', teal);
hold on;
plot(T_D, disp_surface, 'LineWidth', 2, 'Color', gold);

xline(300, ':k', '300 K', 'LabelVerticalAlignment', 'top');

xlabel('Final temperature, {\itT}_{final} (K)');
ylabel('Displacement magnitude ({\it\mum})');
legend('Depth = 220 nm', 'Surface', 'Location', 'northwest');

grid on;
box on;
set(gca, 'FontSize', 16);
xlim([10 500]);
hold off;

%% Optional save commands
% exportgraphics(figure(1), 'Fig6b_CombinedStress.png', 'Resolution', 600);
% exportgraphics(figure(2), 'Fig6c_Displacement.png', 'Resolution', 600);

%% Helper function
function data = readNumericExcel(filename)
    opts = detectImportOptions(filename, 'VariableNamingRule', 'preserve');
    T = readtable(filename, opts);

    M = table2array(T(:, vartype('numeric')));

    if isempty(M)
        M = readmatrix(filename);
    end

    M = M(:, all(~isnan(M), 1));
    M = M(any(~isnan(M), 2), :);

    if size(M,2) < 2
        error("File %s does not contain enough numeric columns to plot.", filename);
    end

    data = M;
end