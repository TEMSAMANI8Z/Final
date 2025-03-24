clc; clear; close all;

% Crear la figura
figure;
hold on;
axis equal;
set(gca, 'XColor', 'none', 'YColor', 'none'); % Quitar números de los ejes
xlim([-1, 1]); % Limitar el dominio en X
ylim([-1, 1]); % Limitar el dominio en Y

% Fondo azul claro (líquido SH2) con menor tamaño
fill([-0.9, 0.9, 0.9, -0.9], [-0.9, -0.9, 0.9, 0.9], [0.5, 0.7, 1], 'EdgeColor', 'none');

% Dibujar la burbuja de gas (círculo blanco)
theta = linspace(0, 2*pi, 100);
x = 0.5 * cos(theta);
y = 0.5 * sin(theta);
fill(x, y, 'w', 'EdgeColor', 'k', 'LineWidth', 2);

% Etiquetas grandes
text(-0.15,-0.0,   'H_2 gas', 'FontSize', 16, 'FontWeight', 'bold', 'Color', 'k');
text(-0.5,-0.5, 'SH_2', 'FontSize', 16, 'FontWeight', 'bold', 'Color', 'k');
text(0.440, 0.61,   'Interface', 'FontSize', 14, 'FontWeight', 'bold', 'Color', 'k');
text(0.05,-0.55,   'Mass transfer', 'FontSize', 14, 'FontWeight', 'bold', 'Color', 'k');
text(0.05,-0.65,   'Mass transfer', 'FontSize', 14, 'FontWeight', 'bold', 'Color', 'k');


% Flecha indicando la interfaz
annotation('textarrow', [0.75, 0.637], [0.75, 0.637], 'String', '', 'LineWidth', 2, ...
    'HeadWidth', 10, 'HeadLength', 10, 'Color', 'k');

% Flecha para la transferencia de masa con KLa y Mass Transfer juntos
annotation('textarrow', [0.5, 0.5], [0.40, 0.25],  ...
    'FontSize', 14, 'FontWeight', 'bold', 'Color', 'k', 'LineWidth', 2, ...
    'HeadWidth', 10, 'HeadLength', 10);

hold off;


