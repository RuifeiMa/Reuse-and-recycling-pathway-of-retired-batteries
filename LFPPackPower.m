%%%%%%%% Pack Power %%%%%
% clc;
% clear all;
%%%%%%%% Input parameters %%%%%
% CellNomV = 3.75; % Nominal OCV (OCV@50%) of Cells, V
% CellFPOCV = 3.565; % OCV at full power, V
% BattVfrac = 0.8; % Battery working voltage fraction at full power
% BattFPower = 180; % Battery target full power, kW
% PacASIEx = 2.75; % External ASI, ohms*cm2
% LiConcAvg = 0.0012; % Average Li-ion concentration, mol/cm3
% LiDiff = 0.0000016; % Lithium-ion diffusion coefficient in electrolyte, cm2/s
% tplus = 0.46; % Transference number t+
% RatioGamma = 0.4; % Ratio of lithium electrode thickness to penetration depth


% function [PacTotMod,PacBMSMass,PacjacMass,PacCompMass,PacCoolMass,PacConnMass,PacTotMass,BattEner] = NMCPackPower(Mode)
run LFPCellDesign.m;
run LFPModuleDesign.m;
run LFPPackDesign.m;

%%%%%%%% Output Results %%%%%

%%%%%%%% Energy %%%%%
%%%%%%%% Cell energy %%%%%
CellCap = PosAcMass*PosSpCap/1000; % Cell Capacity, Ah
CellEnerSp = CellNomV*CellCap/CellTotMass; % Cell Energy density, Wh/g
CellVolSp = 1000*CellNomV*CellCap/CellVol; % Cell Volume density, Wh/L
%%%%%%%% Module energy %%%%%
ModCap = ModParaCell*CellCap; % Module capacity, Ah
ModV = ModTotCell/ModParaCell*CellNomV; % Module voltage, V
%%%%%%%% Pack energy %%%%%
BattCap = ModCap*PacModPara; % Battery pack capacity, Ah
BattOCV = ModV*PacTotMod/PacModPara; % Battery OCV voltage, V
BattEner = BattOCV*BattCap/1000; % Battery Stored Energy, kEh
BattCellSeri = ModTotCell*PacTotMod/(ModParaCell^2*PacModPara^2); % Effective cell in series
BattTotASI = PacASIEx+11.2080; % Battery ASI total at full power, ohms*cm^2
%%%%%%%% Pack power analysis %%%%%
BattOCVP = CellFPOCV*ModTotCell/ModParaCell*PacTotMod/PacModPara; % Battery OCV full power, V
BattAP = BattFPower*1000/BattOCVP; % Current at full power, A
BattVP = BattOCVP*BattVfrac; % voltage fraction at full power, V
BattOhms = 100*BattTotASI/PosEtdTotDim*BattCellSeri; % Battery pack resistance, ohms
BattCrateP = BattAP/BattCap; % Full power C-rate, 1/h
BattFPow = BattAP*BattVP/1000; % Battery full power, kW

%%%%%%%% Module mass composition %%%%%
ModCellMass = ModTotCell*CellTotMass; % Cell mass, g
ModPlateMass = ModPlateTotDim*ModPlateh*ModPlateRo/1000; % thermal plate mass, g
% global ModPlateMass;
ModWallMass = ModWallTotDim*ModWallh*ModWallRo/1000; % module wall mass, g
% global ModWallMass;
ModSOCMass = 8*ModTotCell/ModParaCell; % SOC regulator mass, g
if(ModParaCell==1) % Cell interconnection mass, g
    ModConnMass = 0;
else
    ModConnMass = ModTotCell*TermW*Cellh*Termh/2*1.5*8.9/1000;
end
ModTermMass = 2*(2/ModTermHeatf*BattAP*ModTermResisf)/0.8; % Module terminal mass (total, 2-cm conductors,80% copper), g
% global ModTermMass;
ModSpacMass = 1.2*ModGasW*4*ModW*2/1000; % Module polymer Spacers, g
ModTotMass = ModCellMass+ModPlateMass+ModWallMass+ModSOCMass+ModConnMass+ModTermMass+ModSpacMass; % Total Module mass, g

%%%%%%%% Pack mass components %%%%%
PacModMass = PacTotMod*ModTotMass/1000; % Battery module mass, kg
PacBMSMass = PacModMass*0.03; % BMS mass, kg
PacjacMass = PacjacDim*PacjacRo/100000; % Battery jacket insulation mass, kg
PacCompMass = 2*PacComph*(PacW-2*Pacjach1)*(PacH-2*Pacjach1)*7.8/1000000; % Mass of `module compression plates and steel straps, kg
PacCoolMass = 9.81; % Battery coolant requirement, kg
PacConnMass = (PacTotMod+1)*109.7/PacModPara/1000; % Battery interconnection mass (5-cm long each), kg
PacTotMass = PacModMass+PacBMSMass+PacjacMass+PacCompMass+PacCoolMass+PacConnMass; % Battery pack mass, kg

BattVolRo = BattEner/PacVol; % Battery Energy volumeric density, kWh/Litre
BattMassRo = BattEner/PacTotMass; % Battery Energy Mass density, kWh/kg

% end