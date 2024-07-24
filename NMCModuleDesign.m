%%%%%%%% Module design %%%%%

%%%%%%%% Input parameters %%%%%

%%%%%%%% Cell arranagement %%%%%
ModTotCell = 10; % Number of cells per Module
ModParaCell = 1; % Number of cells in parallel

%%%%%%%% Module components %%%%%
ModWallRo = 2.7; % Module wall material density, g/cc
ModWallh = 0.5; % Module wall thickness, mm
ModPlateRo = 2.7; % Module thermal conductance plate density, g/cc
ModPlateh = 0.4; % Module thermal conductance plate thickness, mm
ModGasW = 6; % width for gas release, mm
ModTermCond = 60000000; % Module terminal conductivity (Copper), S/m
ModTermCp = 0.39; % Module terminal heat capacity, J/(g C)
ModTermRise = 0.05; % Terminal temperature rise, C/s

%%%%%%%% Output Results %%%%%

%%%%%%%% Module dimensions %%%%%
ModL = CellL+ModGasW+2; % Module length, mm
ModW = ModTotCell*Cellh+(ModTotCell+1)*ModPlateh+2*ModWallh+Cellh; % Module width, mm
ModH = CellW+2*ModWallh+2*ModPlateh; % Module height, mm
ModVol = ModL*ModW*ModH/1000000; % Module volume, litre

%%%%%%%% Module components %%%%%
ModPlateL = PosEtdL; % Thermal plate length, mm
ModPlateW = CellW+2*Cellh*0.95; % Thermal plate width, mm
ModPlateTotDim = (ModTotCell+1)*ModPlateL*ModPlateW; % Total dimension of thermal plate, mm2
ModWallTotDim = 2*(ModL*ModW+ModL*ModH+ModW*ModH); % Total dimension of mod wall, mm2
ModTermHeatf = ModTermCp*ModTermRise; % Terminal heating factor, W/g
ModTermResisf = (ModTermHeatf*NegCCRo/(ModTermCond/100))^0.5; % Terminal resistance factor, A-ohms/cm

% %%%%%%%% Module mass composition %%%%%
% ModCellMass = ModTotCell*CellTotMass; % Cell mass, g
% ModPlateMass = ModPlateTotDim*ModPlateh*ModPlateRo/1000; % thermal plate mass, g
% ModWallMass = ModWallTotDim*ModWallh*ModWallRo/1000; % module wall mass, g
% ModSOCMass = 8*ModTotCell/ModParaCell; % SOC regulator mass, g
% if(ModParaCell==1)% Cell interconnection mass, g
%     ModConnMass = 0;
% else
%     ModConnMass = ModTotCell*TermW*Cellh*Termh/2*1.5*8.9/1000;
% end
% ModTermMass = 2*(2/ModTermHeatf*BattAP*ModTermResisf)/0.8; % Module terminal mass (total, 2-cm conductors,80% copper), g
% ModSpacMass = 1.2*ModGasW*4*ModW*2/1000; % Module polymer Spacers, g
% ModTotMass = ModCellMass+ModPlateMass+ModWallMass+ModSOCMass+ModConnMass+ModTermMass+ModSpacMass; % Total Module mass, g

