% function [CO2_Use] = NMCUse(Mode,SOH1,BattEner)

% run NMCCellDesign.m;
CellCap = PosAcMass*PosSpCap/1000;
Cell_kWh = CellCap*CellNomV/1000;
% run NMCMaterials.m;
if strcmp("EV",Mode)
    SOHsum=0;
    soh = 1;
    cycle = 0;
    for i = 2:5000
        if soh >= SOH1
            cycle = i-1;
            soh = interp1(LFP_Cycle,LFP_SOH,cycle,'linear')*0.01;%%%%%%效率？
            SOHsum = SOHsum+soh;
        end
    end
    year = 8;
    CO2_Use_kWh = SOHsum*CO2_Elec;
    Cost_Use_kWh = SOHsum*Cost_Elec;
    CO2_Use_kWh_year =  SOHsum*BattEner*CO2_Elec/year;
    Cost_Use_kWh_year = SOHsum*Cost_Elec/year;
    CO2_Use_year =  SOHsum*BattEner*CO2_Elec/year/1000;
    Cost_Use_year = SOHsum*Cost_Elec/year/1000;
    return;
elseif strcmp("ESS1",Mode)
    if SOH2==1
        load('R5ShenzhenLFPbase100SOH\ALFPfirst1800.mat');
    elseif SOH2==0.9
        load('R5ShenzhenLFPbase90SOH\LFPbase90A2000.mat');
    elseif SOH2==0.8
        load('R5ShenzhenLFPbase80SOH\ALFP2200.mat');
    elseif SOH2==0.7
        load('R5ShenzhenLFPbase70SOH\LFP70A2600.mat');
    end
elseif strcmp("ESS2",Mode)
    if SOH2==1
        load('R5ShenzhenLFPbase100SOH\BLFPfirst1800.mat');
    elseif SOH2==0.9
        load('R5ShenzhenLFPbase90SOH\LFPbase90B2000.mat');
    elseif SOH2==0.8
        load('R5ShenzhenLFPbase80SOH\BLFP2200.mat');
    elseif SOH2==0.7
        load('R5ShenzhenLFPbase70SOH\LFP70B2600.mat');
    end
elseif strcmp("ESS3",Mode)
    if SOH2==1
        load('R5ShenzhenLFPbase100SOH\CLFPfirst1800.mat');
    elseif SOH2==0.9
        load('R5ShenzhenLFPbase90SOH\LFPbase90C2000.mat');
    elseif SOH2==0.8
        load('R5ShenzhenLFPbase80SOH\CLFP2200.mat');
    elseif SOH2==0.7
        load('R5ShenzhenLFPbase70SOH\LFP70C2600.mat');
    end
elseif strcmp("CBS1",Mode)
    if SOH2==1
        load('R5ShenzhenLFPbase100SOH\DLFPfirst300.mat');
    elseif SOH2==0.9
        load('R5ShenzhenLFPbase90SOH\LFPbase90D300.mat');
    elseif SOH2==0.8
        load('R5ShenzhenLFPbase80SOH\DLFP350.mat');
    elseif SOH2==0.7
        load('R5ShenzhenLFPbase70SOH\LFP70D400.mat');
    end
elseif strcmp("CBS2",Mode)
    if SOH2==1
        load('R5ShenzhenLFPbase100SOH\ELFPfirst300.mat');
    elseif SOH2==0.9
        load('R5ShenzhenLFPbase90SOH\LFPbase90E350.mat');
    elseif SOH2==0.8
        load('R5ShenzhenLFPbase80SOH\ELFP400.mat');
    elseif SOH2==0.7
        load('R5ShenzhenLFPbase70SOH\LFP70E450.mat');
    end
elseif strcmp("CBS3",Mode) 
    if SOH2==1
        load('R5ShenzhenLFPbase100SOH\FLFPfirst250.mat');
    elseif SOH2==0.9
        load('R5ShenzhenLFPbase90SOH\LFPbase90F300.mat');
    elseif SOH2==0.8
        load('R5ShenzhenLFPbase80SOH\FLFP350.mat');
    elseif SOH2==0.7
        load('R5ShenzhenLFPbase70SOH\LFP70F400.mat');
    end
elseif strcmp("CBS4",Mode) 
    if SOH2==1
        load('R5ShenzhenLFPbase100SOH\GLFPfirst50.mat');
    elseif SOH2==0.9
        load('R5ShenzhenLFPbase90SOH\LFPbase90G60.mat');
    elseif SOH2==0.8
        load('R5ShenzhenLFPbase80SOH\GLFP70.mat');
    elseif SOH2==0.7
        load('R5ShenzhenLFPbase70SOH\LFP70G80.mat');
    end
elseif strcmp("LSV",Mode) 
    if SOH2==1
        load('R5ShenzhenLFPbase100SOH\HLFPfirst40.mat');
    elseif SOH2==0.9
        load('R5ShenzhenLFPbase90SOH\LFPbase90H40.mat');
    elseif SOH2==0.8
        load('R5ShenzhenLFPbase80SOH\HLFP50.mat');
    elseif SOH2==0.7
        load('R5ShenzhenLFPbase70SOH\LFP70H70.mat');
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
for i=1:15
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

for i = 1:day
    d_E_sum(i+1) = d_E_sum(i)+d_E_BESS_table(i); % total energy loss due to efficiency
    E_sum_sum(i+1) = E_sum_sum(i)+E_BESS_sum_table(i); % total throughput energy
    P_buy_sel_sum(i+1) = P_buy_sel_sum(i)+P_buy_sel_table(i); % buy - sel (total)
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

