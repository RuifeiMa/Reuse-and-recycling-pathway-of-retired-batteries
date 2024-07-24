function [Cost_Manu] = ConfigurationNMCManufact(M,Cell_kWh,SOH2)
load P_BESS.mat;
% Cell_kWh = CellCap*CellNomV/1000;
if SOH2 == 1
    Cost_Manu = 630/6.5*Cell_kWh*M;
else
    %%%%%%%%%%%%%%%% SOH for second battery %%%%%%%%%%%%%%%%%%%%%
    SOHsum1=zeros(1,6000);
    SOH = 0.81;
    for i = 2:6000
        if SOH >= 0.4
            cycle = i+1900;
            %         SOH = (-3.158e-10*Cycle^3+1.808e-6*cycle^2-0.01267*Cycle+98.82)*0.01;
            if cycle<=4.09634e+03
                SOH = interp1(LFP_Cycle,LFP_SOH,cycle,'linear')*0.01;
            else
                SOH = (-3.158e-10*cycle^3+1.808e-6*cycle^2-0.01267*cycle+98.82)*0.01;
            end
            SOHsum1(1,i) = SOHsum1(1,i-1)+SOH;
        end
    end

    SOHsum2=zeros(1,2000);
    SOH = 0.81;
    for i = 2:2000
        if SOH >= 0.4
            cycle = i+1000;
            SOH = interp1(NMC_Cycle,NMC_SOH,cycle,'linear')*0.01;
            SOHsum2(i) = SOHsum2(i-1)+SOH;
        end
    end
%     C_battery_avarage = max(SOHsum1)*30/100+max(SOHsum2)*70/100;
    C_battery_avarage = max(SOHsum1)*45/100+max(SOHsum2)*55/100;
    if SOH2==0.8
        adc = max(SOHsum2)/C_battery_avarage;
        %%%%%%%%%%%%%%% NMC 70%SOH %%%%%%%%%%%%%%%
    elseif SOH2==0.7
        SOHsum3=zeros(1,2000);
        SOH = 0.7;
        for i = 2:2000
            if SOH >= 0.4
                cycle = i+1299;
                SOH = interp1(NMC_Cycle,NMC_SOH,cycle,'linear')*0.01;
                SOHsum3(i) = SOHsum3(i-1)+SOH;
            end
        end
        adc = max(SOHsum3)/C_battery_avarage;
        %%%%%%%%%%%%%%%% NMC 90%SOH %%%%%%%%%%%%%%%%%%
    elseif SOH2==0.9
        SOHsum4=zeros(1,2000);
        SOH = 0.9;
        for i = 2:2000
            if SOH >= 0.4
                cycle = i+599;
                SOH = interp1(NMC_Cycle,NMC_SOH,cycle,'linear')*0.01;
                SOHsum4(i) = SOHsum4(i-1)+SOH;
            end
        end
        adc = max(SOHsum4)/C_battery_avarage;
    end
    Cost_Manu = (19+25*(134000000)^(0.95-1)*0.6^0.05)*1.0*Cell_kWh*SOH2*M*adc;
end

% Cost_Manu_kWh = Cost_Manu/BattEner;