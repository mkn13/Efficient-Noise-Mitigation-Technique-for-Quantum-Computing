nCliffs=[1,10,20,30,40,50,60,70,80,90,100];
[JSD,txt,raw] = xlsread('BelemJSD.csv');

close all

fontsize=10;

figure(1)
for in=0:31
    plot3(nCliffs(:),ones(11,1)*in,JSD(:,in+1),'linewidth',2)
    hold on

end
xlabel_str='depth m';
ylabel('Input State','FontSize',fontsize,'FontName','Times New Roman','FontWeight','bold')
xticks(sort(nCliffs));
yticks(0:31);

xlabel(xlabel_str,'FontSize',fontsize,'FontName','Times New Roman','FontWeight','bold')
zlabel('JSD','FontSize',fontsize,'FontName','Times New Roman','FontWeight','bold')
set(gca,'FontSize',fontsize,'FontName','Times New Roman','FontWeight','bold');
orient landscape;
set(gcf, 'PaperUnits', 'centimeters');
set(gcf, 'PaperType', 'A4');
set(gcf, 'PaperPositionMode','manual');
set(gcf, 'units', 'normalized', 'outerposition', [0 0 1 1]);
view([75 50])
axis tight
grid on
% savefig('ManilaMitigationJSD');
print -depsc BelemMitigationJSD.eps
% hold off