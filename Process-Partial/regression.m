%% import mat file
input_filepath = './mat/extracted_cricket_pulse_2.mat';
load(input_filepath);

%%
x = points(:,1);
y = points(:,2);
z = points(:,3)*0.5;

%% fitting

sf = fit([x, y],z,'poly55');

%%
plot(sf, [x, y], z);

%%
plot(sf,[x,y],z,'Style','Residuals')

%%
sfz = sf(x, y);
residuals = z-sfz;
residuals = rescale(residuals, -1, 1);
residuals=residuals+0.07;
pulseZ = residuals;
pulseZ(pulseZ<0)=0;
pulseZ = rescale(pulseZ);
%%
plot3(x, y, pulseZ, 'LineStyle', '-');

%%
pulses(:,1) = x;
pulses(:,2) = y;
pulses(:,3) = pulseZ;

clear residuals
clear sf
clear sfz
clear x
clear y
clear z
clear pulseZ

save(strcat('./mat/pulse_of_', soundname  , '.mat'))

