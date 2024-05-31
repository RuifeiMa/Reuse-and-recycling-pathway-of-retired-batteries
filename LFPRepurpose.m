% CO2_Repurpose = [CO2_PacRec_Input -CO2_PacRec_Output].*[0 0.01 0.31 1 1 1 0.9 0.9 0.9].* ...
%     [BattEner*0.8*0.5 PacTotMass PacTotMass PacCoolMass PacjacMass PacBMSMass (ModWallMass/1000*PacTotMod+ModPlateMass/1000*PacTotMod) (ModTermMass/1000*PacTotMod+PacConnMass) PacCompMass]* ...
%     1;
global BattEner_EV
global CO2_PacRec_EV
CO2_Repurpose = CO2_PacRec_EV*BattEner/BattEner_EV;
CO2_Manu = [CO2_Repurpose SOH2*2.5*BattEner CO2_Manu]; % 1)Disassembly 2)diagnose SOH 3)regroup
CO2_Manu_kWh = (sum(CO2_Repurpose))/BattEner+SOH2*2.5+CO2_Manu_kWh;


