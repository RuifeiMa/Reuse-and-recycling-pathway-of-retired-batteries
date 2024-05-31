function [BattEner,CO2_Cell_kWh,CO2_Manu_kWh,Cost_Manu_kWh,CO2_Use_kWh,Cost_Use_kWh,CO2_Use_kWh_year,Cost_Use_kWh_year,CO2_Use_year,Cost_Use_year,...
            CO2_Hydro_kWh,CO2_Direct_kWh,CO2_Pyro_kWh,Cost_Hydro_kWh,Cost_Direct_kWh,Cost_Pyro_kWh,...
            CO2_Cell,CO2_Manu,CO2_PacRec,CO2_Hydro,CO2_Direct,CO2_Pyro,...
            Cost_PacRec,Cost_Hydro,Cost_Direct,Cost_Pyro] = LFPManufact(Mode,SOH1,SOH2)

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
if strcmp("EV",Mode)
    global BattEner_EV
    BattEner_EV = BattEner;
end

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



run LFPMaterials.m;
%%%%%%%%% CO2 %%%%%%%%
%%%%%%%%% Cell %%%%%
CO2_CellPos = CO2_Pos.*[PosAcMass PosCBMass PosBDMass PosBDMass*24*0.02 PosCCMass]/1000;
CO2_CellNeg = CO2_Neg.*[NegAcMass NegBDMass NegBDMass*24*0.02 NegCCMass]/1000;
CO2_CellEly = CO2_Ely.*[ElyMass*15.4/(20.2+29.8+15.4) ElyMass*20.2/(20.2+29.8+15.4) ElyMass*29.8/(20.2+29.8+15.4)]/1000;
CO2_CellSepa = CO2_Sepa.*[SepaMass*4/5 SepaMass/5]/1000;
CO2_CellPosTerm = CO2_PosTerm*PosTermMass/1000;
CO2_CellNegTerm = CO2_NegTerm*NegTermMass/1000;
CO2_CellPou = CO2_Pou.*[PouMass*0.82 PouMass/1000*0.13 PouMass/1000*0.05]/1000;
CO2_CellEner = CO2_CellEner0.*[1/940000*(PosAcMass+PosCBMass+PosBDMass+PosBDMass*24)/1000 ...
    1/1640*(PosAcMass+PosCBMass+PosBDMass+PosBDMass*24)/1000 ...
    1/720000*(NegAcMass+NegBDMass+NegBDMass*24)/1000 ...
    1/1650*(NegAcMass+NegBDMass+NegBDMass*24)/1000 ...
    CellTotMass/701.86*0.0817 ...
    CellTotMass/701.86*0.00153 ...
    0.152 ...
    CellTotMass/701.86*0.171 ...
    CellTotMass/701.86*1.16];
CO2_Cell = [CO2_CellPos CO2_CellNeg CO2_CellEly CO2_CellSepa CO2_CellPosTerm CO2_CellNegTerm CO2_CellPou CO2_CellEner].*ModTotCell*ModParaCell*PacTotMod;
if SOH2 == 1
    CO2_Cell_kWh = sum(CO2_Cell)/BattEner;
else
    CO2_Cell_kWh = 0;
    CO2_Cell = zeros(1,28);
end

%%%%%%%%% Module %%%%%
CO2_Mod1 = CO2_Mod0.*[ModWallMass ModPlateMass ModTermMass]/1000;
CO2_Mod = CO2_Mod1.*PacTotMod;

%%%%%%%%% Pack %%%%%
CO2_Pac = [CO2_PacCo CO2_PacBMS CO2_PacCool CO2_Pacjac CO2_PacEner0].* ...
    [PacCompMass PacConnMass PacBMSMass*0.1 PacBMSMass*0.5 PacBMSMass*0.4 PacCoolMass/2 PacCoolMass/2 PacjacMass*0.7 PacjacMass*0.3 PacjacMass PacTotMass/2480 BattEner*6];
CO2_Manu = [CO2_Mod CO2_Pac];
CO2_Manu_kWh = (sum(CO2_Mod)+sum(CO2_Pac))/BattEner;

if SOH2 <1
    run LFPRepurpose.m;
else
    CO2_Manu = [0 0 0 0 0 0 0 0 0 0 CO2_Mod CO2_Pac];
end

%%%%%%%%% Cost %%%%%
% Cell_kWh = CellCap*CellNomV/1000;
% if SOH2 == 1
%     Cost_Pac = 630/6.5*Cell_kWh*ModTotCell*ModParaCell*PacTotMod;
% else
%     Cost_Pac = (50+30*(134000000)^(0.95-1)*0.6^0.05)*1.0*Cell_kWh*SOH2*ModTotCell*ModParaCell*PacTotMod;
% end
% Cost_Pac_kWh = Cost_Pac/BattEner;
run LFPManufactCost.m;
run LFPUse.m;
% if SOH2 == 1
%     CO2_Repurpose_kWh = 0;
%     CO2_Reuse_kWh = 0;
% else
%     run NMCRepurpose.m;
%     run NMCReuse.m;
% end
run LFPRecycle.m;
% run Figure2.m;
end


