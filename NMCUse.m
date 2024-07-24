% function [CO2_Use] = NMCUse(Mode,SOH1,BattEner)

% run NMCCellDesign.m;
% CellNomV = 3.75;
CellCap = PosAcMass*PosSpCap/1000;
Cell_kWh = CellCap*CellNomV/1000;
% run NMCMaterials.m;
if strcmp("EV",Mode)
    SOHsum=0;
    soh = 1;
    cycle = 0;
    for i = 2:3000
        if soh >= SOH1
            cycle = i-1;
            soh = interp1(NMC_Cycle,NMC_SOH,cycle,'linear')*0.01;%%%%%%效率？
            SOHsum = SOHsum+soh;
        end
    end
    year = 8;

    CO2_Use_kWh = SOHsum*CO2_Elec;
    Cost_Use_kWh = SOHsum*Cost_Elec;%/BattEner;
    CO2_Use_kWh_year =  SOHsum*CO2_Elec/year;
    Cost_Use_kWh_year = SOHsum*Cost_Elec/year;
    CO2_Use_year =  SOHsum*BattEner*CO2_Elec/year/1000;
    Cost_Use_year = SOHsum*Cost_Elec/year/1000;
    return;
elseif strcmp("ESS1",Mode)
    if SOH2==1
        load('R5ShenzhenNMCbase100SOH\ANMCfirst1000.mat');
    elseif SOH2==0.9
        load('R5ShenzhenNMCbase90SOH\ANMC90Second2000.mat');
    elseif SOH2==0.8
        load('R5ShenzhenNMCbase80SOH\ANMC2200.mat');
    elseif SOH2==0.7
        load('R5ShenzhenNMCbase70SOH\ANMC70Second2600.mat');
    end
elseif strcmp("ESS2",Mode)
    if SOH2==1
        load('R5ShenzhenNMCbase100SOH\BNMCfirst800.mat');
    elseif SOH2==0.9
        load('R5ShenzhenNMCbase90SOH\BNMC90Second2000.mat');
    elseif SOH2==0.8
        load('R5ShenzhenNMCbase80SOH\BNMC2200.mat');
    elseif SOH2==0.7
        load('R5ShenzhenNMCbase70SOH\BNMC70Second2600.mat');
    end
elseif strcmp("ESS3",Mode)
    if SOH2==1
        load('R5ShenzhenNMCbase100SOH\CNMCfirst1000.mat');
    elseif SOH2==0.9
        load('R5ShenzhenNMCbase90SOH\CNMC90Second2000.mat');
    elseif SOH2==0.8
        load('R5ShenzhenNMCbase80SOH\CNMC2200.mat');
    elseif SOH2==0.7
        load('R5ShenzhenNMCbase70SOH\CNMC70Second2600.mat');
    end
elseif strcmp("CBS1",Mode)
    if SOH2==1
        load('R5ShenzhenNMCbase100SOH\DNMCfirst300.mat');
    elseif SOH2==0.9
        load('R5ShenzhenNMCbase90SOH\DNMC90Second300.mat');
    elseif SOH2==0.8
        load('R5ShenzhenNMCbase80SOH\DNMC350.mat');
    elseif SOH2==0.7
        load('R5ShenzhenNMCbase70SOH\DNMC70Second400.mat');
    end
elseif strcmp("CBS2",Mode)
    if SOH2==1
        load('R5ShenzhenNMCbase100SOH\ENMCfirst300.mat');
    elseif SOH2==0.9
        load('R5ShenzhenNMCbase90SOH\ENMC90Second350.mat');
    elseif SOH2==0.8
        load('R5ShenzhenNMCbase80SOH\ENMC400.mat');
    elseif SOH2==0.7
        load('R5ShenzhenNMCbase70SOH\ENMC70Second450.mat');
    end
elseif strcmp("CBS3",Mode) 
    if SOH2==1
        load('R5ShenzhenNMCbase100SOH\FNMCfirst250.mat');
    elseif SOH2==0.9
        load('R5ShenzhenNMCbase90SOH\FNMC90Second300.mat');
    elseif SOH2==0.8
        load('R5ShenzhenNMCbase80SOH\FNMC350.mat');
    elseif SOH2==0.7
        load('R5ShenzhenNMCbase70SOH\FNMC70Second400.mat');
    end
elseif strcmp("CBS4",Mode) 
    if SOH2==1
        load('R5ShenzhenNMCbase100SOH\GNMCfirst50.mat');
    elseif SOH2==0.9
        load('R5ShenzhenNMCbase90SOH\GNMC90Second60.mat');
    elseif SOH2==0.8
        load('R5ShenzhenNMCbase80SOH\GNMC70.mat');
    elseif SOH2==0.7
        load('R5ShenzhenNMCbase70SOH\GNMC70Second80.mat');
    end
elseif strcmp("LSV",Mode) 
    if SOH2==1
        load('R5ShenzhenNMCbase100SOH\HNMCfirst60.mat');
    elseif SOH2==0.9
        load('R5ShenzhenNMCbase90SOH\HNMC90Second60.mat');
    elseif SOH2==0.8
        load('R5ShenzhenNMCbase80SOH\HNMC70.mat');
    elseif SOH2==0.7
        load('R5ShenzhenNMCbase70SOH\HNMC70Second100.mat');
    end
end

for i=1:length(SOH_table)
    if SOH_table(i)<=SOH1
        day = i;
        break;
    end
end
C_total = C_total_table(day);
C_ope = 0;
year = day/365;
ir=0.1;
id=0.02;
irid = (1+ir)/(1+id);
for i=1:10
    if i<=year
        C_ope = C_ope+Cell_kWh*M*25/6.5*(irid)^i;
    else
        if i< year+1
            C_ope = C_ope+Cell_kWh*M*25/6.5*(irid)^i*(year+1-i);
        else
            break;
        end
    end
end

d_E_BESS_table = value(d_E_BESS_table);
d_E_sum = zeros(1,5475);

E_BESS_sum_table = value(E_BESS_sum_table);
E_sum_sum = zeros(1,5475);

P_buy_sel_table = value(P_buy_sel_table);
P_buy_sel_sum = zeros(1,5475);

P_load_sum = zeros(1,5475);

for i = 1:day
    d_E_sum(i+1) = d_E_sum(i)+d_E_BESS_table(i); % total energy loss due to efficiency
    E_sum_sum(i+1) = E_sum_sum(i)+E_BESS_sum_table(i); % total throughput energy
    P_buy_sel_sum(i+1) = P_buy_sel_sum(i)+P_buy_sel_table(i); % buy - sel (total)
    P_load_sum(i+1) = P_load_sum(i)+sum(P_load);
    n(i) = P_buy_sel_table(i+1)-sum(P_load);
end
d_E_max = max(d_E_sum);
E_sum_sum_max = max(E_sum_sum);
P_buy_sel_sum_max = max(P_buy_sel_sum);
P_PV_max = sum(P_PV)*day; % the sum of PV
P_load_max = sum(P_load)*day; % the sum of load
y = P_buy_sel_sum_max+P_PV_max; % the sum of power grid and PV
x = P_buy_sel_sum_max/y; % the proportion of power grid electricity
z = y;%-P_load_max; % battery consume power
if strcmp("LSV",Mode) 
    CO2_Use_kWh = P_load_max*(1*CO2_Elec+(1-1)*CO2_PV)/BattEner;
    CO2_Use_year = P_load_max*(1*CO2_Elec+(1-1)*CO2_PV)/year/1000;
else
    CO2_Use_kWh = z*(x*CO2_Elec+(1-x)*CO2_PV)/BattEner;
    CO2_Use_year = z*(x*CO2_Elec+(1-x)*CO2_PV)/year/1000;
end
% CO2_Use_kWh = z*(x*CO2_Elec+(1-x)*CO2_PV)/BattEner;
Cost_Use_kWh = (C_total+C_ope)/BattEner;
CO2_Use_kWh_year = CO2_Use_kWh/year;
Cost_Use_kWh_year = (C_total+C_ope)/BattEner/year;
Cost_Use_year = (C_total+C_ope)/year/1000;
% end

