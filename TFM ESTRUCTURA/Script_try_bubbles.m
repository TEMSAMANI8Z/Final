clc; clear; close all;

% Definir los radios
r_burbuja = 5; % Radio de la burbuja
r_interfaz = 5.2; % Radio de la interfaz gas-líquido
r_liquido = 7; % Extensión de la fase líquida

% Crear la figura
figure;
hold on;
axis equal;
xlim([-r_liquido-1, r_liquido+1]);
ylim([-r_liquido-1, r_liquido+1]);

% Dibujar la burbuja de gas (color diferente)
theta = linspace(0, 2*pi, 200);
fill(r_burbuja*cos(theta), r_burbuja*sin(theta), [1 0.8 0.6], 'EdgeColor', 'k', 'LineWidth', 2);

% Dibujar la interfaz gas-líquido (línea negra)
plot(r_interfaz*cos(theta), r_interfaz*sin(theta), 'k', 'LineWidth', 2);

% Dibujar la fase líquida en azul
fill(r_liquido*cos(theta), r_liquido*sin(theta), [0.7 0.9 1], 'EdgeColor', 'b', 'LineWidth', 2);

% Etiquetas de concentración
text(0, 0, 'H_2 gas', 'FontSize', 14, 'FontWeight', 'bold', 'HorizontalAlignment', 'center');
text(r_burbuja + 2, 0, 'SH_2', 'FontSize', 14, 'FontWeight', 'bold', 'Color', 'b');

% Dibujar puntos de concentración
plot(r_burbuja*0.9, 0, 'ko', 'MarkerFaceColor', 'k'); % CA1
plot(r_interfaz, 0, 'ko', 'MarkerFaceColor', 'k'); % CA1i
plot(r_interfaz + 0.2, 0, 'ko', 'MarkerFaceColor', 'k'); % CA2i
plot(r_liquido - 0.5, 0, 'ko', 'MarkerFaceColor', 'k'); % CA2

% Etiquetas de concentración
text(r_burbuja*0.9, -0.5, 'C_{A1}', 'FontSize', 12, 'FontWeight', 'bold');
text(r_interfaz, -0.5, 'C_{A1i}', 'FontSize', 12, 'FontWeight', 'bold');
text(r_interfaz + 0.2, -0.5, 'C_{A2i}', 'FontSize', 12, 'FontWeight', 'bold');
text(r_liquido - 0.5, -0.5, 'C_{A2}', 'FontSize', 12, 'FontWeight', 'bold');

hold off;

