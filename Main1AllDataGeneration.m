%%%%%%%% Figure-all data generation %%%%%
clc;
clear;

%%%%%%%% NMC battery %%%%%%%%%%%%
run NMCmain.m;
load P_BESS;

%%%%%%%%% NMC carbon footprint - heat chart 
% x axis: initial SOH (%), rang: 70-100%
% y axis: ended SOH (%), range: 40-90%
Data1 = [
    NMC_CO2_Cell_kWh_ESS1,NMC_CO2_Cell_kWh_ESS2,NMC_CO2_Cell_kWh_ESS3,NMC_CO2_Cell_kWh_CBS1,NMC_CO2_Cell_kWh_CBS2,NMC_CO2_Cell_kWh_CBS3,NMC_CO2_Cell_kWh_CBS4,NMC_CO2_Cell_kWh_LSV; % Cell (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    NMC_CO2_Manu_kWh_ESS1,NMC_CO2_Manu_kWh_ESS2,NMC_CO2_Manu_kWh_ESS3,NMC_CO2_Manu_kWh_CBS1,NMC_CO2_Manu_kWh_CBS2,NMC_CO2_Manu_kWh_CBS3,NMC_CO2_Manu_kWh_CBS4,NMC_CO2_Manu_kWh_LSV; % Module & Pack (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    NMC_CO2_Use_year_ESS1,NMC_CO2_Use_year_ESS2,NMC_CO2_Use_year_ESS3,NMC_CO2_Use_year_CBS1,NMC_CO2_Use_year_CBS2,NMC_CO2_Use_year_CBS3,NMC_CO2_Use_year_CBS4,NMC_CO2_Use_year_LSV; % Use stage (kg CO2 eq./year) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    NMC_CO2_Use_kWh_year_ESS1,NMC_CO2_Use_kWh_year_ESS2,NMC_CO2_Use_kWh_year_ESS3,NMC_CO2_Use_kWh_year_CBS1,NMC_CO2_Use_kWh_year_CBS2,NMC_CO2_Use_kWh_year_CBS3,NMC_CO2_Use_kWh_year_CBS4,NMC_CO2_Use_kWh_year_LSV; % Use stage (kg CO2 eq./(kWh battery)/year) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    NMC_CO2_Use_kWh_ESS1,NMC_CO2_Use_kWh_ESS2,NMC_CO2_Use_kWh_ESS3,NMC_CO2_Use_kWh_CBS1,NMC_CO2_Use_kWh_CBS2,NMC_CO2_Use_kWh_CBS3,NMC_CO2_Use_kWh_CBS4,NMC_CO2_Use_kWh_LSV; % Use stage (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    NMC_CO2_Hydro_kWh_ESS1,NMC_CO2_Hydro_kWh_ESS2,NMC_CO2_Hydro_kWh_ESS3,NMC_CO2_Hydro_kWh_CBS1,NMC_CO2_Hydro_kWh_CBS2,NMC_CO2_Hydro_kWh_CBS3,NMC_CO2_Hydro_kWh_CBS4,NMC_CO2_Hydro_kWh_LSV; % Hydro- Recycling (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    NMC_CO2_Direct_kWh_ESS1,NMC_CO2_Direct_kWh_ESS2,NMC_CO2_Direct_kWh_ESS3,NMC_CO2_Direct_kWh_CBS1,NMC_CO2_Direct_kWh_CBS2,NMC_CO2_Direct_kWh_CBS3,NMC_CO2_Direct_kWh_CBS4,NMC_CO2_Direct_kWh_LSV; % Direct Recycling (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    NMC_CO2_Pyro_kWh_ESS1,NMC_CO2_Pyro_kWh_ESS2,NMC_CO2_Pyro_kWh_ESS3,NMC_CO2_Pyro_kWh_CBS1,NMC_CO2_Pyro_kWh_CBS2,NMC_CO2_Pyro_kWh_CBS3,NMC_CO2_Pyro_kWh_CBS4,NMC_CO2_Pyro_kWh_LSV % Pyro- Recycling (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    ];

%%%%%%% data cleaning, nan: not needed for calculations
[m,n]=size(Data1);
for i = 1:m
    for j = 1:n
        if Data1(i,j) == 0
            Data1(i,j)=nan;
        end
    end
end

%%%%%%% NMC carbon footprint - cell & module & pack manufacturing togethor - heat chart (In order to cope with the economy performance)
% x axis: initial SOH (%), rang: 70-100%
% y axis: ended SOH (%), range: 40-90%
Data5 = [
    NMC_CO2_Cell_kWh_ESS1+NMC_CO2_Manu_kWh_ESS1,NMC_CO2_Cell_kWh_ESS2+NMC_CO2_Manu_kWh_ESS2,NMC_CO2_Cell_kWh_ESS3+NMC_CO2_Manu_kWh_ESS3,NMC_CO2_Cell_kWh_CBS1+NMC_CO2_Manu_kWh_CBS1,...
    NMC_CO2_Cell_kWh_CBS2+NMC_CO2_Manu_kWh_CBS2,NMC_CO2_Cell_kWh_CBS3+NMC_CO2_Manu_kWh_CBS3,NMC_CO2_Cell_kWh_CBS4+NMC_CO2_Manu_kWh_CBS4,NMC_CO2_Cell_kWh_LSV+NMC_CO2_Manu_kWh_LSV; % Cell & Module & Pack (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
%     ,,,,,,,;
    NMC_CO2_Use_year_ESS1,NMC_CO2_Use_year_ESS2,NMC_CO2_Use_year_ESS3,NMC_CO2_Use_year_CBS1,NMC_CO2_Use_year_CBS2,NMC_CO2_Use_year_CBS3,NMC_CO2_Use_year_CBS4,NMC_CO2_Use_year_LSV; % Use stage (kg CO2 eq./year) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    NMC_CO2_Use_kWh_year_ESS1,NMC_CO2_Use_kWh_year_ESS2,NMC_CO2_Use_kWh_year_ESS3,NMC_CO2_Use_kWh_year_CBS1,NMC_CO2_Use_kWh_year_CBS2,NMC_CO2_Use_kWh_year_CBS3,NMC_CO2_Use_kWh_year_CBS4,NMC_CO2_Use_kWh_year_LSV; % Use stage (kg CO2 eq./(kWh battery)/year) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    NMC_CO2_Use_kWh_ESS1,NMC_CO2_Use_kWh_ESS2,NMC_CO2_Use_kWh_ESS3,NMC_CO2_Use_kWh_CBS1,NMC_CO2_Use_kWh_CBS2,NMC_CO2_Use_kWh_CBS3,NMC_CO2_Use_kWh_CBS4,NMC_CO2_Use_kWh_LSV; % Use stage (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    NMC_CO2_Hydro_kWh_ESS1,NMC_CO2_Hydro_kWh_ESS2,NMC_CO2_Hydro_kWh_ESS3,NMC_CO2_Hydro_kWh_CBS1,NMC_CO2_Hydro_kWh_CBS2,NMC_CO2_Hydro_kWh_CBS3,NMC_CO2_Hydro_kWh_CBS4,NMC_CO2_Hydro_kWh_LSV; % Hydro- Recycling (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    NMC_CO2_Direct_kWh_ESS1,NMC_CO2_Direct_kWh_ESS2,NMC_CO2_Direct_kWh_ESS3,NMC_CO2_Direct_kWh_CBS1,NMC_CO2_Direct_kWh_CBS2,NMC_CO2_Direct_kWh_CBS3,NMC_CO2_Direct_kWh_CBS4,NMC_CO2_Direct_kWh_LSV; % Direct Recycling (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    NMC_CO2_Pyro_kWh_ESS1,NMC_CO2_Pyro_kWh_ESS2,NMC_CO2_Pyro_kWh_ESS3,NMC_CO2_Pyro_kWh_CBS1,NMC_CO2_Pyro_kWh_CBS2,NMC_CO2_Pyro_kWh_CBS3,NMC_CO2_Pyro_kWh_CBS4,NMC_CO2_Pyro_kWh_LSV % Pyro- Recycling (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    ];

%%%%%%% data cleaning, nan: not needed for calculations
[m,n]=size(Data5);
for i = 1:m
    for j = 1:n
        if Data5(i,j) == 0
            Data5(i,j)=nan;
        end
    end
end

%%%%%%% NMC cost - heat chart
% x axis: initial SOH (%), rang: 70-100%
% y axis: ended SOH (%), range: 40-90%
Data2 = [
    NMC_Cost_Manu_kWh_ESS1,NMC_Cost_Manu_kWh_ESS2,NMC_Cost_Manu_kWh_ESS3,NMC_Cost_Manu_kWh_CBS1,NMC_Cost_Manu_kWh_CBS2,NMC_Cost_Manu_kWh_CBS3,NMC_Cost_Manu_kWh_CBS4,NMC_Cost_Manu_kWh_LSV; % Cell & Module & Pack ($/(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    NMC_Cost_Use_year_ESS1,NMC_Cost_Use_year_ESS2,NMC_Cost_Use_year_ESS3,NMC_Cost_Use_year_CBS1,NMC_Cost_Use_year_CBS2,NMC_Cost_Use_year_CBS3,NMC_Cost_Use_year_CBS4,NMC_Cost_Use_year_LSV; % Use stage ($/year) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    NMC_Cost_Use_kWh_year_ESS1,NMC_Cost_Use_kWh_year_ESS2,NMC_Cost_Use_kWh_year_ESS3,NMC_Cost_Use_kWh_year_CBS1,NMC_Cost_Use_kWh_year_CBS2,NMC_Cost_Use_kWh_year_CBS3,NMC_Cost_Use_kWh_year_CBS4,NMC_Cost_Use_kWh_year_LSV; % Use stage ($/(kWh battery)/year) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    NMC_Cost_Use_kWh_ESS1,NMC_Cost_Use_kWh_ESS2,NMC_Cost_Use_kWh_ESS3,NMC_Cost_Use_kWh_CBS1,NMC_Cost_Use_kWh_CBS2,NMC_Cost_Use_kWh_CBS3,NMC_Cost_Use_kWh_CBS4,NMC_Cost_Use_kWh_LSV; % Use stage ($/(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    NMC_Cost_Hydro_kWh_ESS1,NMC_Cost_Hydro_kWh_ESS2,NMC_Cost_Hydro_kWh_ESS3,NMC_Cost_Hydro_kWh_CBS1,NMC_Cost_Hydro_kWh_CBS2,NMC_Cost_Hydro_kWh_CBS3,NMC_Cost_Hydro_kWh_CBS4,NMC_Cost_Hydro_kWh_LSV; % Hydro- Recycling ($/(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    NMC_Cost_Direct_kWh_ESS1,NMC_Cost_Direct_kWh_ESS2,NMC_Cost_Direct_kWh_ESS3,NMC_Cost_Direct_kWh_CBS1,NMC_Cost_Direct_kWh_CBS2,NMC_Cost_Direct_kWh_CBS3,NMC_Cost_Direct_kWh_CBS4,NMC_Cost_Direct_kWh_LSV; % Direct Recycling ($/(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    NMC_Cost_Pyro_kWh_ESS1,NMC_Cost_Pyro_kWh_ESS2,NMC_Cost_Pyro_kWh_ESS3,NMC_Cost_Pyro_kWh_CBS1,NMC_Cost_Pyro_kWh_CBS2,NMC_Cost_Pyro_kWh_CBS3,NMC_Cost_Pyro_kWh_CBS4,NMC_Cost_Pyro_kWh_LSV % Pyro- Recycling ($/(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    ];

%%%%%%% data cleaning, nan: not needed for calculations
[m,n]=size(Data2);
for i = 1:m
    for j = 1:n
        if Data2(i,j) == 0
            Data2(i,j)=nan;
        end
    end
end

%%%%%%% NMC sum carbon footprint during its whole life with different recycle methods - heat chart
    % x axis: initial SOH (%), rang: 70-100% 
    % y axis: ended SOH (%), range: 40-90%
Data6 = zeros(18,32); 
for i=1:6
    Data6(i,:) = Data5(i,:)+Data5(i+18,:)+Data5(i+24,:); % NMC sum carbon emission during its whole life with Hydro- Recycling methods (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    Data6(i+6,:) = Data5(i,:)+Data5(i+18,:)+Data5(i+24+6,:); % NMC sum carbon emission during its whole life with Direct Recycling methods (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    Data6(i+12,:) = Data5(i,:)+Data5(i+18,:)+Data5(i+24+12,:); % NMC sum carbon emission during its whole life with Pyro- Recycling methods (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
end

%%%%%%% NMC sum cost during its whole life with different recycle methods - heat chart
% x axis: initial SOH (%), rang: 70-100%
% y axis: ended SOH (%), range: 40-90%
Data7 = [
    NMC_Cost_Manu_kWh_ESS1+NMC_Cost_Use_kWh_ESS1+NMC_Cost_Hydro_kWh_ESS1,NMC_Cost_Manu_kWh_ESS2+NMC_Cost_Use_kWh_ESS2+NMC_Cost_Hydro_kWh_ESS2,...
    NMC_Cost_Manu_kWh_ESS3+NMC_Cost_Use_kWh_ESS3+NMC_Cost_Hydro_kWh_ESS3,NMC_Cost_Manu_kWh_CBS1+NMC_Cost_Use_kWh_CBS1+NMC_Cost_Hydro_kWh_CBS1,...
    NMC_Cost_Manu_kWh_CBS2+NMC_Cost_Use_kWh_CBS2+NMC_Cost_Hydro_kWh_CBS2,NMC_Cost_Manu_kWh_CBS3+NMC_Cost_Use_kWh_CBS3+NMC_Cost_Hydro_kWh_CBS3,...
    NMC_Cost_Manu_kWh_CBS4+NMC_Cost_Use_kWh_CBS4+NMC_Cost_Hydro_kWh_CBS4,NMC_Cost_Manu_kWh_LSV+NMC_Cost_Use_kWh_LSV+NMC_Cost_Hydro_kWh_LSV; % NMC sum carbon emission during its whole life with Hydro- Recycling methods (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV

    NMC_Cost_Manu_kWh_ESS1+NMC_Cost_Use_kWh_ESS1+NMC_Cost_Direct_kWh_ESS1,NMC_Cost_Manu_kWh_ESS2+NMC_Cost_Use_kWh_ESS2+NMC_Cost_Direct_kWh_ESS2,...
    NMC_Cost_Manu_kWh_ESS3+NMC_Cost_Use_kWh_ESS3+NMC_Cost_Direct_kWh_ESS3,NMC_Cost_Manu_kWh_CBS1+NMC_Cost_Use_kWh_CBS1+NMC_Cost_Direct_kWh_CBS1,...
    NMC_Cost_Manu_kWh_CBS2+NMC_Cost_Use_kWh_CBS2+NMC_Cost_Direct_kWh_CBS2,NMC_Cost_Manu_kWh_CBS3+NMC_Cost_Use_kWh_CBS3+NMC_Cost_Direct_kWh_CBS3,...
    NMC_Cost_Manu_kWh_CBS4+NMC_Cost_Use_kWh_CBS4+NMC_Cost_Direct_kWh_CBS4,NMC_Cost_Manu_kWh_LSV+NMC_Cost_Use_kWh_LSV+NMC_Cost_Direct_kWh_LSV; % NMC sum carbon emission during its whole life with Direct Recycling methods (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV

    NMC_Cost_Manu_kWh_ESS1+NMC_Cost_Use_kWh_ESS1+NMC_Cost_Pyro_kWh_ESS1,NMC_Cost_Manu_kWh_ESS2+NMC_Cost_Use_kWh_ESS2+NMC_Cost_Pyro_kWh_ESS2,...
    NMC_Cost_Manu_kWh_ESS3+NMC_Cost_Use_kWh_ESS3+NMC_Cost_Pyro_kWh_ESS3,NMC_Cost_Manu_kWh_CBS1+NMC_Cost_Use_kWh_CBS1+NMC_Cost_Pyro_kWh_CBS1,...
    NMC_Cost_Manu_kWh_CBS2+NMC_Cost_Use_kWh_CBS2+NMC_Cost_Pyro_kWh_CBS2,NMC_Cost_Manu_kWh_CBS3+NMC_Cost_Use_kWh_CBS3+NMC_Cost_Pyro_kWh_CBS3,...
    NMC_Cost_Manu_kWh_CBS4+NMC_Cost_Use_kWh_CBS4+NMC_Cost_Pyro_kWh_CBS4,NMC_Cost_Manu_kWh_LSV+NMC_Cost_Use_kWh_LSV+NMC_Cost_Pyro_kWh_LSV % NMC sum carbon emission during its whole life with Pyro- Recycling methods (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    ];

%%%%%%% data cleaning, nan: not needed for calculations
[m,n]=size(Data7);
for i = 1:m
    for j = 1:n
        if Data7(i,j) == 0
            Data7(i,j)=nan;
        end
    end
end

%%%%%%%% LFP battery %%%%%%%%%%%%
run LFPmain.m;
%%%%%%% LFP carbon footprint - heat chart
% x axis: initial SOH (%), rang: 70-100%
% y axis: ended SOH (%), range: 40-90%
Data3 = [
    LFP_CO2_Cell_kWh_ESS1,LFP_CO2_Cell_kWh_ESS2,LFP_CO2_Cell_kWh_ESS3,LFP_CO2_Cell_kWh_CBS1,LFP_CO2_Cell_kWh_CBS2,LFP_CO2_Cell_kWh_CBS3,LFP_CO2_Cell_kWh_CBS4,LFP_CO2_Cell_kWh_LSV; % Cell (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    LFP_CO2_Manu_kWh_ESS1,LFP_CO2_Manu_kWh_ESS2,LFP_CO2_Manu_kWh_ESS3,LFP_CO2_Manu_kWh_CBS1,LFP_CO2_Manu_kWh_CBS2,LFP_CO2_Manu_kWh_CBS3,LFP_CO2_Manu_kWh_CBS4,LFP_CO2_Manu_kWh_LSV; % Module & Pack (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    LFP_CO2_Use_year_ESS1,LFP_CO2_Use_year_ESS2,LFP_CO2_Use_year_ESS3,LFP_CO2_Use_year_CBS1,LFP_CO2_Use_year_CBS2,LFP_CO2_Use_year_CBS3,LFP_CO2_Use_year_CBS4,LFP_CO2_Use_year_LSV; % Use stage (kg CO2 eq./year) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    LFP_CO2_Use_kWh_year_ESS1,LFP_CO2_Use_kWh_year_ESS2,LFP_CO2_Use_kWh_year_ESS3,LFP_CO2_Use_kWh_year_CBS1,LFP_CO2_Use_kWh_year_CBS2,LFP_CO2_Use_kWh_year_CBS3,LFP_CO2_Use_kWh_year_CBS4,LFP_CO2_Use_kWh_year_LSV; % Use stage (kg CO2 eq./(kWh battery)/year) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    LFP_CO2_Use_kWh_ESS1,LFP_CO2_Use_kWh_ESS2,LFP_CO2_Use_kWh_ESS3,LFP_CO2_Use_kWh_CBS1,LFP_CO2_Use_kWh_CBS2,LFP_CO2_Use_kWh_CBS3,LFP_CO2_Use_kWh_CBS4,LFP_CO2_Use_kWh_LSV; % Use stage (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    LFP_CO2_Hydro_kWh_ESS1,LFP_CO2_Hydro_kWh_ESS2,LFP_CO2_Hydro_kWh_ESS3,LFP_CO2_Hydro_kWh_CBS1,LFP_CO2_Hydro_kWh_CBS2,LFP_CO2_Hydro_kWh_CBS3,LFP_CO2_Hydro_kWh_CBS4,LFP_CO2_Hydro_kWh_LSV; % Hydro- Recycling (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    LFP_CO2_Direct_kWh_ESS1,LFP_CO2_Direct_kWh_ESS2,LFP_CO2_Direct_kWh_ESS3,LFP_CO2_Direct_kWh_CBS1,LFP_CO2_Direct_kWh_CBS2,LFP_CO2_Direct_kWh_CBS3,LFP_CO2_Direct_kWh_CBS4,LFP_CO2_Direct_kWh_LSV; % Direct Recycling (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    LFP_CO2_Pyro_kWh_ESS1,LFP_CO2_Pyro_kWh_ESS2,LFP_CO2_Pyro_kWh_ESS3,LFP_CO2_Pyro_kWh_CBS1,LFP_CO2_Pyro_kWh_CBS2,LFP_CO2_Pyro_kWh_CBS3,LFP_CO2_Pyro_kWh_CBS4,LFP_CO2_Pyro_kWh_LSV % Pyro- Recycling (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    ];

%%%%%%%%% data cleaning, nan: not needed for calculations
[m,n]=size(Data3);
for i = 1:m
    for j = 1:n
        if Data3(i,j) == 0
            Data3(i,j)=nan;
        end
    end
end

%%%%%%%%% LFP carbon footprint - cell & manu togethor - heat chart
Data9 = [
    LFP_CO2_Cell_kWh_ESS1+LFP_CO2_Manu_kWh_ESS1,LFP_CO2_Cell_kWh_ESS2+LFP_CO2_Manu_kWh_ESS2,LFP_CO2_Cell_kWh_ESS3+LFP_CO2_Manu_kWh_ESS3,LFP_CO2_Cell_kWh_CBS1+LFP_CO2_Manu_kWh_CBS1,...
    LFP_CO2_Cell_kWh_CBS2+LFP_CO2_Manu_kWh_CBS2,LFP_CO2_Cell_kWh_CBS3+LFP_CO2_Manu_kWh_CBS3,LFP_CO2_Cell_kWh_CBS4+LFP_CO2_Manu_kWh_CBS4,LFP_CO2_Cell_kWh_LSV+LFP_CO2_Manu_kWh_LSV; % Cell & Module & Pack (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
%     ,,,,,,,;
    LFP_CO2_Use_year_ESS1,LFP_CO2_Use_year_ESS2,LFP_CO2_Use_year_ESS3,LFP_CO2_Use_year_CBS1,LFP_CO2_Use_year_CBS2,LFP_CO2_Use_year_CBS3,LFP_CO2_Use_year_CBS4,LFP_CO2_Use_year_LSV; % Use stage (kg CO2 eq./year) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    LFP_CO2_Use_kWh_year_ESS1,LFP_CO2_Use_kWh_year_ESS2,LFP_CO2_Use_kWh_year_ESS3,LFP_CO2_Use_kWh_year_CBS1,LFP_CO2_Use_kWh_year_CBS2,LFP_CO2_Use_kWh_year_CBS3,LFP_CO2_Use_kWh_year_CBS4,LFP_CO2_Use_kWh_year_LSV; % Use stage (kg CO2 eq./(kWh battery)/year) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    LFP_CO2_Use_kWh_ESS1,LFP_CO2_Use_kWh_ESS2,LFP_CO2_Use_kWh_ESS3,LFP_CO2_Use_kWh_CBS1,LFP_CO2_Use_kWh_CBS2,LFP_CO2_Use_kWh_CBS3,LFP_CO2_Use_kWh_CBS4,LFP_CO2_Use_kWh_LSV; % Use stage (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    LFP_CO2_Hydro_kWh_ESS1,LFP_CO2_Hydro_kWh_ESS2,LFP_CO2_Hydro_kWh_ESS3,LFP_CO2_Hydro_kWh_CBS1,LFP_CO2_Hydro_kWh_CBS2,LFP_CO2_Hydro_kWh_CBS3,LFP_CO2_Hydro_kWh_CBS4,LFP_CO2_Hydro_kWh_LSV; % Hydro- Recycling (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    LFP_CO2_Direct_kWh_ESS1,LFP_CO2_Direct_kWh_ESS2,LFP_CO2_Direct_kWh_ESS3,LFP_CO2_Direct_kWh_CBS1,LFP_CO2_Direct_kWh_CBS2,LFP_CO2_Direct_kWh_CBS3,LFP_CO2_Direct_kWh_CBS4,LFP_CO2_Direct_kWh_LSV; % Direct Recycling (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    LFP_CO2_Pyro_kWh_ESS1,LFP_CO2_Pyro_kWh_ESS2,LFP_CO2_Pyro_kWh_ESS3,LFP_CO2_Pyro_kWh_CBS1,LFP_CO2_Pyro_kWh_CBS2,LFP_CO2_Pyro_kWh_CBS3,LFP_CO2_Pyro_kWh_CBS4,LFP_CO2_Pyro_kWh_LSV % Pyro- Recycling (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    ];

%%%%%%%%% data cleaning, nan: not needed for calculations
[m,n]=size(Data9);
for i = 1:m
    for j = 1:n
        if Data9(i,j) == 0
            Data9(i,j)=nan;
        end
    end
end

%%%%%%%%% LFP cost - heat chart
Data4 = [
    LFP_Cost_Manu_kWh_ESS1,LFP_Cost_Manu_kWh_ESS2,LFP_Cost_Manu_kWh_ESS3,LFP_Cost_Manu_kWh_CBS1,LFP_Cost_Manu_kWh_CBS2,LFP_Cost_Manu_kWh_CBS3,LFP_Cost_Manu_kWh_CBS4,LFP_Cost_Manu_kWh_LSV; % Cell & Module & Pack ($/(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    LFP_Cost_Use_year_ESS1,LFP_Cost_Use_year_ESS2,LFP_Cost_Use_year_ESS3,LFP_Cost_Use_year_CBS1,LFP_Cost_Use_year_CBS2,LFP_Cost_Use_year_CBS3,LFP_Cost_Use_year_CBS4,LFP_Cost_Use_year_LSV; % Use stage ($/year) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    LFP_Cost_Use_kWh_year_ESS1,LFP_Cost_Use_kWh_year_ESS2,LFP_Cost_Use_kWh_year_ESS3,LFP_Cost_Use_kWh_year_CBS1,LFP_Cost_Use_kWh_year_CBS2,LFP_Cost_Use_kWh_year_CBS3,LFP_Cost_Use_kWh_year_CBS4,LFP_Cost_Use_kWh_year_LSV; % Use stage ($/(kWh battery)/year) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    LFP_Cost_Use_kWh_ESS1,LFP_Cost_Use_kWh_ESS2,LFP_Cost_Use_kWh_ESS3,LFP_Cost_Use_kWh_CBS1,LFP_Cost_Use_kWh_CBS2,LFP_Cost_Use_kWh_CBS3,LFP_Cost_Use_kWh_CBS4,LFP_Cost_Use_kWh_LSV; % Use stage ($/(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    LFP_Cost_Hydro_kWh_ESS1,LFP_Cost_Hydro_kWh_ESS2,LFP_Cost_Hydro_kWh_ESS3,LFP_Cost_Hydro_kWh_CBS1,LFP_Cost_Hydro_kWh_CBS2,LFP_Cost_Hydro_kWh_CBS3,LFP_Cost_Hydro_kWh_CBS4,LFP_Cost_Hydro_kWh_LSV; % Hydro- Recycling ($/(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    LFP_Cost_Direct_kWh_ESS1,LFP_Cost_Direct_kWh_ESS2,LFP_Cost_Direct_kWh_ESS3,LFP_Cost_Direct_kWh_CBS1,LFP_Cost_Direct_kWh_CBS2,LFP_Cost_Direct_kWh_CBS3,LFP_Cost_Direct_kWh_CBS4,LFP_Cost_Direct_kWh_LSV; % Direct Recycling ($/(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    LFP_Cost_Pyro_kWh_ESS1,LFP_Cost_Pyro_kWh_ESS2,LFP_Cost_Pyro_kWh_ESS3,LFP_Cost_Pyro_kWh_CBS1,LFP_Cost_Pyro_kWh_CBS2,LFP_Cost_Pyro_kWh_CBS3,LFP_Cost_Pyro_kWh_CBS4,LFP_Cost_Pyro_kWh_LSV % Pyro- Recycling ($/(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    ];

%%%%%%%%% data cleaning, nan: not needed for calculations
[m,n]=size(Data4);
for i = 1:m
    for j = 1:n
        if Data4(i,j) == 0
            Data4(i,j)=nan;
        end
    end
end

%%%%%%%%% LFP sum carbon footprint during its whole life with different recycle methods - heat chart
Data10 = zeros(18,32);
for i=1:6
Data10(i,:) = Data9(i,:)+Data9(i+18,:)+Data9(i+24,:); % NMC sum carbon emission during its whole life with Hydro- Recycling methods (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
Data10(i+6,:) = Data9(i,:)+Data9(i+18,:)+Data9(i+24+6,:); % NMC sum carbon emission during its whole life with Direct Recycling methods (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
Data10(i+12,:) = Data9(i,:)+Data9(i+18,:)+Data9(i+24+12,:); % NMC sum carbon emission during its whole life with Pyro- Recycling methods (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
end

%%%%%%%%% LFP sum cost during its whole life with different recycle methods - heat chart
Data11 = [
    LFP_Cost_Manu_kWh_ESS1+LFP_Cost_Use_kWh_ESS1+LFP_Cost_Hydro_kWh_ESS1,LFP_Cost_Manu_kWh_ESS2+LFP_Cost_Use_kWh_ESS2+LFP_Cost_Hydro_kWh_ESS2,...
    LFP_Cost_Manu_kWh_ESS3+LFP_Cost_Use_kWh_ESS3+LFP_Cost_Hydro_kWh_ESS3,LFP_Cost_Manu_kWh_CBS1+LFP_Cost_Use_kWh_CBS1+LFP_Cost_Hydro_kWh_CBS1,...
    LFP_Cost_Manu_kWh_CBS2+LFP_Cost_Use_kWh_CBS2+LFP_Cost_Hydro_kWh_CBS2,LFP_Cost_Manu_kWh_CBS3+LFP_Cost_Use_kWh_CBS3+LFP_Cost_Hydro_kWh_CBS3,...
    LFP_Cost_Manu_kWh_CBS4+LFP_Cost_Use_kWh_CBS4+LFP_Cost_Hydro_kWh_CBS4,LFP_Cost_Manu_kWh_LSV+LFP_Cost_Use_kWh_LSV+LFP_Cost_Hydro_kWh_LSV; % NMC sum carbon emission during its whole life with Hydro- Recycling methods (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV

    LFP_Cost_Manu_kWh_ESS1+LFP_Cost_Use_kWh_ESS1+LFP_Cost_Direct_kWh_ESS1,LFP_Cost_Manu_kWh_ESS2+LFP_Cost_Use_kWh_ESS2+LFP_Cost_Direct_kWh_ESS2,...
    LFP_Cost_Manu_kWh_ESS3+LFP_Cost_Use_kWh_ESS3+LFP_Cost_Direct_kWh_ESS3,LFP_Cost_Manu_kWh_CBS1+LFP_Cost_Use_kWh_CBS1+LFP_Cost_Direct_kWh_CBS1,...
    LFP_Cost_Manu_kWh_CBS2+LFP_Cost_Use_kWh_CBS2+LFP_Cost_Direct_kWh_CBS2,LFP_Cost_Manu_kWh_CBS3+LFP_Cost_Use_kWh_CBS3+LFP_Cost_Direct_kWh_CBS3,...
    LFP_Cost_Manu_kWh_CBS4+LFP_Cost_Use_kWh_CBS4+LFP_Cost_Direct_kWh_CBS4,LFP_Cost_Manu_kWh_LSV+LFP_Cost_Use_kWh_LSV+LFP_Cost_Direct_kWh_LSV; % NMC sum carbon emission during its whole life with Direct Recycling methods (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV

    LFP_Cost_Manu_kWh_ESS1+LFP_Cost_Use_kWh_ESS1+LFP_Cost_Pyro_kWh_ESS1,LFP_Cost_Manu_kWh_ESS2+LFP_Cost_Use_kWh_ESS2+LFP_Cost_Pyro_kWh_ESS2,...
    LFP_Cost_Manu_kWh_ESS3+LFP_Cost_Use_kWh_ESS3+LFP_Cost_Pyro_kWh_ESS3,LFP_Cost_Manu_kWh_CBS1+LFP_Cost_Use_kWh_CBS1+LFP_Cost_Pyro_kWh_CBS1,...
    LFP_Cost_Manu_kWh_CBS2+LFP_Cost_Use_kWh_CBS2+LFP_Cost_Pyro_kWh_CBS2,LFP_Cost_Manu_kWh_CBS3+LFP_Cost_Use_kWh_CBS3+LFP_Cost_Pyro_kWh_CBS3,...
    LFP_Cost_Manu_kWh_CBS4+LFP_Cost_Use_kWh_CBS4+LFP_Cost_Pyro_kWh_CBS4,LFP_Cost_Manu_kWh_LSV+LFP_Cost_Use_kWh_LSV+LFP_Cost_Pyro_kWh_LSV % NMC sum carbon emission during its whole life with Pyro- Recycling methods (kg CO2 eq./(kWh battery)) ESS1, ESS2, ESS3, CBS1, CBS2, CBS3, CBS4, LSV
    ];

%%%%%%%%% data cleaning, nan: not needed for calculations
[m,n]=size(Data11);
for i = 1:m
    for j = 1:n
        if Data11(i,j) == 0
            Data11(i,j)=nan;
        end
    end
end
DataCost = [Data7;Data11]; % NMC & LFP sum cost during its whole life with different recycle methods - heat chart
DataCO2 = [Data6;Data10]; % NMC & LFP sum carbon emission during its whole life with different recycle methods - heat chart
