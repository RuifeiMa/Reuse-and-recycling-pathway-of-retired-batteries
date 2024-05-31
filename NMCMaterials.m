%%%%%%%%% CO2 Input parameters %%%%%%%%
%%%%%%%%% Energy %%%%%
CO2_Elec = 0.8899; % Electricity, kg CO2 eq / kWh
% 2020(Base):0.8899; 2030(Base):0.8550; 2040(Base):0.7929;
% 2050(Base):0.7404
% 2030(RCP2.6):0.7072; 2040(RCP2.6):0.4504; 2050(RCP2.6):0.4626
CO2_Heat = 0.0027686073; % Heat, kg CO2 eq / MJ
CO2_PV = 0.079805996; % PV electricity, kg CO2 eq / kWh
%%%%%%%%% Transport %%%%%
CO2_Trans = 0.15174798; % Transport

%%%%%%%%% Cell %%%%%
%%%%%%%%% Cathode %%%%%
CO2_PosAc = 29.108814; % Cathode active material, kg CO2 eq / kg
CO2_PosCB = 2.3675482; % Conductor: Carbon black, kg CO2 eq / kg
CO2_PosBD_PVDF = 15.918928; % Binder: Polyvinylidene difluoride (PVDF)
CO2_PosBD_NMP = 6.6764243; % Binder solvent: NMP
CO2_PosCC = 15.661651; % Current collector: Aluminium foil
CO2_Pos = [CO2_PosAc CO2_PosCB CO2_PosBD_PVDF CO2_PosBD_NMP CO2_PosCC];
%%%%%%%%% Anode %%%%%
CO2_NegAc = 6.0549177; % Anode active material: Graphite
CO2_NegBD_PVDF = 15.918928; % Binder: PVDF
CO2_NegBD_NMP = 6.6764243; % Binder solvent: NMP
CO2_NegCC = 8.6605019; % Current collector: copper foil
CO2_Neg = [CO2_NegAc CO2_NegBD_PVDF CO2_NegBD_NMP CO2_NegCC];
%%%%%%%%% Electrolyte %%%%%
CO2_Ely_LiPF6 = 22.652363; % Electrolyte salt: LiPF6
CO2_Ely_EC = 1.6952077; % Electrolyte solvent: Ethylene carbonate (EC)
CO2_Ely_DMC = 2.3379045; % Electrolyte solvent: Dimethyl carbonate (DMC)
CO2_Ely = [CO2_Ely_LiPF6 CO2_Ely_EC CO2_Ely_DMC];
%%%%%%%%% Separator %%%%%
CO2_Sepa_PP = 2.2922374; % Microporous membrane: Polypropylene (PP)
CO2_Sepa_PE = 2.3232338; % Microporous membrane: Polyethylene (PE)
CO2_Sepa = [CO2_Sepa_PP CO2_Sepa_PE];
%%%%%%%%% Positive terminal assembly %%%%%
CO2_PosTerm = 15.661651; % Tab: aluminium
%%%%%%%%% Negative terminal assembly %%%%%
CO2_NegTerm = 8.6605019; % Tab: copper
%%%%%%%%% Cell container %%%%%
CO2_Pou_Al = 15.661651; % Aluminium
CO2_Pou_PET = 3.1848899; % Polyethylene terephthalate (PET)
CO2_Pou_PP = 2.2922374; % PP
CO2_Pou = [CO2_Pou_Al CO2_Pou_PET CO2_Pou_PP];
%%%%%%%%% Energy of Cell production %%%%%
CO2_CellEner0 = [CO2_Elec CO2_Heat CO2_Elec CO2_Heat CO2_Heat CO2_Elec CO2_Elec CO2_Elec CO2_Heat];

%%%%%%%%% Module %%%%%
CO2_ModWall = 15.661651; % Module casing: Aluminium
CO2_ModPlate = 15.661651; % Cooling plates: Aluminium
CO2_ModTerm = 8.6605019; % Module terminals: Copper
CO2_Mod0 = [CO2_ModWall CO2_ModPlate CO2_ModTerm];

%%%%%%%%% Pack %%%%%
%%%%%%%%% Battery pack accessories %%%%%
CO2_PacComp = 4.936455; % Module compression plates: Steel
CO2_PacConn = 8.6605019; % Module interconnects: Copper
CO2_PacCo = [CO2_PacComp CO2_PacConn];
%%%%%%%%% BMS %%%%%
CO2_PacBMS_board = 71.551743; % Performance monitoring: Printed wiring board
CO2_PacBMS_Cu = 5.5110713; % Wire: Copper
CO2_PacBMS_Steel = 4.936455; % Corrosion resistance: Chromium steel 18/8
CO2_PacBMS = [CO2_PacBMS_board CO2_PacBMS_Cu CO2_PacBMS_Steel];
%%%%%%%%% Coolant %%%%%
CO2_PacCool_C2H6O2 = 2.0356708; % Ethylene glycol
CO2_PacCool_H2O = 0.00013415404;
CO2_PacCool = [CO2_PacCool_C2H6O2 CO2_PacCool_H2O];
%%%%%%%%% Jacket %%%%%
CO2_Pacjac_GF = 2.5321974; % Glass fiber
CO2_Pacjac_PG = 2.2922374; % Polypropylene, granulate
CO2_Pacjac_IM = 1.2650062; % Injection moulding
CO2_Pacjac = [CO2_Pacjac_GF CO2_Pacjac_PG CO2_Pacjac_IM];
%%%%%%%%% Energy of module & pack %%%%%
CO2_PacEner0 = [CO2_Elec CO2_Elec];

%%%%%%%%% Recycle CO2 %%%%%

%%%%%%%%% Pack %%%%%
CO2_PacDis = [CO2_Elec CO2_Elec CO2_Trans];
CO2_SSM = 0.66000478; % Spent solvent mixture
CO2_WP = 0.053661941; % Waste plastic
CO2_ES = 0.037611607; % Electronics scrap
CO2_Al_pro = 15.584382; % Aluminium
CO2_Cu_pro = 8.583233;%6.576117; % Copper
CO2_Steel_pro = 4.8918485; % Steel
CO2_PacRec_Input = [CO2_PacDis CO2_SSM CO2_WP CO2_ES];
CO2_PacRec_Output = [CO2_Al_pro CO2_Cu_pro CO2_Steel_pro];

%%%%%%%%% Cell %%%%%
CO2_H2SO4_mar = 0.17502633; % carbon emission of 1 kg H2SO4, kg CO2 eq / kg
CO2_An_mar = 5.1522992;
CO2_Na2CO3_mar = 1.2532021;
CO2_water_mar = 0.00013415404;
CO2_Li2CO3_mar = 7.6438322;
CO2_Li2CO3_pro = 7.5895663;
CO2_NiSO4_pro = 7.5469634;
CO2_CoSO4_pro = 28.624957;
CO2_MnSO4_pro = 0.74296024;
CO2_Graphite_pro = 6.0436296;
% CO2_Al = 13.56076;
% CO2_Cu = 6.576117;
CO2_NMC622_pro = 18.4290125;
CO2_Coke_mar = 0.024142737;
%%%%%%%%% Hydro %%%%%
CO2_Hydro_Input = [CO2_H2SO4_mar CO2_An_mar CO2_Na2CO3_mar CO2_water_mar CO2_Elec];
CO2_Hydro_Output = [CO2_Li2CO3_pro CO2_NiSO4_pro CO2_CoSO4_pro CO2_MnSO4_pro CO2_Graphite_pro CO2_Al_pro CO2_Cu_pro];
%%%%%%%%% Direct %%%%%
CO2_Direct_Input = [CO2_Li2CO3_mar CO2_water_mar CO2_Elec];
CO2_Direct_Output = [CO2_NMC622_pro CO2_Graphite_pro CO2_Al_pro CO2_Cu_pro];
%%%%%%%%% Pyro %%%%%
CO2_Pyro_Input = [CO2_H2SO4_mar CO2_Coke_mar CO2_Na2CO3_mar CO2_water_mar CO2_Elec];
CO2_Pyro_Output = [CO2_Li2CO3_pro CO2_NiSO4_pro CO2_CoSO4_pro CO2_MnSO4_pro CO2_Graphite_pro CO2_Al_pro CO2_Cu_pro];

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%% Recycle input parameters %%%%%
%%%%%%%%% Cost %%%%%
ExchangeRate = 7.04; % 2023/5/22
Cost_Elec = 0.72/ExchangeRate; % Electricity, $
Cost_Trans = 500/ExchangeRate/1000; % Transportation, $/kg

%%%%%%%%% Pack %%%%%
Cost_PacDis = [Cost_Elec Cost_Elec Cost_Trans];
Cost_SSM = 0.1; % Spent solvent mixture
Cost_WP = 0.1; % Waste plastic
Cost_ES = 2.43; % Electronics scrap
Cost_Al = 1.45; % Aluminium
Cost_Cu = 5.43; % Copper
Cost_Steel = 0.28; % Steel
Cost_PacRec_Input = [Cost_PacDis Cost_SSM Cost_WP Cost_ES];
Cost_PacRec_Output = [Cost_Al Cost_Cu Cost_Steel];

%%%%%%%%% Cell %%%%%
Cost_DegradNMC = 118250/ExchangeRate/1000;
Cost_H2SO4 = 550/ExchangeRate/1000; % carbon emission of 1 kg H2SO4, $/kg
Cost_An = 3800/ExchangeRate/1000;
Cost_Na2CO3 = 3000/ExchangeRate/1000;
Cost_water = 3.2/ExchangeRate/1000;
Cost_Li2CO3 = 297236/ExchangeRate/1000; % minmum: ￥38694(2020.10.26) ~~ middle: 297236￥ ~~ maxmum: ￥597990(2022.11.70)
Cost_NiSO4 = 32700/ExchangeRate/1000;
Cost_CoSO4 = 36300/ExchangeRate/1000;
Cost_MnSO4 = 6100/ExchangeRate/1000;
Cost_Graphite = 35800/ExchangeRate/1000;
Cost_NMC622 = 244000/6.5/1000;%310;
Cost_Coke = 2074/ExchangeRate/1000;
%%%%%%%%% Hydro %%%%%
Cost_Labor_Hydro = 2150/ExchangeRate/1000;
Cost_Disass_Hydro = 850/ExchangeRate/1000;
Cost_Equip_Hydro = 365/ExchangeRate/1000;
Cost_Sewage_Hydro = 990/ExchangeRate/1000;
Cost_Hydro_Input = [Cost_DegradNMC Cost_H2SO4 Cost_An Cost_Na2CO3 Cost_water Cost_Elec ...
    Cost_Equip_Hydro Cost_Labor_Hydro Cost_Disass_Hydro Cost_Sewage_Hydro];
Cost_Hydro_Output = [Cost_Li2CO3 Cost_NiSO4 Cost_CoSO4 Cost_MnSO4 Cost_Graphite Cost_Al Cost_Cu];
%%%%%%%%% Direct %%%%%
Cost_Labor_Direct = 1564/ExchangeRate/1000;
Cost_Disass_Direct = 1000/ExchangeRate/1000;
Cost_Equip_Direct = 400/ExchangeRate/1000;
Cost_Sewage_Direct = 700/ExchangeRate/1000;
Cost_Direct_Input = [Cost_DegradNMC Cost_Li2CO3 Cost_water Cost_Elec ...
    Cost_Equip_Direct Cost_Labor_Direct Cost_Disass_Direct Cost_Sewage_Direct];
Cost_Direct_Output = [Cost_NMC622 Cost_Graphite Cost_Al Cost_Cu];
%%%%%%%%% Pyro %%%%%
Cost_Labor_Pyro = 2000/ExchangeRate/1000;
Cost_Disass_Pyro = 900/ExchangeRate/1000;
Cost_Equip_Pyro = 390/ExchangeRate/1000;
Cost_Sewage_Pyro = 800/ExchangeRate/1000;
Cost_Pyro_Input = [Cost_DegradNMC Cost_H2SO4 Cost_Coke Cost_Na2CO3 Cost_water Cost_Elec ...
    Cost_Equip_Pyro Cost_Labor_Pyro Cost_Disass_Pyro Cost_Sewage_Pyro];
Cost_Pyro_Output = [Cost_Li2CO3 Cost_NiSO4 Cost_CoSO4 Cost_MnSO4 Cost_Graphite Cost_Al Cost_Cu];
