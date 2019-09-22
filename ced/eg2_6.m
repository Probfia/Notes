[r,theta] = meshgrid([0:0.01:4.4],[0:0.01:2*pi]);
x = r.*cos(theta);
y = r.*sin(theta);
phi = -max((r-1./r),0).*sin(theta);

figure(1)
pcolor(x,y,phi);

shading interp; 
colorbar; colormap(jet);
xlabel('x/a');ylabel('y/a');
xlim([-3,3]);ylim([-3,3])
hold on;
[cs, h]=contour(x,y,phi,[-3:0.3:3],'black--');
clabel(cs, h,'LabelSpacing',100, 'FontSize', 10, 'Color', 'k'); 
hold off;