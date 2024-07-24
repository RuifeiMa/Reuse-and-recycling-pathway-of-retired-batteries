%%%%%%% Carbon footprint per kWh battery data in each phase 

%%%%%%% NMC carbon footprint per kWh battery data in each phase 
% (Initial SOH of battery for EV is set at 100%，while the ending SOH for ESS/CBS/LSV batteries defaults to 40%.)
% bar chart
% DataNMCbar = [NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),0,0,NMC_CO2_Hydro_kWh_EV(1); % Cell, manu, first-life in EV (100-90% SOH), hydro-recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),0,0,NMC_CO2_Hydro_kWh_EV(2); % Cell, manu, first-life in EV (100-80% SOH), hydro-recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),0,0,NMC_CO2_Hydro_kWh_EV(3); % Cell, manu, first-life in EV (100-70% SOH), hydro-recycling
%     NMC_CO2_Cell_kWh_ESS2(6,1),NMC_CO2_Manu_kWh_ESS2(6,1),NMC_CO2_Use_kWh_ESS2(6,1),0,0,NMC_CO2_Direct_kWh_ESS2(6,1); % Cell, manu, first-life in ESS1 (100-40% SOH), direct recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_ESS1(6,2),NMC_CO2_Use_kWh_ESS1(6,2),NMC_CO2_Direct_kWh_ESS1(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in ESS1 (90-40%), direct recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_ESS1(6,3),NMC_CO2_Use_kWh_ESS1(6,3),NMC_CO2_Direct_kWh_ESS1(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in ESS1 (80-40%), direct recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_ESS1(6,4),NMC_CO2_Use_kWh_ESS1(6,4),NMC_CO2_Direct_kWh_ESS1(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in ESS1 (70-40%), direct recycling
%     NMC_CO2_Cell_kWh_ESS2(6,1),NMC_CO2_Manu_kWh_ESS2(6,1),NMC_CO2_Use_kWh_ESS2(6,1),0,0,NMC_CO2_Direct_kWh_ESS2(6,1); % Cell, manu, first-life in ESS2 (100-40% SOH), direct recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_ESS2(6,2),NMC_CO2_Use_kWh_ESS2(6,2),NMC_CO2_Direct_kWh_ESS2(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in ESS2 (90-40%), direct recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_ESS2(6,3),NMC_CO2_Use_kWh_ESS2(6,3),NMC_CO2_Direct_kWh_ESS2(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in ESS2 (80-40%), direct recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_ESS2(6,4),NMC_CO2_Use_kWh_ESS2(6,4),NMC_CO2_Direct_kWh_ESS2(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in ESS2 (70-40%), direct recycling
%     NMC_CO2_Cell_kWh_ESS3(6,1),NMC_CO2_Manu_kWh_ESS3(6,1),NMC_CO2_Use_kWh_ESS3(6,1),0,0,NMC_CO2_Direct_kWh_ESS3(6,1); % Cell, manu, first-life in ESS3 (100-40% SOH), direct recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_ESS3(6,2),NMC_CO2_Use_kWh_ESS3(6,2),NMC_CO2_Direct_kWh_ESS3(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in ESS3 (90-40%), direct recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_ESS3(6,3),NMC_CO2_Use_kWh_ESS3(6,3),NMC_CO2_Direct_kWh_ESS3(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in ESS3 (80-40%), direct recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_ESS3(6,4),NMC_CO2_Use_kWh_ESS3(6,4),NMC_CO2_Direct_kWh_ESS3(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in ESS3 (70-40%), direct recycling
%     NMC_CO2_Cell_kWh_CBS1(6,1),NMC_CO2_Manu_kWh_CBS1(6,1),NMC_CO2_Use_kWh_CBS1(6,1),0,0,NMC_CO2_Direct_kWh_CBS1(6,1); % Cell, manu, first-life in CBS1 (100-40% SOH), direct recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_CBS1(6,2),NMC_CO2_Use_kWh_CBS1(6,2),NMC_CO2_Direct_kWh_CBS1(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in CBS1 (90-40%), direct recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_CBS1(6,3),NMC_CO2_Use_kWh_CBS1(6,3),NMC_CO2_Direct_kWh_CBS1(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in CBS1 (80-40%), direct recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_CBS1(6,4),NMC_CO2_Use_kWh_CBS1(6,4),NMC_CO2_Direct_kWh_CBS1(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in CBS1 (70-40%), direct recycling
%     NMC_CO2_Cell_kWh_CBS2(6,1),NMC_CO2_Manu_kWh_CBS2(6,1),NMC_CO2_Use_kWh_CBS2(6,1),0,0,NMC_CO2_Direct_kWh_CBS2(6,1); % Cell, manu, first-life in CBS2 (100-40% SOH), direct recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_CBS2(6,2),NMC_CO2_Use_kWh_CBS2(6,2),NMC_CO2_Direct_kWh_CBS2(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in CBS2 (90-40%), direct recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_CBS2(6,3),NMC_CO2_Use_kWh_CBS2(6,3),NMC_CO2_Direct_kWh_CBS2(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in CBS2 (80-40%), direct recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_CBS2(6,4),NMC_CO2_Use_kWh_CBS2(6,4),NMC_CO2_Direct_kWh_CBS2(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in CBS2 (70-40%), direct recycling
%     NMC_CO2_Cell_kWh_CBS3(6,1),NMC_CO2_Manu_kWh_CBS3(6,1),NMC_CO2_Use_kWh_CBS3(6,1),0,0,NMC_CO2_Direct_kWh_CBS3(6,1); % Cell, manu, first-life in CBS3 (100-40% SOH), direct recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_CBS3(6,2),NMC_CO2_Use_kWh_CBS3(6,2),NMC_CO2_Direct_kWh_CBS3(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in CBS3 (90-40%), direct recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_CBS3(6,3),NMC_CO2_Use_kWh_CBS3(6,3),NMC_CO2_Direct_kWh_CBS3(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in CBS3 (80-40%), direct recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_CBS3(6,4),NMC_CO2_Use_kWh_CBS3(6,4),NMC_CO2_Direct_kWh_CBS3(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in CBS3 (70-40%), direct recycling
%     NMC_CO2_Cell_kWh_CBS4(6,1),NMC_CO2_Manu_kWh_CBS4(6,1),NMC_CO2_Use_kWh_CBS4(6,1),0,0,NMC_CO2_Direct_kWh_CBS4(6,1); % Cell, manu, first-life in CBS4 (100-40% SOH), direct recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_CBS4(6,2),NMC_CO2_Use_kWh_CBS4(6,2),NMC_CO2_Direct_kWh_CBS4(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in CBS4 (90-40%), direct recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_CBS4(6,3),NMC_CO2_Use_kWh_CBS4(6,3),NMC_CO2_Direct_kWh_CBS4(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in CBS4 (80-40%), direct recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_CBS4(6,4),NMC_CO2_Use_kWh_CBS4(6,4),NMC_CO2_Direct_kWh_CBS4(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in CBS4 (70-40%), direct recycling
%     NMC_CO2_Cell_kWh_LSV(6,1),NMC_CO2_Manu_kWh_LSV(6,1),NMC_CO2_Use_kWh_LSV(6,1),0,0,NMC_CO2_Direct_kWh_LSV(6,1); % Cell, manu, first-life in LSV (100-40% SOH), direct recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_LSV(6,2),NMC_CO2_Use_kWh_LSV(6,2),NMC_CO2_Direct_kWh_LSV(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in LSV (90-40%), direct recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_LSV(6,3),NMC_CO2_Use_kWh_LSV(6,3),NMC_CO2_Direct_kWh_LSV(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in LSV (80-40%), direct recycling
%     NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_LSV(6,4),NMC_CO2_Use_kWh_LSV(6,4),NMC_CO2_Direct_kWh_LSV(6,4);]; % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in LSV (70-40%), direct recycling
DataNMCbar = [NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),0,0,NMC_CO2_Hydro_kWh_EV(1); % Cell, manu, first-life in EV (100-90% SOH), hydro-recycling
    NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),0,0,NMC_CO2_Hydro_kWh_EV(2); % Cell, manu, first-life in EV (100-80% SOH), hydro-recycling
    NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),0,0,NMC_CO2_Hydro_kWh_EV(3); % Cell, manu, first-life in EV (100-70% SOH), hydro-recycling
    NMC_CO2_Cell_kWh_ESS2(6,1),NMC_CO2_Manu_kWh_ESS2(6,1),NMC_CO2_Use_kWh_ESS2(6,1),0,0,NMC_CO2_Direct_kWh_ESS2(6,1); % Cell, manu, first-life in ESS1 (100-40% SOH), direct recycling
    0,0,0,NMC_CO2_Manu_kWh_ESS1(6,2),NMC_CO2_Use_kWh_ESS1(6,2),NMC_CO2_Direct_kWh_ESS1(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in ESS1 (90-40%), direct recycling
    0,0,0,NMC_CO2_Manu_kWh_ESS1(6,3),NMC_CO2_Use_kWh_ESS1(6,3),NMC_CO2_Direct_kWh_ESS1(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in ESS1 (80-40%), direct recycling
    0,0,0,NMC_CO2_Manu_kWh_ESS1(6,4),NMC_CO2_Use_kWh_ESS1(6,4),NMC_CO2_Direct_kWh_ESS1(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in ESS1 (70-40%), direct recycling
    NMC_CO2_Cell_kWh_ESS2(6,1),NMC_CO2_Manu_kWh_ESS2(6,1),NMC_CO2_Use_kWh_ESS2(6,1),0,0,NMC_CO2_Direct_kWh_ESS2(6,1); % Cell, manu, first-life in ESS2 (100-40% SOH), direct recycling
    0,0,0,NMC_CO2_Manu_kWh_ESS2(6,2),NMC_CO2_Use_kWh_ESS2(6,2),NMC_CO2_Direct_kWh_ESS2(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in ESS2 (90-40%), direct recycling
    0,0,0,NMC_CO2_Manu_kWh_ESS2(6,3),NMC_CO2_Use_kWh_ESS2(6,3),NMC_CO2_Direct_kWh_ESS2(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in ESS2 (80-40%), direct recycling
    0,0,0,NMC_CO2_Manu_kWh_ESS2(6,4),NMC_CO2_Use_kWh_ESS2(6,4),NMC_CO2_Direct_kWh_ESS2(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in ESS2 (70-40%), direct recycling
    NMC_CO2_Cell_kWh_ESS3(6,1),NMC_CO2_Manu_kWh_ESS3(6,1),NMC_CO2_Use_kWh_ESS3(6,1),0,0,NMC_CO2_Direct_kWh_ESS3(6,1); % Cell, manu, first-life in ESS3 (100-40% SOH), direct recycling
    0,0,0,NMC_CO2_Manu_kWh_ESS3(6,2),NMC_CO2_Use_kWh_ESS3(6,2),NMC_CO2_Direct_kWh_ESS3(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in ESS3 (90-40%), direct recycling
    0,0,0,NMC_CO2_Manu_kWh_ESS3(6,3),NMC_CO2_Use_kWh_ESS3(6,3),NMC_CO2_Direct_kWh_ESS3(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in ESS3 (80-40%), direct recycling
    0,0,0,NMC_CO2_Manu_kWh_ESS3(6,4),NMC_CO2_Use_kWh_ESS3(6,4),NMC_CO2_Direct_kWh_ESS3(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in ESS3 (70-40%), direct recycling
    NMC_CO2_Cell_kWh_CBS1(6,1),NMC_CO2_Manu_kWh_CBS1(6,1),NMC_CO2_Use_kWh_CBS1(6,1),0,0,NMC_CO2_Direct_kWh_CBS1(6,1); % Cell, manu, first-life in CBS1 (100-40% SOH), direct recycling
    0,0,0,NMC_CO2_Manu_kWh_CBS1(6,2),NMC_CO2_Use_kWh_CBS1(6,2),NMC_CO2_Direct_kWh_CBS1(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in CBS1 (90-40%), direct recycling
    0,0,0,NMC_CO2_Manu_kWh_CBS1(6,3),NMC_CO2_Use_kWh_CBS1(6,3),NMC_CO2_Direct_kWh_CBS1(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in CBS1 (80-40%), direct recycling
    0,0,0,NMC_CO2_Manu_kWh_CBS1(6,4),NMC_CO2_Use_kWh_CBS1(6,4),NMC_CO2_Direct_kWh_CBS1(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in CBS1 (70-40%), direct recycling
    NMC_CO2_Cell_kWh_CBS2(6,1),NMC_CO2_Manu_kWh_CBS2(6,1),NMC_CO2_Use_kWh_CBS2(6,1),0,0,NMC_CO2_Direct_kWh_CBS2(6,1); % Cell, manu, first-life in CBS2 (100-40% SOH), direct recycling
    0,0,0,NMC_CO2_Manu_kWh_CBS2(6,2),NMC_CO2_Use_kWh_CBS2(6,2),NMC_CO2_Direct_kWh_CBS2(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in CBS2 (90-40%), direct recycling
    0,0,0,NMC_CO2_Manu_kWh_CBS2(6,3),NMC_CO2_Use_kWh_CBS2(6,3),NMC_CO2_Direct_kWh_CBS2(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in CBS2 (80-40%), direct recycling
    0,0,0,NMC_CO2_Manu_kWh_CBS2(6,4),NMC_CO2_Use_kWh_CBS2(6,4),NMC_CO2_Direct_kWh_CBS2(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in CBS2 (70-40%), direct recycling
    NMC_CO2_Cell_kWh_CBS3(6,1),NMC_CO2_Manu_kWh_CBS3(6,1),NMC_CO2_Use_kWh_CBS3(6,1),0,0,NMC_CO2_Direct_kWh_CBS3(6,1); % Cell, manu, first-life in CBS3 (100-40% SOH), direct recycling
    0,0,0,NMC_CO2_Manu_kWh_CBS3(6,2),NMC_CO2_Use_kWh_CBS3(6,2),NMC_CO2_Direct_kWh_CBS3(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in CBS3 (90-40%), direct recycling
    0,0,0,NMC_CO2_Manu_kWh_CBS3(6,3),NMC_CO2_Use_kWh_CBS3(6,3),NMC_CO2_Direct_kWh_CBS3(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in CBS3 (80-40%), direct recycling
    0,0,0,NMC_CO2_Manu_kWh_CBS3(6,4),NMC_CO2_Use_kWh_CBS3(6,4),NMC_CO2_Direct_kWh_CBS3(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in CBS3 (70-40%), direct recycling
    NMC_CO2_Cell_kWh_CBS4(6,1),NMC_CO2_Manu_kWh_CBS4(6,1),NMC_CO2_Use_kWh_CBS4(6,1),0,0,NMC_CO2_Direct_kWh_CBS4(6,1); % Cell, manu, first-life in CBS4 (100-40% SOH), direct recycling
    0,0,0,NMC_CO2_Manu_kWh_CBS4(6,2),NMC_CO2_Use_kWh_CBS4(6,2),NMC_CO2_Direct_kWh_CBS4(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in CBS4 (90-40%), direct recycling
    0,0,0,NMC_CO2_Manu_kWh_CBS4(6,3),NMC_CO2_Use_kWh_CBS4(6,3),NMC_CO2_Direct_kWh_CBS4(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in CBS4 (80-40%), direct recycling
    0,0,0,NMC_CO2_Manu_kWh_CBS4(6,4),NMC_CO2_Use_kWh_CBS4(6,4),NMC_CO2_Direct_kWh_CBS4(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in CBS4 (70-40%), direct recycling
    NMC_CO2_Cell_kWh_LSV(6,1),NMC_CO2_Manu_kWh_LSV(6,1),NMC_CO2_Use_kWh_LSV(6,1),0,0,NMC_CO2_Direct_kWh_LSV(6,1); % Cell, manu, first-life in LSV (100-40% SOH), direct recycling
    0,0,0,NMC_CO2_Manu_kWh_LSV(6,2),NMC_CO2_Use_kWh_LSV(6,2),NMC_CO2_Direct_kWh_LSV(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in LSV (90-40%), direct recycling
    0,0,0,NMC_CO2_Manu_kWh_LSV(6,3),NMC_CO2_Use_kWh_LSV(6,3),NMC_CO2_Direct_kWh_LSV(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in LSV (80-40%), direct recycling
    0,0,0,NMC_CO2_Manu_kWh_LSV(6,4),NMC_CO2_Use_kWh_LSV(6,4),NMC_CO2_Direct_kWh_LSV(6,4);]; % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in LSV (70-40%), direct recycling
DataNMCbar = [DataNMCbar sum(DataNMCbar,2)]; % Cell, manu, first-life, refurbish, second-life, recycling, sum

%%%%%%% data cleaning, nan: not needed for calculations
for i=1:35
    for j=1:7
        if DataNMCbar(i,j) == 0
            DataNMCbar(i,j) = nan;
        else
            DataNMCbar(i,j) = DataNMCbar(i,j);
        end
    end
end

%%%%%% thoughput capacity during the life cycle (kWh electricity/kWh battery)
SOHsum=zeros(4,1);
soh = 1;
cycle = 0;
for i = 2:5000
    cycle = i-1;
    soh = interp1(NMC_Cycle,NMC_SOH,cycle,'linear')*0.01;
    if soh >= 0.9           
        SOHsum(1,1) = SOHsum(1,1)+soh; % 100-90% SOH
    end
    if soh >= 0.81
        SOHsum(2,1) = SOHsum(2,1)+soh; % 100-80% SOH
    end
    if soh >= 0.7
        SOHsum(3,1) = SOHsum(3,1)+soh; % 100-70% SOH
    end
    if soh >= 0.4
        SOHsum(4,1) = SOHsum(4,1)+soh; % 100-40% SOH
    end
end

%%%%%%% carbon footprint (kg CO2 eq./(kWh life cycle electricity delivery))
for i=1:35
    if i == 1
        DataNMCbar1(i,:) = DataNMCbar(i,:)/SOHsum(1,1); % Cell, manu, first-life in EV (100-90% SOH), hydro-recycling, sum
    elseif i == 2
        DataNMCbar1(i,:) = DataNMCbar(i,:)/SOHsum(2,1); % Cell, manu, first-life in EV (100-80% SOH), hydro-recycling, sum
    elseif i == 3
        DataNMCbar1(i,:) = DataNMCbar(i,:)/SOHsum(3,1); % Cell, manu, first-life in EV (100-70% SOH), hydro-recycling, sum
    elseif mod (i,4) == 0
        DataNMCbar1(i,:) = DataNMCbar(i,:)/SOHsum(4,1); % Cell, manu, first-life in ESS1/ESS2/ESS3/CBS1/CBS2/CBS3/CBS4/LSV (100-40% SOH), direct recycling, sum
    elseif mod (i,4) == 1
        DataNMCbar1(i,:) = DataNMCbar(i,:)/(SOHsum(4,1)-SOHsum(1,1)); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in ESS1/ESS2/ESS3/CBS1/CBS2/CBS3/CBS4/LSV (90-40%), direct recycling,sum
    elseif mod (i,4) == 2
        DataNMCbar1(i,:) = DataNMCbar(i,:)/(SOHsum(4,1)-SOHsum(2,1)); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in ESS1/ESS2/ESS3/CBS1/CBS2/CBS3/CBS4/LSV (80-40%), direct recycling,sum
    elseif mod (i,4) == 3
        DataNMCbar1(i,:) = DataNMCbar(i,:)/(SOHsum(4,1)-SOHsum(3,1)); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in ESS1/ESS2/ESS3/CBS1/CBS2/CBS3/CBS4/LSV (70-40%), direct recycling,sum
    end
end

%%%%%%%%% LFP carbon footprint data in each phase 
% % (Initial SOH of battery for EV is set at 100%，while the ending SOH for ESS/CBS/LSV batteries defaults to 40%.)
% % bar chart
% DataLFPbar = [LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),0,0,LFP_CO2_Hydro_kWh_EV(1); % Cell, manu, first-life in EV (100-90% SOH), hydro-recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),0,0,LFP_CO2_Hydro_kWh_EV(2); % Cell, manu, first-life in EV (100-80% SOH), hydro-recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),0,0,LFP_CO2_Hydro_kWh_EV(3); % Cell, manu, first-life in EV (100-70% SOH), hydro-recycling
%     LFP_CO2_Cell_kWh_ESS1(6,1),LFP_CO2_Manu_kWh_ESS1(6,1),LFP_CO2_Use_kWh_ESS1(6,1),0,0,LFP_CO2_Direct_kWh_ESS1(6,1); % Cell, manu, first-life in ESS1 (100-40% SOH), direct recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_ESS1(6,2),LFP_CO2_Use_kWh_ESS1(6,2),LFP_CO2_Hydro_kWh_ESS1(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in ESS1 (90-40%), direct recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_ESS1(6,3),LFP_CO2_Use_kWh_ESS1(6,3),LFP_CO2_Hydro_kWh_ESS1(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in ESS1 (80-40%), direct recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_ESS1(6,4),LFP_CO2_Use_kWh_ESS1(6,4),LFP_CO2_Hydro_kWh_ESS1(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in ESS1 (70-40%), direct recycling
%     LFP_CO2_Cell_kWh_ESS2(6,1),LFP_CO2_Manu_kWh_ESS2(6,1),LFP_CO2_Use_kWh_ESS2(6,1),0,0,LFP_CO2_Hydro_kWh_ESS2(6,1); % Cell, manu, first-life in ESS2 (100-40% SOH), direct recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_ESS2(6,2),LFP_CO2_Use_kWh_ESS2(6,2),LFP_CO2_Hydro_kWh_ESS2(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in ESS2 (90-40%), direct recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_ESS2(6,3),LFP_CO2_Use_kWh_ESS2(6,3),LFP_CO2_Hydro_kWh_ESS2(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in ESS2 (80-40%), direct recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_ESS2(6,4),LFP_CO2_Use_kWh_ESS2(6,4),LFP_CO2_Hydro_kWh_ESS2(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in ESS2 (70-40%), direct recycling
%     LFP_CO2_Cell_kWh_ESS3(6,1),LFP_CO2_Manu_kWh_ESS3(6,1),LFP_CO2_Use_kWh_ESS3(6,1),0,0,LFP_CO2_Hydro_kWh_ESS3(6,1); % Cell, manu, first-life in ESS3 (100-40% SOH), direct recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_ESS3(6,2),LFP_CO2_Use_kWh_ESS3(6,2),LFP_CO2_Hydro_kWh_ESS3(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in ESS3 (90-40%), direct recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_ESS3(6,3),LFP_CO2_Use_kWh_ESS3(6,3),LFP_CO2_Hydro_kWh_ESS3(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in ESS3 (80-40%), direct recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_ESS3(6,4),LFP_CO2_Use_kWh_ESS3(6,4),LFP_CO2_Hydro_kWh_ESS3(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in ESS3 (70-40%), direct recycling
%     LFP_CO2_Cell_kWh_CBS1(6,1),LFP_CO2_Manu_kWh_CBS1(6,1),LFP_CO2_Use_kWh_CBS1(6,1),0,0,LFP_CO2_Hydro_kWh_CBS1(6,1); % Cell, manu, first-life in CBS1 (100-40% SOH), direct recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_CBS1(6,2),LFP_CO2_Use_kWh_CBS1(6,2),LFP_CO2_Hydro_kWh_CBS1(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in CBS1 (90-40%), direct recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_CBS1(6,3),LFP_CO2_Use_kWh_CBS1(6,3),LFP_CO2_Hydro_kWh_CBS1(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in CBS1 (80-40%), direct recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_CBS1(6,4),LFP_CO2_Use_kWh_CBS1(6,4),LFP_CO2_Hydro_kWh_CBS1(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in CBS1 (70-40%), direct recycling
%     LFP_CO2_Cell_kWh_CBS2(6,1),LFP_CO2_Manu_kWh_CBS2(6,1),LFP_CO2_Use_kWh_CBS2(6,1),0,0,LFP_CO2_Hydro_kWh_CBS2(6,1); % Cell, manu, first-life in CBS2 (100-40% SOH), direct recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_CBS2(6,2),LFP_CO2_Use_kWh_CBS2(6,2),LFP_CO2_Hydro_kWh_CBS2(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in CBS2 (90-40%), direct recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_CBS2(6,3),LFP_CO2_Use_kWh_CBS2(6,3),LFP_CO2_Hydro_kWh_CBS2(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in CBS2 (80-40%), direct recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_CBS2(6,4),LFP_CO2_Use_kWh_CBS2(6,4),LFP_CO2_Hydro_kWh_CBS2(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in CBS2 (70-40%), direct recycling
%     LFP_CO2_Cell_kWh_CBS3(6,1),LFP_CO2_Manu_kWh_CBS3(6,1),LFP_CO2_Use_kWh_CBS3(6,1),0,0,LFP_CO2_Hydro_kWh_CBS3(6,1); % Cell, manu, first-life in CBS3 (100-40% SOH), direct recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_CBS3(6,2),LFP_CO2_Use_kWh_CBS3(6,2),LFP_CO2_Hydro_kWh_CBS3(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in CBS3 (90-40%), direct recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_CBS3(6,3),LFP_CO2_Use_kWh_CBS3(6,3),LFP_CO2_Hydro_kWh_CBS3(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in CBS3 (80-40%), direct recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_CBS3(6,4),LFP_CO2_Use_kWh_CBS3(6,4),LFP_CO2_Hydro_kWh_CBS3(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in CBS3 (70-40%), direct recycling
%     LFP_CO2_Cell_kWh_CBS4(6,1),LFP_CO2_Manu_kWh_CBS4(6,1),LFP_CO2_Use_kWh_CBS4(6,1),0,0,LFP_CO2_Hydro_kWh_CBS4(6,1); % Cell, manu, first-life in CBS4 (100-40% SOH), direct recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_CBS4(6,2),LFP_CO2_Use_kWh_CBS4(6,2),LFP_CO2_Hydro_kWh_CBS4(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in CBS4 (90-40%), direct recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_CBS4(6,3),LFP_CO2_Use_kWh_CBS4(6,3),LFP_CO2_Hydro_kWh_CBS4(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in CBS4 (80-40%), direct recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_CBS4(6,4),LFP_CO2_Use_kWh_CBS4(6,4),LFP_CO2_Hydro_kWh_CBS4(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in CBS4 (70-40%), direct recycling
%     LFP_CO2_Cell_kWh_LSV(6,1),LFP_CO2_Manu_kWh_LSV(6,1),LFP_CO2_Use_kWh_LSV(6,1),0,0,LFP_CO2_Hydro_kWh_LSV(6,1); % Cell, manu, first-life in LSV (100-40% SOH), direct recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_LSV(6,2),LFP_CO2_Use_kWh_LSV(6,2),LFP_CO2_Hydro_kWh_LSV(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in LSV (90-40%), direct recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_LSV(6,3),LFP_CO2_Use_kWh_LSV(6,3),LFP_CO2_Hydro_kWh_LSV(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in LSV (80-40%), direct recycling
%     LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_LSV(6,4),LFP_CO2_Use_kWh_LSV(6,4),LFP_CO2_Hydro_kWh_LSV(6,4);]; % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in LSV (70-40%), direct recycling
DataLFPbar = [LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),0,0,LFP_CO2_Hydro_kWh_EV(1); % Cell, manu, first-life in EV (100-90% SOH), hydro-recycling
    LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),0,0,LFP_CO2_Hydro_kWh_EV(2); % Cell, manu, first-life in EV (100-80% SOH), hydro-recycling
    LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),0,0,LFP_CO2_Hydro_kWh_EV(3); % Cell, manu, first-life in EV (100-70% SOH), hydro-recycling
    LFP_CO2_Cell_kWh_ESS1(6,1),LFP_CO2_Manu_kWh_ESS1(6,1),LFP_CO2_Use_kWh_ESS1(6,1),0,0,LFP_CO2_Direct_kWh_ESS1(6,1); % Cell, manu, first-life in ESS1 (100-40% SOH), direct recycling
    0,0,0,LFP_CO2_Manu_kWh_ESS1(6,2),LFP_CO2_Use_kWh_ESS1(6,2),LFP_CO2_Hydro_kWh_ESS1(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in ESS1 (90-40%), direct recycling
    0,0,0,LFP_CO2_Manu_kWh_ESS1(6,3),LFP_CO2_Use_kWh_ESS1(6,3),LFP_CO2_Hydro_kWh_ESS1(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in ESS1 (80-40%), direct recycling
    0,0,0,LFP_CO2_Manu_kWh_ESS1(6,4),LFP_CO2_Use_kWh_ESS1(6,4),LFP_CO2_Hydro_kWh_ESS1(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in ESS1 (70-40%), direct recycling
    LFP_CO2_Cell_kWh_ESS2(6,1),LFP_CO2_Manu_kWh_ESS2(6,1),LFP_CO2_Use_kWh_ESS2(6,1),0,0,LFP_CO2_Hydro_kWh_ESS2(6,1); % Cell, manu, first-life in ESS2 (100-40% SOH), direct recycling
    0,0,0,LFP_CO2_Manu_kWh_ESS2(6,2),LFP_CO2_Use_kWh_ESS2(6,2),LFP_CO2_Hydro_kWh_ESS2(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in ESS2 (90-40%), direct recycling
    0,0,0,LFP_CO2_Manu_kWh_ESS2(6,3),LFP_CO2_Use_kWh_ESS2(6,3),LFP_CO2_Hydro_kWh_ESS2(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in ESS2 (80-40%), direct recycling
    0,0,0,LFP_CO2_Manu_kWh_ESS2(6,4),LFP_CO2_Use_kWh_ESS2(6,4),LFP_CO2_Hydro_kWh_ESS2(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in ESS2 (70-40%), direct recycling
    LFP_CO2_Cell_kWh_ESS3(6,1),LFP_CO2_Manu_kWh_ESS3(6,1),LFP_CO2_Use_kWh_ESS3(6,1),0,0,LFP_CO2_Hydro_kWh_ESS3(6,1); % Cell, manu, first-life in ESS3 (100-40% SOH), direct recycling
    0,0,0,LFP_CO2_Manu_kWh_ESS3(6,2),LFP_CO2_Use_kWh_ESS3(6,2),LFP_CO2_Hydro_kWh_ESS3(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in ESS3 (90-40%), direct recycling
    0,0,0,LFP_CO2_Manu_kWh_ESS3(6,3),LFP_CO2_Use_kWh_ESS3(6,3),LFP_CO2_Hydro_kWh_ESS3(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in ESS3 (80-40%), direct recycling
    0,0,0,LFP_CO2_Manu_kWh_ESS3(6,4),LFP_CO2_Use_kWh_ESS3(6,4),LFP_CO2_Hydro_kWh_ESS3(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in ESS3 (70-40%), direct recycling
    LFP_CO2_Cell_kWh_CBS1(6,1),LFP_CO2_Manu_kWh_CBS1(6,1),LFP_CO2_Use_kWh_CBS1(6,1),0,0,LFP_CO2_Hydro_kWh_CBS1(6,1); % Cell, manu, first-life in CBS1 (100-40% SOH), direct recycling
    0,0,0,LFP_CO2_Manu_kWh_CBS1(6,2),LFP_CO2_Use_kWh_CBS1(6,2),LFP_CO2_Hydro_kWh_CBS1(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in CBS1 (90-40%), direct recycling
    0,0,0,LFP_CO2_Manu_kWh_CBS1(6,3),LFP_CO2_Use_kWh_CBS1(6,3),LFP_CO2_Hydro_kWh_CBS1(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in CBS1 (80-40%), direct recycling
    0,0,0,LFP_CO2_Manu_kWh_CBS1(6,4),LFP_CO2_Use_kWh_CBS1(6,4),LFP_CO2_Hydro_kWh_CBS1(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in CBS1 (70-40%), direct recycling
    LFP_CO2_Cell_kWh_CBS2(6,1),LFP_CO2_Manu_kWh_CBS2(6,1),LFP_CO2_Use_kWh_CBS2(6,1),0,0,LFP_CO2_Hydro_kWh_CBS2(6,1); % Cell, manu, first-life in CBS2 (100-40% SOH), direct recycling
    0,0,0,LFP_CO2_Manu_kWh_CBS2(6,2),LFP_CO2_Use_kWh_CBS2(6,2),LFP_CO2_Hydro_kWh_CBS2(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in CBS2 (90-40%), direct recycling
    0,0,0,LFP_CO2_Manu_kWh_CBS2(6,3),LFP_CO2_Use_kWh_CBS2(6,3),LFP_CO2_Hydro_kWh_CBS2(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in CBS2 (80-40%), direct recycling
    0,0,0,LFP_CO2_Manu_kWh_CBS2(6,4),LFP_CO2_Use_kWh_CBS2(6,4),LFP_CO2_Hydro_kWh_CBS2(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in CBS2 (70-40%), direct recycling
    LFP_CO2_Cell_kWh_CBS3(6,1),LFP_CO2_Manu_kWh_CBS3(6,1),LFP_CO2_Use_kWh_CBS3(6,1),0,0,LFP_CO2_Hydro_kWh_CBS3(6,1); % Cell, manu, first-life in CBS3 (100-40% SOH), direct recycling
    0,0,0,LFP_CO2_Manu_kWh_CBS3(6,2),LFP_CO2_Use_kWh_CBS3(6,2),LFP_CO2_Hydro_kWh_CBS3(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in CBS3 (90-40%), direct recycling
    0,0,0,LFP_CO2_Manu_kWh_CBS3(6,3),LFP_CO2_Use_kWh_CBS3(6,3),LFP_CO2_Hydro_kWh_CBS3(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in CBS3 (80-40%), direct recycling
    0,0,0,LFP_CO2_Manu_kWh_CBS3(6,4),LFP_CO2_Use_kWh_CBS3(6,4),LFP_CO2_Hydro_kWh_CBS3(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in CBS3 (70-40%), direct recycling
    LFP_CO2_Cell_kWh_CBS4(6,1),LFP_CO2_Manu_kWh_CBS4(6,1),LFP_CO2_Use_kWh_CBS4(6,1),0,0,LFP_CO2_Hydro_kWh_CBS4(6,1); % Cell, manu, first-life in CBS4 (100-40% SOH), direct recycling
    0,0,0,LFP_CO2_Manu_kWh_CBS4(6,2),LFP_CO2_Use_kWh_CBS4(6,2),LFP_CO2_Hydro_kWh_CBS4(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in CBS4 (90-40%), direct recycling
    0,0,0,LFP_CO2_Manu_kWh_CBS4(6,3),LFP_CO2_Use_kWh_CBS4(6,3),LFP_CO2_Hydro_kWh_CBS4(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in CBS4 (80-40%), direct recycling
    0,0,0,LFP_CO2_Manu_kWh_CBS4(6,4),LFP_CO2_Use_kWh_CBS4(6,4),LFP_CO2_Hydro_kWh_CBS4(6,4); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in CBS4 (70-40%), direct recycling
    LFP_CO2_Cell_kWh_LSV(6,1),LFP_CO2_Manu_kWh_LSV(6,1),LFP_CO2_Use_kWh_LSV(6,1),0,0,LFP_CO2_Hydro_kWh_LSV(6,1); % Cell, manu, first-life in LSV (100-40% SOH), direct recycling
    0,0,0,LFP_CO2_Manu_kWh_LSV(6,2),LFP_CO2_Use_kWh_LSV(6,2),LFP_CO2_Hydro_kWh_LSV(6,2); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in LSV (90-40%), direct recycling
    0,0,0,LFP_CO2_Manu_kWh_LSV(6,3),LFP_CO2_Use_kWh_LSV(6,3),LFP_CO2_Hydro_kWh_LSV(6,3); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in LSV (80-40%), direct recycling
    0,0,0,LFP_CO2_Manu_kWh_LSV(6,4),LFP_CO2_Use_kWh_LSV(6,4),LFP_CO2_Hydro_kWh_LSV(6,4);]; % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in LSV (70-40%), direct recycling
DataLFPbar = [DataLFPbar sum(DataLFPbar,2)]; % Cell, manu, first-life, refurbish, second-life, recycling, sum

%%%%%%% data cleaning, nan: not needed for calculations
for i=1:35
    for j=1:7
        if DataLFPbar(i,j) == 0
            DataLFPbar(i,j) = nan;
        else
            DataLFPbar(i,j) = DataLFPbar(i,j);
        end
    end
end

%%%%%% thoughput capacity during the life cycle (kWh electricity/kWh battery)
SOHsum=zeros(4,1);
soh = 1;
cycle = 0;
for i = 2:5000
    cycle = i-1;
    soh = interp1(LFP_Cycle,LFP_SOH,cycle,'linear')*0.01;
    if soh >= 0.9           
        SOHsum(1,1) = SOHsum(1,1)+soh; % 100-90% SOH
    end
    if soh >= 0.81
        SOHsum(2,1) = SOHsum(2,1)+soh; % 100-80% SOH
    end
    if soh >= 0.7
        SOHsum(3,1) = SOHsum(3,1)+soh; % 100-70% SOH
    end
    if soh >= 0.4
        SOHsum(4,1) = SOHsum(4,1)+soh; % 100-60% SOH
    end
end

%%%%%%% carbon footprint (kg CO2 eq./(kWh life cycle electricity delivery))
for i=1:35
    if i == 1
        DataLFPbar1(i,:) = DataLFPbar(i,:)/SOHsum(1,1); % Cell, manu, first-life in EV (100-90% SOH), hydro-recycling, sum
    elseif i == 2
        DataLFPbar1(i,:) = DataLFPbar(i,:)/SOHsum(2,1); % Cell, manu, first-life in EV (100-80% SOH), hydro-recycling, sum
    elseif i == 3
        DataLFPbar1(i,:) = DataLFPbar(i,:)/SOHsum(3,1); % Cell, manu, first-life in EV (100-70% SOH), hydro-recycling, sum
    elseif mod (i,4) == 0
        DataLFPbar1(i,:) = DataLFPbar(i,:)/SOHsum(4,1); % Cell, manu, first-life in ESS1/ESS2/ESS3/CBS1/CBS2/CBS3/CBS4/LSV (100-40% SOH), direct recycling, sum
    elseif mod (i,4) == 1
        DataLFPbar1(i,:) = DataLFPbar(i,:)/(SOHsum(4,1)-SOHsum(1,1)); % Cell, manu, first-life in EV (100-90% SOH), refurbish, second-life in ESS1/ESS2/ESS3/CBS1/CBS2/CBS3/CBS4/LSV (90-40%), direct recycling,sum
    elseif mod (i,4) == 2
        DataLFPbar1(i,:) = DataLFPbar(i,:)/(SOHsum(4,1)-SOHsum(2,1)); % Cell, manu, first-life in EV (100-80% SOH), refurbish, second-life in ESS1/ESS2/ESS3/CBS1/CBS2/CBS3/CBS4/LSV (90-40%), direct recycling,sum
    elseif mod (i,4) == 3
        DataLFPbar1(i,:) = DataLFPbar(i,:)/(SOHsum(4,1)-SOHsum(3,1)); % Cell, manu, first-life in EV (100-70% SOH), refurbish, second-life in ESS1/ESS2/ESS3/CBS1/CBS2/CBS3/CBS4/LSV (90-40%), direct recycling,sum
    end
end
