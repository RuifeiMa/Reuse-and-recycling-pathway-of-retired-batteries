%%%%%%%%%% Pathway - carbon footprint %%%%%%%%%%%%

%%%%%%%%%% NMC pathway - carbon footprint %%%%%%%%%%%%
%%%%%%%%%% direct recycling %%%%%%%%%%%%%
NMC_CO2_Direct = [NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),0,0,NMC_CO2_Direct_kWh_EV(1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),0,0,NMC_CO2_Direct_kWh_EV(2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),0,0,NMC_CO2_Direct_kWh_EV(3);
    NMC_CO2_Cell_kWh_ESS1(6,1)+NMC_CO2_Manu_kWh_ESS1(6,1),NMC_CO2_Use_kWh_ESS1(6,1),0,0,NMC_CO2_Direct_kWh_ESS1(6,1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_ESS1(6,2),NMC_CO2_Use_kWh_ESS1(6,2),NMC_CO2_Direct_kWh_ESS1(6,2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_ESS1(6,3),NMC_CO2_Use_kWh_ESS1(6,3),NMC_CO2_Direct_kWh_ESS1(6,3);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_ESS1(6,4),NMC_CO2_Use_kWh_ESS1(6,4),NMC_CO2_Direct_kWh_ESS1(6,4);
    NMC_CO2_Cell_kWh_ESS2(6,1)+NMC_CO2_Manu_kWh_ESS2(6,1),NMC_CO2_Use_kWh_ESS2(6,1),0,0,NMC_CO2_Direct_kWh_ESS2(6,1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_ESS2(6,2),NMC_CO2_Use_kWh_ESS2(6,2),NMC_CO2_Direct_kWh_ESS2(6,2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_ESS2(6,3),NMC_CO2_Use_kWh_ESS2(6,3),NMC_CO2_Direct_kWh_ESS2(6,3);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_ESS2(6,4),NMC_CO2_Use_kWh_ESS2(6,4),NMC_CO2_Direct_kWh_ESS2(6,4);
    NMC_CO2_Cell_kWh_ESS3(6,1)+NMC_CO2_Manu_kWh_ESS3(6,1),NMC_CO2_Use_kWh_ESS3(6,1),0,0,NMC_CO2_Direct_kWh_ESS3(6,1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_ESS3(6,2),NMC_CO2_Use_kWh_ESS3(6,2),NMC_CO2_Direct_kWh_ESS3(6,2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_ESS3(6,3),NMC_CO2_Use_kWh_ESS3(6,3),NMC_CO2_Direct_kWh_ESS3(6,3);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_ESS3(6,4),NMC_CO2_Use_kWh_ESS3(6,4),NMC_CO2_Direct_kWh_ESS3(6,4);
    NMC_CO2_Cell_kWh_CBS1(6,1)+NMC_CO2_Manu_kWh_CBS1(6,1),NMC_CO2_Use_kWh_CBS1(6,1),0,0,NMC_CO2_Direct_kWh_CBS1(6,1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_CBS1(6,2),NMC_CO2_Use_kWh_CBS1(6,2),NMC_CO2_Direct_kWh_CBS1(6,2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_CBS1(6,3),NMC_CO2_Use_kWh_CBS1(6,3),NMC_CO2_Direct_kWh_CBS1(6,3);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_CBS1(6,4),NMC_CO2_Use_kWh_CBS1(6,4),NMC_CO2_Direct_kWh_CBS1(6,4);
    NMC_CO2_Cell_kWh_CBS2(6,1)+NMC_CO2_Manu_kWh_CBS2(6,1),NMC_CO2_Use_kWh_CBS2(6,1),0,0,NMC_CO2_Direct_kWh_CBS2(6,1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_CBS2(6,2),NMC_CO2_Use_kWh_CBS2(6,2),NMC_CO2_Direct_kWh_CBS2(6,2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_CBS2(6,3),NMC_CO2_Use_kWh_CBS2(6,3),NMC_CO2_Direct_kWh_CBS2(6,3);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_CBS2(6,4),NMC_CO2_Use_kWh_CBS2(6,4),NMC_CO2_Direct_kWh_CBS2(6,4);
    NMC_CO2_Cell_kWh_CBS3(6,1)+NMC_CO2_Manu_kWh_CBS3(6,1),NMC_CO2_Use_kWh_CBS3(6,1),0,0,NMC_CO2_Direct_kWh_CBS3(6,1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_CBS3(6,2),NMC_CO2_Use_kWh_CBS3(6,2),NMC_CO2_Direct_kWh_CBS3(6,2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_CBS3(6,3),NMC_CO2_Use_kWh_CBS3(6,3),NMC_CO2_Direct_kWh_CBS3(6,3);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_CBS3(6,4),NMC_CO2_Use_kWh_CBS3(6,4),NMC_CO2_Direct_kWh_CBS3(6,4);
    NMC_CO2_Cell_kWh_CBS4(6,1)+NMC_CO2_Manu_kWh_CBS4(6,1),NMC_CO2_Use_kWh_CBS4(6,1),0,0,NMC_CO2_Direct_kWh_CBS4(6,1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_CBS4(6,2),NMC_CO2_Use_kWh_CBS4(6,2),NMC_CO2_Direct_kWh_CBS4(6,2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_CBS4(6,3),NMC_CO2_Use_kWh_CBS4(6,3),NMC_CO2_Direct_kWh_CBS4(6,3);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_CBS4(6,4),NMC_CO2_Use_kWh_CBS4(6,4),NMC_CO2_Direct_kWh_CBS4(6,4);
    NMC_CO2_Cell_kWh_LSV(6,1)+NMC_CO2_Manu_kWh_LSV(6,1),NMC_CO2_Use_kWh_LSV(6,1),0,0,NMC_CO2_Direct_kWh_LSV(6,1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_LSV(6,2),NMC_CO2_Use_kWh_LSV(6,2),NMC_CO2_Direct_kWh_LSV(6,2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_LSV(6,3),NMC_CO2_Use_kWh_LSV(6,3),NMC_CO2_Direct_kWh_LSV(6,3);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_LSV(6,4),NMC_CO2_Use_kWh_LSV(6,4),NMC_CO2_Direct_kWh_LSV(6,4);];
NMC_CO2_Direct_cummu = [NMC_CO2_Direct(:,1),NMC_CO2_Direct(:,1)+NMC_CO2_Direct(:,2),NMC_CO2_Direct(:,1)+NMC_CO2_Direct(:,2)+NMC_CO2_Direct(:,3),...
    NMC_CO2_Direct(:,1)+NMC_CO2_Direct(:,2)+NMC_CO2_Direct(:,3)+NMC_CO2_Direct(:,4),NMC_CO2_Direct(:,1)+NMC_CO2_Direct(:,2)+NMC_CO2_Direct(:,3)+NMC_CO2_Direct(:,4)+NMC_CO2_Direct(:,5)];
%%%%%%%%% hydro recycling %%%%%%%%%%%%%
NMC_CO2_Hydro = [NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),0,0,NMC_CO2_Hydro_kWh_EV(1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),0,0,NMC_CO2_Hydro_kWh_EV(2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),0,0,NMC_CO2_Hydro_kWh_EV(3);
    NMC_CO2_Cell_kWh_ESS1(6,1)+NMC_CO2_Manu_kWh_ESS1(6,1),NMC_CO2_Use_kWh_ESS1(6,1),0,0,NMC_CO2_Hydro_kWh_ESS1(6,1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_ESS1(6,2),NMC_CO2_Use_kWh_ESS1(6,2),NMC_CO2_Hydro_kWh_ESS1(6,2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_ESS1(6,3),NMC_CO2_Use_kWh_ESS1(6,3),NMC_CO2_Hydro_kWh_ESS1(6,3);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_ESS1(6,4),NMC_CO2_Use_kWh_ESS1(6,4),NMC_CO2_Hydro_kWh_ESS1(6,4);
    NMC_CO2_Cell_kWh_ESS2(6,1)+NMC_CO2_Manu_kWh_ESS2(6,1),NMC_CO2_Use_kWh_ESS2(6,1),0,0,NMC_CO2_Hydro_kWh_ESS2(6,1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_ESS2(6,2),NMC_CO2_Use_kWh_ESS2(6,2),NMC_CO2_Hydro_kWh_ESS2(6,2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_ESS2(6,3),NMC_CO2_Use_kWh_ESS2(6,3),NMC_CO2_Hydro_kWh_ESS2(6,3);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_ESS2(6,4),NMC_CO2_Use_kWh_ESS2(6,4),NMC_CO2_Hydro_kWh_ESS2(6,4);
    NMC_CO2_Cell_kWh_ESS3(6,1)+NMC_CO2_Manu_kWh_ESS3(6,1),NMC_CO2_Use_kWh_ESS3(6,1),0,0,NMC_CO2_Hydro_kWh_ESS3(6,1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_ESS3(6,2),NMC_CO2_Use_kWh_ESS3(6,2),NMC_CO2_Hydro_kWh_ESS3(6,2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_ESS3(6,3),NMC_CO2_Use_kWh_ESS3(6,3),NMC_CO2_Hydro_kWh_ESS3(6,3);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_ESS3(6,4),NMC_CO2_Use_kWh_ESS3(6,4),NMC_CO2_Hydro_kWh_ESS3(6,4);
    NMC_CO2_Cell_kWh_CBS1(6,1)+NMC_CO2_Manu_kWh_CBS1(6,1),NMC_CO2_Use_kWh_CBS1(6,1),0,0,NMC_CO2_Hydro_kWh_CBS1(6,1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_CBS1(6,2),NMC_CO2_Use_kWh_CBS1(6,2),NMC_CO2_Hydro_kWh_CBS1(6,2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_CBS1(6,3),NMC_CO2_Use_kWh_CBS1(6,3),NMC_CO2_Hydro_kWh_CBS1(6,3);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_CBS1(6,4),NMC_CO2_Use_kWh_CBS1(6,4),NMC_CO2_Hydro_kWh_CBS1(6,4);
    NMC_CO2_Cell_kWh_CBS2(6,1)+NMC_CO2_Manu_kWh_CBS2(6,1),NMC_CO2_Use_kWh_CBS2(6,1),0,0,NMC_CO2_Hydro_kWh_CBS2(6,1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_CBS2(6,2),NMC_CO2_Use_kWh_CBS2(6,2),NMC_CO2_Hydro_kWh_CBS2(6,2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_CBS2(6,3),NMC_CO2_Use_kWh_CBS2(6,3),NMC_CO2_Hydro_kWh_CBS2(6,3);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_CBS2(6,4),NMC_CO2_Use_kWh_CBS2(6,4),NMC_CO2_Hydro_kWh_CBS2(6,4);
    NMC_CO2_Cell_kWh_CBS3(6,1)+NMC_CO2_Manu_kWh_CBS3(6,1),NMC_CO2_Use_kWh_CBS3(6,1),0,0,NMC_CO2_Hydro_kWh_CBS3(6,1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_CBS3(6,2),NMC_CO2_Use_kWh_CBS3(6,2),NMC_CO2_Hydro_kWh_CBS3(6,2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_CBS3(6,3),NMC_CO2_Use_kWh_CBS3(6,3),NMC_CO2_Hydro_kWh_CBS3(6,3);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_CBS3(6,4),NMC_CO2_Use_kWh_CBS3(6,4),NMC_CO2_Hydro_kWh_CBS3(6,4);
    NMC_CO2_Cell_kWh_CBS4(6,1)+NMC_CO2_Manu_kWh_CBS4(6,1),NMC_CO2_Use_kWh_CBS4(6,1),0,0,NMC_CO2_Hydro_kWh_CBS4(6,1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_CBS4(6,2),NMC_CO2_Use_kWh_CBS4(6,2),NMC_CO2_Hydro_kWh_CBS4(6,2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_CBS4(6,3),NMC_CO2_Use_kWh_CBS4(6,3),NMC_CO2_Hydro_kWh_CBS4(6,3);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_CBS4(6,4),NMC_CO2_Use_kWh_CBS4(6,4),NMC_CO2_Hydro_kWh_CBS4(6,4);
    NMC_CO2_Cell_kWh_LSV(6,1)+NMC_CO2_Manu_kWh_LSV(6,1),NMC_CO2_Use_kWh_LSV(6,1),0,0,NMC_CO2_Hydro_kWh_LSV(6,1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_LSV(6,2),NMC_CO2_Use_kWh_LSV(6,2),NMC_CO2_Hydro_kWh_LSV(6,2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_LSV(6,3),NMC_CO2_Use_kWh_LSV(6,3),NMC_CO2_Hydro_kWh_LSV(6,3);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_LSV(6,4),NMC_CO2_Use_kWh_LSV(6,4),NMC_CO2_Hydro_kWh_LSV(6,4);];
NMC_CO2_Hydro_cummu = [NMC_CO2_Hydro(:,1),NMC_CO2_Hydro(:,1)+NMC_CO2_Hydro(:,2),NMC_CO2_Hydro(:,1)+NMC_CO2_Hydro(:,2)+NMC_CO2_Hydro(:,3),...
    NMC_CO2_Hydro(:,1)+NMC_CO2_Hydro(:,2)+NMC_CO2_Hydro(:,3)+NMC_CO2_Hydro(:,4),NMC_CO2_Hydro(:,1)+NMC_CO2_Hydro(:,2)+NMC_CO2_Hydro(:,3)+NMC_CO2_Hydro(:,4)+NMC_CO2_Hydro(:,5)];
%%%%%%%%% pyro recycling %%%%%%%%%%%%%
NMC_CO2_Pyro = [NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),0,0,NMC_CO2_Pyro_kWh_EV(1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),0,0,NMC_CO2_Pyro_kWh_EV(2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),0,0,NMC_CO2_Pyro_kWh_EV(3);
    NMC_CO2_Cell_kWh_ESS1(6,1)+NMC_CO2_Manu_kWh_ESS1(6,1),NMC_CO2_Use_kWh_ESS1(6,1),0,0,NMC_CO2_Pyro_kWh_ESS1(6,1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_ESS1(6,2),NMC_CO2_Use_kWh_ESS1(6,2),NMC_CO2_Pyro_kWh_ESS1(6,2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_ESS1(6,3),NMC_CO2_Use_kWh_ESS1(6,3),NMC_CO2_Pyro_kWh_ESS1(6,3);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_ESS1(6,4),NMC_CO2_Use_kWh_ESS1(6,4),NMC_CO2_Pyro_kWh_ESS1(6,4);
    NMC_CO2_Cell_kWh_ESS2(6,1)+NMC_CO2_Manu_kWh_ESS2(6,1),NMC_CO2_Use_kWh_ESS2(6,1),0,0,NMC_CO2_Pyro_kWh_ESS2(6,1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_ESS2(6,2),NMC_CO2_Use_kWh_ESS2(6,2),NMC_CO2_Pyro_kWh_ESS2(6,2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_ESS2(6,3),NMC_CO2_Use_kWh_ESS2(6,3),NMC_CO2_Pyro_kWh_ESS2(6,3);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_ESS2(6,4),NMC_CO2_Use_kWh_ESS2(6,4),NMC_CO2_Pyro_kWh_ESS2(6,4);
    NMC_CO2_Cell_kWh_ESS3(6,1)+NMC_CO2_Manu_kWh_ESS3(6,1),NMC_CO2_Use_kWh_ESS3(6,1),0,0,NMC_CO2_Pyro_kWh_ESS3(6,1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_ESS3(6,2),NMC_CO2_Use_kWh_ESS3(6,2),NMC_CO2_Pyro_kWh_ESS3(6,2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_ESS3(6,3),NMC_CO2_Use_kWh_ESS3(6,3),NMC_CO2_Pyro_kWh_ESS3(6,3);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_ESS3(6,4),NMC_CO2_Use_kWh_ESS3(6,4),NMC_CO2_Pyro_kWh_ESS3(6,4);
    NMC_CO2_Cell_kWh_CBS1(6,1)+NMC_CO2_Manu_kWh_CBS1(6,1),NMC_CO2_Use_kWh_CBS1(6,1),0,0,NMC_CO2_Pyro_kWh_CBS1(6,1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_CBS1(6,2),NMC_CO2_Use_kWh_CBS1(6,2),NMC_CO2_Pyro_kWh_CBS1(6,2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_CBS1(6,3),NMC_CO2_Use_kWh_CBS1(6,3),NMC_CO2_Pyro_kWh_CBS1(6,3);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_CBS1(6,4),NMC_CO2_Use_kWh_CBS1(6,4),NMC_CO2_Pyro_kWh_CBS1(6,4);
    NMC_CO2_Cell_kWh_CBS2(6,1)+NMC_CO2_Manu_kWh_CBS2(6,1),NMC_CO2_Use_kWh_CBS2(6,1),0,0,NMC_CO2_Pyro_kWh_CBS2(6,1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_CBS2(6,2),NMC_CO2_Use_kWh_CBS2(6,2),NMC_CO2_Pyro_kWh_CBS2(6,2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_CBS2(6,3),NMC_CO2_Use_kWh_CBS2(6,3),NMC_CO2_Pyro_kWh_CBS2(6,3);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_CBS2(6,4),NMC_CO2_Use_kWh_CBS2(6,4),NMC_CO2_Pyro_kWh_CBS2(6,4);
    NMC_CO2_Cell_kWh_CBS3(6,1)+NMC_CO2_Manu_kWh_CBS3(6,1),NMC_CO2_Use_kWh_CBS3(6,1),0,0,NMC_CO2_Pyro_kWh_CBS3(6,1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_CBS3(6,2),NMC_CO2_Use_kWh_CBS3(6,2),NMC_CO2_Pyro_kWh_CBS3(6,2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_CBS3(6,3),NMC_CO2_Use_kWh_CBS3(6,3),NMC_CO2_Pyro_kWh_CBS3(6,3);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_CBS3(6,4),NMC_CO2_Use_kWh_CBS3(6,4),NMC_CO2_Pyro_kWh_CBS3(6,4);
    NMC_CO2_Cell_kWh_CBS4(6,1)+NMC_CO2_Manu_kWh_CBS4(6,1),NMC_CO2_Use_kWh_CBS4(6,1),0,0,NMC_CO2_Pyro_kWh_CBS4(6,1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_CBS4(6,2),NMC_CO2_Use_kWh_CBS4(6,2),NMC_CO2_Pyro_kWh_CBS4(6,2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_CBS4(6,3),NMC_CO2_Use_kWh_CBS4(6,3),NMC_CO2_Pyro_kWh_CBS4(6,3);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_CBS4(6,4),NMC_CO2_Use_kWh_CBS4(6,4),NMC_CO2_Pyro_kWh_CBS4(6,4);
    NMC_CO2_Cell_kWh_LSV(6,1)+NMC_CO2_Manu_kWh_LSV(6,1),NMC_CO2_Use_kWh_LSV(6,1),0,0,NMC_CO2_Pyro_kWh_LSV(6,1);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(1),NMC_CO2_Manu_kWh_LSV(6,2),NMC_CO2_Use_kWh_LSV(6,2),NMC_CO2_Pyro_kWh_LSV(6,2);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(2),NMC_CO2_Manu_kWh_LSV(6,3),NMC_CO2_Use_kWh_LSV(6,3),NMC_CO2_Pyro_kWh_LSV(6,3);
    NMC_CO2_Cell_kWh_EV+NMC_CO2_Manu_kWh_EV,NMC_CO2_Use_kWh_EV(3),NMC_CO2_Manu_kWh_LSV(6,4),NMC_CO2_Use_kWh_LSV(6,4),NMC_CO2_Pyro_kWh_LSV(6,4);];
NMC_CO2_Hydro_cumm = [NMC_CO2_Pyro(:,1),NMC_CO2_Pyro(:,1)+NMC_CO2_Pyro(:,2),NMC_CO2_Pyro(:,1)+NMC_CO2_Pyro(:,2)+NMC_CO2_Pyro(:,3),...
    NMC_CO2_Pyro(:,1)+NMC_CO2_Pyro(:,2)+NMC_CO2_Pyro(:,3)+NMC_CO2_Pyro(:,4),NMC_CO2_Pyro(:,1)+NMC_CO2_Pyro(:,2)+NMC_CO2_Pyro(:,3)+NMC_CO2_Pyro(:,4)+NMC_CO2_Pyro(:,5)];

%%%%% thoughput capacity during the life cycle (kWh electricity/kWh battery)
SOHsum=zeros(4,1);
soh = 1;
cycle = 0;
for i = 2:5000
    cycle = i-1;
    soh = interp1(NMC_Cycle,NMC_SOH,cycle,'linear')*0.01;
    if soh >= 0.9           
        SOHsum(1,1) = SOHsum(1,1)+soh;
    end
    if soh >= 0.81
        SOHsum(2,1) = SOHsum(2,1)+soh;
    end
    if soh >= 0.7
        SOHsum(3,1) = SOHsum(3,1)+soh;
    end
    if soh >= 0.4
        SOHsum(4,1) = SOHsum(4,1)+soh;
    end
end
NMC_CO2_Direct_ele = NMC_CO2_Direct;
NMC_CO2_Hydro_ele = NMC_CO2_Hydro;
NMC_CO2_Pyro_ele = NMC_CO2_Pyro;
%%%%%%%%%%%%%%%%%%%
for ii = 1:35
    if mod(ii,4) == 1
        if ii == 1
            NMC_CO2_Direct_ele(ii,:) = NMC_CO2_Direct_ele(ii,:)/SOHsum(1,1);
            NMC_CO2_Hydro_ele(ii,:) = NMC_CO2_Hydro_ele(ii,:)/SOHsum(1,1);
            NMC_CO2_Pyro_ele(ii,:) = NMC_CO2_Pyro_ele(ii,:)/SOHsum(1,1);
        else
            NMC_CO2_Direct_ele(ii,:) = NMC_CO2_Direct_ele(ii,:)/SOHsum(4,1);%(SOHsum(4,1)-SOHsum(1,1));
            NMC_CO2_Hydro_ele(ii,:) = NMC_CO2_Hydro_ele(ii,:)/SOHsum(4,1);%(SOHsum(4,1)-SOHsum(1,1));
            NMC_CO2_Pyro_ele(ii,:) = NMC_CO2_Pyro_ele(ii,:)/SOHsum(4,1);%(SOHsum(4,1)-SOHsum(1,1));
        end
    elseif mod(ii,4) == 2
        if ii == 2
            NMC_CO2_Direct_ele(ii,:) = NMC_CO2_Direct_ele(ii,:)/SOHsum(2,1);
            NMC_CO2_Hydro_ele(ii,:) = NMC_CO2_Hydro_ele(ii,:)/SOHsum(2,1);
            NMC_CO2_Pyro_ele(ii,:) = NMC_CO2_Pyro_ele(ii,:)/SOHsum(2,1);
        else
            NMC_CO2_Direct_ele(ii,:) = NMC_CO2_Direct_ele(ii,:)/SOHsum(4,1);%(SOHsum(4,1)-SOHsum(2,1));
            NMC_CO2_Hydro_ele(ii,:) = NMC_CO2_Hydro_ele(ii,:)/SOHsum(4,1);%(SOHsum(4,1)-SOHsum(2,1));
            NMC_CO2_Pyro_ele(ii,:) = NMC_CO2_Pyro_ele(ii,:)/SOHsum(4,1);%(SOHsum(4,1)-SOHsum(2,1));
        end
    elseif mod(ii,4) == 3
        if ii == 3
            NMC_CO2_Direct_ele(ii,:) = NMC_CO2_Direct_ele(ii,:)/SOHsum(3,1);
            NMC_CO2_Hydro_ele(ii,:) = NMC_CO2_Hydro_ele(ii,:)/SOHsum(3,1);
            NMC_CO2_Pyro_ele(ii,:) = NMC_CO2_Pyro_ele(ii,:)/SOHsum(3,1);
        else
            NMC_CO2_Direct_ele(ii,:) = NMC_CO2_Direct_ele(ii,:)/SOHsum(4,1);%(SOHsum(4,1)-SOHsum(3,1));
            NMC_CO2_Hydro_ele(ii,:) = NMC_CO2_Hydro_ele(ii,:)/SOHsum(4,1);%(SOHsum(4,1)-SOHsum(3,1));
            NMC_CO2_Pyro_ele(ii,:) = NMC_CO2_Pyro_ele(ii,:)/SOHsum(4,1);%(SOHsum(4,1)-SOHsum(3,1));
        end
    else 
        NMC_CO2_Direct_ele(ii,:) = NMC_CO2_Direct_ele(ii,:)/SOHsum(4,1);
        NMC_CO2_Hydro_ele(ii,:) = NMC_CO2_Hydro_ele(ii,:)/SOHsum(4,1);
        NMC_CO2_Pyro_ele(ii,:) = NMC_CO2_Pyro_ele(ii,:)/SOHsum(4,1);
    end
end
%%%%%%%%%%%%%%%%%%%%%%%%%%
NMC_CO2_Direct_ele_cummu = [NMC_CO2_Direct_ele(:,1),NMC_CO2_Direct_ele(:,1)+NMC_CO2_Direct_ele(:,2),NMC_CO2_Direct_ele(:,1)+NMC_CO2_Direct_ele(:,2)+NMC_CO2_Direct_ele(:,3),...
    NMC_CO2_Direct_ele(:,1)+NMC_CO2_Direct_ele(:,2)+NMC_CO2_Direct_ele(:,3)+NMC_CO2_Direct_ele(:,4),NMC_CO2_Direct_ele(:,1)+NMC_CO2_Direct_ele(:,2)+NMC_CO2_Direct_ele(:,3)+NMC_CO2_Direct_ele(:,4)+NMC_CO2_Direct_ele(:,5)];
NMC_CO2_Hydro_ele_cummu = [NMC_CO2_Hydro_ele(:,1),NMC_CO2_Hydro_ele(:,1)+NMC_CO2_Hydro_ele(:,2),NMC_CO2_Hydro_ele(:,1)+NMC_CO2_Hydro_ele(:,2)+NMC_CO2_Hydro_ele(:,3),...
    NMC_CO2_Hydro_ele(:,1)+NMC_CO2_Hydro_ele(:,2)+NMC_CO2_Hydro_ele(:,3)+NMC_CO2_Hydro_ele(:,4),NMC_CO2_Hydro_ele(:,1)+NMC_CO2_Hydro_ele(:,2)+NMC_CO2_Hydro_ele(:,3)+NMC_CO2_Hydro_ele(:,4)+NMC_CO2_Hydro_ele(:,5)];
NMC_CO2_Pyro_ele_cummu = [NMC_CO2_Pyro_ele(:,1),NMC_CO2_Pyro_ele(:,1)+NMC_CO2_Pyro_ele(:,2),NMC_CO2_Pyro_ele(:,1)+NMC_CO2_Pyro_ele(:,2)+NMC_CO2_Pyro_ele(:,3),...
    NMC_CO2_Pyro_ele(:,1)+NMC_CO2_Pyro_ele(:,2)+NMC_CO2_Pyro_ele(:,3)+NMC_CO2_Pyro_ele(:,4),NMC_CO2_Pyro_ele(:,1)+NMC_CO2_Pyro_ele(:,2)+NMC_CO2_Pyro_ele(:,3)+NMC_CO2_Pyro_ele(:,4)+NMC_CO2_Pyro_ele(:,5)];
%%%%%%%%% NMC battery roadmap priority sorting, from best to worst
%% direct recycling
[M,N]= sort(NMC_CO2_Direct_ele_cummu(:,5));
Pathway_NMC_CO2_Direct = strings(35,7);
for i=1:35
    if N(i,1) == 1
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "90%" "No" "-" "-" "Direct" M(i,1)];
    elseif N(i,1) == 2
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "80%" "No" "-" "-" "Direct" M(i,1)];
    elseif N(i,1) == 3
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "70%" "No" "-" "-" "Direct" M(i,1)];
    elseif N(i,1) == 4
        Pathway_NMC_CO2_Direct(i,:) = ["ESS1" "100%" "No" "-" "-" "Direct" M(i,1)];
    elseif N(i,1) == 5
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "90%" "Yes" "ESS-Gov" "40%" "Direct" M(i,1)];
    elseif N(i,1) == 6
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "80%" "Yes" "ESS-Gov" "40%" "Direct" M(i,1)];
    elseif N(i,1) == 7
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "70%" "Yes" "ESS-Gov" "40%" "Direct" M(i,1)];
    elseif N(i,1) == 8
        Pathway_NMC_CO2_Direct(i,:) = ["ESS2" "100%" "No" "-" "-" "Direct" M(i,1)];
    elseif N(i,1) == 9
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "90%" "Yes" "ESS-Lig" "40%" "Direct" M(i,1)];
    elseif N(i,1) == 10
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "80%" "Yes" "ESS-Lig" "40%" "Direct" M(i,1)];
    elseif N(i,1) == 11
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "70%" "Yes" "ESS-Lig" "40%" "Direct" M(i,1)];
    elseif N(i,1) == 12
        Pathway_NMC_CO2_Direct(i,:) = ["ESS3" "100%" "No" "-" "-" "Direct" M(i,1)];
    elseif N(i,1) == 13
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "90%" "Yes" "ESS-Com" "40%" "Direct" M(i,1)];
    elseif N(i,1) == 14
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "80%" "Yes" "ESS-Com" "40%" "Direct" M(i,1)];
    elseif N(i,1) == 15
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "70%" "Yes" "ESS-Com" "40%" "Direct" M(i,1)];
    elseif N(i,1) == 16
        Pathway_NMC_CO2_Direct(i,:) = ["CBS1" "100%" "No" "-" "-" "Direct" M(i,1)];
    elseif N(i,1) == 17
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "90%" "Yes" "CBS-Com" "40%" "Direct" M(i,1)];
    elseif N(i,1) == 18
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "80%" "Yes" "CBS-Com" "40%" "Direct" M(i,1)];
    elseif N(i,1) == 19
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "70%" "Yes" "CBS-Com" "40%" "Direct" M(i,1)];
    elseif N(i,1) == 20
        Pathway_NMC_CO2_Direct(i,:) = ["CBS2" "100%" "No" "-" "-" "Direct" M(i,1)];
    elseif N(i,1) == 21
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "90%" "Yes" "CBS-Rai" "40%" "Direct" M(i,1)];
    elseif N(i,1) == 22
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "80%" "Yes" "CBS-Rai" "40%" "Direct" M(i,1)];
    elseif N(i,1) == 23
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "70%" "Yes" "CBS-Rai" "40%" "Direct" M(i,1)];
    elseif N(i,1) == 24
        Pathway_NMC_CO2_Direct(i,:) = ["CBS3" "100%" "No" "-" "-" "Direct" M(i,1)];
    elseif N(i,1) == 25
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "90%" "Yes" "CBS-Urb" "40%" "Direct" M(i,1)];
    elseif N(i,1) == 26
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "80%" "Yes" "CBS-Urb" "40%" "Direct" M(i,1)];
    elseif N(i,1) == 27
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "70%" "Yes" "CBS-Urb" "40%" "Direct" M(i,1)];
    elseif N(i,1) == 28
        Pathway_NMC_CO2_Direct(i,:) = ["CBS4" "100%" "No" "-" "-" "Direct" M(i,1)];
    elseif N(i,1) == 29
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "90%" "Yes" "CBS-Rur" "40%" "Direct" M(i,1)];
    elseif N(i,1) == 30
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "80%" "Yes" "CBS-Rur" "40%" "Direct" M(i,1)];
    elseif N(i,1) == 31
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "70%" "Yes" "CBS-Rur" "40%" "Direct" M(i,1)];
    elseif N(i,1) == 32
        Pathway_NMC_CO2_Direct(i,:) = ["LSV" "100%" "No" "-" "-" "Direct" M(i,1)];
    elseif N(i,1) == 33
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "90%" "Yes" "LSV-Sig" "40%" "Direct" M(i,1)];
    elseif N(i,1) == 34
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "80%" "Yes" "LSV-Sig" "40%" "Direct" M(i,1)];
    elseif N(i,1) == 35
        Pathway_NMC_CO2_Direct(i,:) = ["EV" "70%" "Yes" "LSV-Sig" "40%" "Direct" M(i,1)];
    end
end
%%%%%%%% Hydro- recycling
[O,P]= sort(NMC_CO2_Hydro_ele_cummu(:,5));
Pathway_NMC_CO2_Hydro = strings(35,7);
for i=1:35
    if P(i,1) == 1
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "90%" "No" "-" "-" "Hydro-" O(i,1)];
    elseif P(i,1) == 2
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "80%" "No" "-" "-" "Hydro-" O(i,1)];
    elseif P(i,1) == 3
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "70%" "No" "-" "-" "Hydro-" O(i,1)];
    elseif P(i,1) == 4
        Pathway_NMC_CO2_Hydro(i,:) = ["ESS1" "100%" "No" "-" "-" "Hydro-" O(i,1)];
    elseif P(i,1) == 5
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "90%" "Yes" "ESS-Gov" "40%" "Hydro-" O(i,1)];
    elseif P(i,1) == 6
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "80%" "Yes" "ESS-Gov" "40%" "Hydro-" O(i,1)];
    elseif P(i,1) == 7
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "70%" "Yes" "ESS-Gov" "40%" "Hydro-" O(i,1)];
    elseif P(i,1) == 8
        Pathway_NMC_CO2_Hydro(i,:) = ["ESS2" "100%" "No" "-" "-" "Hydro-" O(i,1)];
    elseif P(i,1) == 9
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "90%" "Yes" "ESS-Lig" "40%" "Hydro-" O(i,1)];
    elseif P(i,1) == 10
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "80%" "Yes" "ESS-Lig" "40%" "Hydro-" O(i,1)];
    elseif P(i,1) == 11
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "70%" "Yes" "ESS-Lig" "40%" "Hydro-" O(i,1)];
    elseif P(i,1) == 12
        Pathway_NMC_CO2_Hydro(i,:) = ["ESS3" "100%" "No" "-" "-" "Hydro-" O(i,1)];
    elseif P(i,1) == 13
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "90%" "Yes" "ESS-Com" "40%" "Hydro-" O(i,1)];
    elseif P(i,1) == 14
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "80%" "Yes" "ESS-Com" "40%" "Hydro-" O(i,1)];
    elseif P(i,1) == 15
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "70%" "Yes" "ESS-Com" "40%" "Hydro-" O(i,1)];
    elseif P(i,1) == 16
        Pathway_NMC_CO2_Hydro(i,:) = ["CBS1" "100%" "No" "-" "-" "Hydro-" O(i,1)];
    elseif P(i,1) == 17
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "90%" "Yes" "CBS-Com" "40%" "Hydro-" O(i,1)];
    elseif P(i,1) == 18
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "80%" "Yes" "CBS-Com" "40%" "Hydro-" O(i,1)];
    elseif P(i,1) == 19
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "70%" "Yes" "CBS-Com" "40%" "Hydro-" O(i,1)];
    elseif P(i,1) == 20
        Pathway_NMC_CO2_Hydro(i,:) = ["CBS2" "100%" "No" "-" "-" "Hydro-" O(i,1)];
    elseif P(i,1) == 21
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "90%" "Yes" "CBS-Rai" "40%" "Hydro-" O(i,1)];
    elseif P(i,1) == 22
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "80%" "Yes" "CBS-Rai" "40%" "Hydro-" O(i,1)];
    elseif P(i,1) == 23
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "70%" "Yes" "CBS-Rai" "40%" "Hydro-" O(i,1)];
    elseif P(i,1) == 24
        Pathway_NMC_CO2_Hydro(i,:) = ["CBS3" "100%" "No" "-" "-" "Hydro-" O(i,1)];
    elseif P(i,1) == 25
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "90%" "Yes" "CBS-Urb" "40%" "Hydro-" O(i,1)];
    elseif P(i,1) == 26
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "80%" "Yes" "CBS-Urb" "40%" "Hydro-" O(i,1)];
    elseif P(i,1) == 27
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "70%" "Yes" "CBS-Urb" "40%" "Hydro-" O(i,1)];
    elseif P(i,1) == 28
        Pathway_NMC_CO2_Hydro(i,:) = ["CBS4" "100%" "No" "-" "-" "Hydro-" O(i,1)];
    elseif P(i,1) == 29
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "90%" "Yes" "CBS-Rur" "40%" "Hydro-" O(i,1)];
    elseif P(i,1) == 30
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "80%" "Yes" "CBS-Rur" "40%" "Hydro-" O(i,1)];
    elseif P(i,1) == 31
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "70%" "Yes" "CBS-Rur" "40%" "Hydro-" O(i,1)];
    elseif P(i,1) == 32
        Pathway_NMC_CO2_Hydro(i,:) = ["LSV" "100%" "No" "-" "-" "Hydro-" O(i,1)];
    elseif P(i,1) == 33
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "90%" "Yes" "LSV-Sig" "40%" "Hydro-" O(i,1)];
    elseif P(i,1) == 34
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "80%" "Yes" "LSV-Sig" "40%" "Hydro-" O(i,1)];
    elseif P(i,1) == 35
        Pathway_NMC_CO2_Hydro(i,:) = ["EV" "70%" "Yes" "LSV-Sig" "40%" "Hydro-" O(i,1)];
    end
end
%%%%%%%%% Pyro- recycling
[Q,R]= sort(NMC_CO2_Pyro_ele_cummu(:,5));
Pathway_NMC_CO2_Pyro = strings(35,7);
for i=1:35
    if R(i,1) == 1
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "90%" "No" "-" "-" "Pyro-" Q(i,1)];
    elseif R(i,1) == 2
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "80%" "No" "-" "-" "Pyro-" Q(i,1)];
    elseif R(i,1) == 3
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "70%" "No" "-" "-" "Pyro-" Q(i,1)];
    elseif R(i,1) == 4
        Pathway_NMC_CO2_Pyro(i,:) = ["ESS1" "100%" "No" "-" "-" "Pyro-" Q(i,1)];
    elseif R(i,1) == 5
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "90%" "Yes" "ESS-Gov" "40%" "Pyro-" Q(i,1)];
    elseif R(i,1) == 6
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "80%" "Yes" "ESS-Gov" "40%" "Pyro-" Q(i,1)];
    elseif R(i,1) == 7
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "70%" "Yes" "ESS-Gov" "40%" "Pyro-" Q(i,1)];
    elseif R(i,1) == 8
        Pathway_NMC_CO2_Pyro(i,:) = ["ESS2" "100%" "No" "-" "-" "Pyro-" Q(i,1)];
    elseif R(i,1) == 9
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "90%" "Yes" "ESS-Lig" "40%" "Pyro-" Q(i,1)];
    elseif R(i,1) == 10
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "80%" "Yes" "ESS-Lig" "40%" "Pyro-" Q(i,1)];
    elseif R(i,1) == 11
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "70%" "Yes" "ESS-Lig" "40%" "Pyro-" Q(i,1)];
    elseif R(i,1) == 12
        Pathway_NMC_CO2_Pyro(i,:) = ["ESS3" "100%" "No" "-" "-" "Pyro-" Q(i,1)];
    elseif R(i,1) == 13
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "90%" "Yes" "ESS-Com" "40%" "Pyro-" Q(i,1)];
    elseif R(i,1) == 14
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "80%" "Yes" "ESS-Com" "40%" "Pyro-" Q(i,1)];
    elseif R(i,1) == 15
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "70%" "Yes" "ESS-Com" "40%" "Pyro-" Q(i,1)];
    elseif R(i,1) == 16
        Pathway_NMC_CO2_Pyro(i,:) = ["CBS1" "100%" "No" "-" "-" "Pyro-" Q(i,1)];
    elseif R(i,1) == 17
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "90%" "Yes" "CBS-Com" "40%" "Pyro-" Q(i,1)];
    elseif R(i,1) == 18
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "80%" "Yes" "CBS-Com" "40%" "Pyro-" Q(i,1)];
    elseif R(i,1) == 19
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "70%" "Yes" "CBS-Com" "40%" "Pyro-" Q(i,1)];
    elseif R(i,1) == 20
        Pathway_NMC_CO2_Pyro(i,:) = ["CBS2" "100%" "No" "-" "-" "Pyro-" Q(i,1)];
    elseif R(i,1) == 21
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "90%" "Yes" "CBS-Rai" "40%" "Pyro-" Q(i,1)];
    elseif R(i,1) == 22
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "80%" "Yes" "CBS-Rai" "40%" "Pyro-" Q(i,1)];
    elseif R(i,1) == 23
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "70%" "Yes" "CBS-Rai" "40%" "Pyro-" Q(i,1)];
    elseif R(i,1) == 24
        Pathway_NMC_CO2_Pyro(i,:) = ["CBS3" "100%" "No" "-" "-" "Pyro-" Q(i,1)];
    elseif R(i,1) == 25
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "90%" "Yes" "CBS-Urb" "40%" "Pyro-" Q(i,1)];
    elseif R(i,1) == 26
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "80%" "Yes" "CBS-Urb" "40%" "Pyro-" Q(i,1)];
    elseif R(i,1) == 27
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "70%" "Yes" "CBS-Urb" "40%" "Pyro-" Q(i,1)];
    elseif R(i,1) == 28
        Pathway_NMC_CO2_Pyro(i,:) = ["CBS4" "100%" "No" "-" "-" "Pyro-" Q(i,1)];
    elseif R(i,1) == 29
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "90%" "Yes" "CBS-Rur" "40%" "Pyro-" Q(i,1)];
    elseif R(i,1) == 30
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "80%" "Yes" "CBS-Rur" "40%" "Pyro-" Q(i,1)];
    elseif R(i,1) == 31
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "70%" "Yes" "CBS-Rur" "40%" "Pyro-" Q(i,1)];
    elseif R(i,1) == 32
        Pathway_NMC_CO2_Pyro(i,:) = ["LSV" "100%" "No" "-" "-" "Pyro-" Q(i,1)];
    elseif R(i,1) == 33
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "90%" "Yes" "LSV-Sig" "40%" "Pyro-" Q(i,1)];
    elseif R(i,1) == 34
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "80%" "Yes" "LSV-Sig" "40%" "Pyro-" Q(i,1)];
    elseif R(i,1) == 35
        Pathway_NMC_CO2_Pyro(i,:) = ["EV" "70%" "Yes" "LSV-Sig" "40%" "Pyro-" Q(i,1)];
    end
end
Pathway_NMC_CO2 = [Pathway_NMC_CO2_Direct;Pathway_NMC_CO2_Hydro;Pathway_NMC_CO2_Pyro];

%%%%%%%%%% LFP pathway - carbon footprint %%%%%%%%%%%%
%%%%%%%%%% direct recycling %%%%%%%%%%%%%%%
LFP_CO2_Direct = [LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),0,0,LFP_CO2_Direct_kWh_EV(1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),0,0,LFP_CO2_Direct_kWh_EV(2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),0,0,LFP_CO2_Direct_kWh_EV(3);
    LFP_CO2_Cell_kWh_ESS1(6,1)+LFP_CO2_Manu_kWh_ESS1(6,1),LFP_CO2_Use_kWh_ESS1(6,1),0,0,LFP_CO2_Direct_kWh_ESS1(6,1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_ESS1(6,2),LFP_CO2_Use_kWh_ESS1(6,2),LFP_CO2_Direct_kWh_ESS1(6,2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_ESS1(6,3),LFP_CO2_Use_kWh_ESS1(6,3),LFP_CO2_Direct_kWh_ESS1(6,3);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_ESS1(6,4),LFP_CO2_Use_kWh_ESS1(6,4),LFP_CO2_Direct_kWh_ESS1(6,4);
    LFP_CO2_Cell_kWh_ESS2(6,1)+LFP_CO2_Manu_kWh_ESS2(6,1),LFP_CO2_Use_kWh_ESS2(6,1),0,0,LFP_CO2_Direct_kWh_ESS2(6,1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_ESS2(6,2),LFP_CO2_Use_kWh_ESS2(6,2),LFP_CO2_Direct_kWh_ESS2(6,2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_ESS2(6,3),LFP_CO2_Use_kWh_ESS2(6,3),LFP_CO2_Direct_kWh_ESS2(6,3);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_ESS2(6,4),LFP_CO2_Use_kWh_ESS2(6,4),LFP_CO2_Direct_kWh_ESS2(6,4);
    LFP_CO2_Cell_kWh_ESS3(6,1)+LFP_CO2_Manu_kWh_ESS3(6,1),LFP_CO2_Use_kWh_ESS3(6,1),0,0,LFP_CO2_Direct_kWh_ESS3(6,1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_ESS3(6,2),LFP_CO2_Use_kWh_ESS3(6,2),LFP_CO2_Direct_kWh_ESS3(6,2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_ESS3(6,3),LFP_CO2_Use_kWh_ESS3(6,3),LFP_CO2_Direct_kWh_ESS3(6,3);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_ESS3(6,4),LFP_CO2_Use_kWh_ESS3(6,4),LFP_CO2_Direct_kWh_ESS3(6,4);
    LFP_CO2_Cell_kWh_CBS1(6,1)+LFP_CO2_Manu_kWh_CBS1(6,1),LFP_CO2_Use_kWh_CBS1(6,1),0,0,LFP_CO2_Direct_kWh_CBS1(6,1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_CBS1(6,2),LFP_CO2_Use_kWh_CBS1(6,2),LFP_CO2_Direct_kWh_CBS1(6,2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_CBS1(6,3),LFP_CO2_Use_kWh_CBS1(6,3),LFP_CO2_Direct_kWh_CBS1(6,3);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_CBS1(6,4),LFP_CO2_Use_kWh_CBS1(6,4),LFP_CO2_Direct_kWh_CBS1(6,4);
    LFP_CO2_Cell_kWh_CBS2(6,1)+LFP_CO2_Manu_kWh_CBS2(6,1),LFP_CO2_Use_kWh_CBS2(6,1),0,0,LFP_CO2_Direct_kWh_CBS2(6,1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_CBS2(6,2),LFP_CO2_Use_kWh_CBS2(6,2),LFP_CO2_Direct_kWh_CBS2(6,2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_CBS2(6,3),LFP_CO2_Use_kWh_CBS2(6,3),LFP_CO2_Direct_kWh_CBS2(6,3);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_CBS2(6,4),LFP_CO2_Use_kWh_CBS2(6,4),LFP_CO2_Direct_kWh_CBS2(6,4);
    LFP_CO2_Cell_kWh_CBS3(6,1)+LFP_CO2_Manu_kWh_CBS3(6,1),LFP_CO2_Use_kWh_CBS3(6,1),0,0,LFP_CO2_Direct_kWh_CBS3(6,1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_CBS3(6,2),LFP_CO2_Use_kWh_CBS3(6,2),LFP_CO2_Direct_kWh_CBS3(6,2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_CBS3(6,3),LFP_CO2_Use_kWh_CBS3(6,3),LFP_CO2_Direct_kWh_CBS3(6,3);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_CBS3(6,4),LFP_CO2_Use_kWh_CBS3(6,4),LFP_CO2_Direct_kWh_CBS3(6,4);
    LFP_CO2_Cell_kWh_CBS4(6,1)+LFP_CO2_Manu_kWh_CBS4(6,1),LFP_CO2_Use_kWh_CBS4(6,1),0,0,LFP_CO2_Direct_kWh_CBS4(6,1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_CBS4(6,2),LFP_CO2_Use_kWh_CBS4(6,2),LFP_CO2_Direct_kWh_CBS4(6,2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_CBS4(6,3),LFP_CO2_Use_kWh_CBS4(6,3),LFP_CO2_Direct_kWh_CBS4(6,3);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_CBS4(6,4),LFP_CO2_Use_kWh_CBS4(6,4),LFP_CO2_Direct_kWh_CBS4(6,4);
    LFP_CO2_Cell_kWh_LSV(6,1)+LFP_CO2_Manu_kWh_LSV(6,1),LFP_CO2_Use_kWh_LSV(6,1),0,0,LFP_CO2_Direct_kWh_LSV(6,1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_LSV(6,2),LFP_CO2_Use_kWh_LSV(6,2),LFP_CO2_Direct_kWh_LSV(6,2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_LSV(6,3),LFP_CO2_Use_kWh_LSV(6,3),LFP_CO2_Direct_kWh_LSV(6,3);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_LSV(6,4),LFP_CO2_Use_kWh_LSV(6,4),LFP_CO2_Direct_kWh_LSV(6,4);];
LFP_CO2_Direct_cummu = [LFP_CO2_Direct(:,1),LFP_CO2_Direct(:,1)+LFP_CO2_Direct(:,2),LFP_CO2_Direct(:,1)+LFP_CO2_Direct(:,2)+LFP_CO2_Direct(:,3),...
     LFP_CO2_Direct(:,1)+LFP_CO2_Direct(:,2)+LFP_CO2_Direct(:,3)+LFP_CO2_Direct(:,4),LFP_CO2_Direct(:,1)+LFP_CO2_Direct(:,2)+LFP_CO2_Direct(:,3)+LFP_CO2_Direct(:,4)+LFP_CO2_Direct(:,5)];
%%%%%%%%%% hydro recycling %%%%%%%%%%%%%%%
LFP_CO2_Hydro = [LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),0,0,LFP_CO2_Hydro_kWh_EV(1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),0,0,LFP_CO2_Hydro_kWh_EV(2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),0,0,LFP_CO2_Hydro_kWh_EV(3);
    LFP_CO2_Cell_kWh_ESS1(6,1)+LFP_CO2_Manu_kWh_ESS1(6,1),LFP_CO2_Use_kWh_ESS1(6,1),0,0,LFP_CO2_Hydro_kWh_ESS1(6,1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_ESS1(6,2),LFP_CO2_Use_kWh_ESS1(6,2),LFP_CO2_Hydro_kWh_ESS1(6,2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_ESS1(6,3),LFP_CO2_Use_kWh_ESS1(6,3),LFP_CO2_Hydro_kWh_ESS1(6,3);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_ESS1(6,4),LFP_CO2_Use_kWh_ESS1(6,4),LFP_CO2_Hydro_kWh_ESS1(6,4);
    LFP_CO2_Cell_kWh_ESS2(6,1)+LFP_CO2_Manu_kWh_ESS2(6,1),LFP_CO2_Use_kWh_ESS2(6,1),0,0,LFP_CO2_Hydro_kWh_ESS2(6,1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_ESS2(6,2),LFP_CO2_Use_kWh_ESS2(6,2),LFP_CO2_Hydro_kWh_ESS2(6,2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_ESS2(6,3),LFP_CO2_Use_kWh_ESS2(6,3),LFP_CO2_Hydro_kWh_ESS2(6,3);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_ESS2(6,4),LFP_CO2_Use_kWh_ESS2(6,4),LFP_CO2_Hydro_kWh_ESS2(6,4);
    LFP_CO2_Cell_kWh_ESS3(6,1)+LFP_CO2_Manu_kWh_ESS3(6,1),LFP_CO2_Use_kWh_ESS3(6,1),0,0,LFP_CO2_Hydro_kWh_ESS3(6,1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_ESS3(6,2),LFP_CO2_Use_kWh_ESS3(6,2),LFP_CO2_Hydro_kWh_ESS3(6,2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_ESS3(6,3),LFP_CO2_Use_kWh_ESS3(6,3),LFP_CO2_Hydro_kWh_ESS3(6,3);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_ESS3(6,4),LFP_CO2_Use_kWh_ESS3(6,4),LFP_CO2_Hydro_kWh_ESS3(6,4);
    LFP_CO2_Cell_kWh_CBS1(6,1)+LFP_CO2_Manu_kWh_CBS1(6,1),LFP_CO2_Use_kWh_CBS1(6,1),0,0,LFP_CO2_Hydro_kWh_CBS1(6,1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_CBS1(6,2),LFP_CO2_Use_kWh_CBS1(6,2),LFP_CO2_Hydro_kWh_CBS1(6,2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_CBS1(6,3),LFP_CO2_Use_kWh_CBS1(6,3),LFP_CO2_Hydro_kWh_CBS1(6,3);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_CBS1(6,4),LFP_CO2_Use_kWh_CBS1(6,4),LFP_CO2_Hydro_kWh_CBS1(6,4);
    LFP_CO2_Cell_kWh_CBS2(6,1)+LFP_CO2_Manu_kWh_CBS2(6,1),LFP_CO2_Use_kWh_CBS2(6,1),0,0,LFP_CO2_Hydro_kWh_CBS2(6,1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_CBS2(6,2),LFP_CO2_Use_kWh_CBS2(6,2),LFP_CO2_Hydro_kWh_CBS2(6,2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_CBS2(6,3),LFP_CO2_Use_kWh_CBS2(6,3),LFP_CO2_Hydro_kWh_CBS2(6,3);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_CBS2(6,4),LFP_CO2_Use_kWh_CBS2(6,4),LFP_CO2_Hydro_kWh_CBS2(6,4);
    LFP_CO2_Cell_kWh_CBS3(6,1)+LFP_CO2_Manu_kWh_CBS3(6,1),LFP_CO2_Use_kWh_CBS3(6,1),0,0,LFP_CO2_Hydro_kWh_CBS3(6,1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_CBS3(6,2),LFP_CO2_Use_kWh_CBS3(6,2),LFP_CO2_Hydro_kWh_CBS3(6,2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_CBS3(6,3),LFP_CO2_Use_kWh_CBS3(6,3),LFP_CO2_Hydro_kWh_CBS3(6,3);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_CBS3(6,4),LFP_CO2_Use_kWh_CBS3(6,4),LFP_CO2_Hydro_kWh_CBS3(6,4);
    LFP_CO2_Cell_kWh_CBS4(6,1)+LFP_CO2_Manu_kWh_CBS4(6,1),LFP_CO2_Use_kWh_CBS4(6,1),0,0,LFP_CO2_Hydro_kWh_CBS4(6,1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_CBS4(6,2),LFP_CO2_Use_kWh_CBS4(6,2),LFP_CO2_Hydro_kWh_CBS4(6,2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_CBS4(6,3),LFP_CO2_Use_kWh_CBS4(6,3),LFP_CO2_Hydro_kWh_CBS4(6,3);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_CBS4(6,4),LFP_CO2_Use_kWh_CBS4(6,4),LFP_CO2_Hydro_kWh_CBS4(6,4);
    LFP_CO2_Cell_kWh_LSV(6,1)+LFP_CO2_Manu_kWh_LSV(6,1),LFP_CO2_Use_kWh_LSV(6,1),0,0,LFP_CO2_Hydro_kWh_LSV(6,1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_LSV(6,2),LFP_CO2_Use_kWh_LSV(6,2),LFP_CO2_Hydro_kWh_LSV(6,2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_LSV(6,3),LFP_CO2_Use_kWh_LSV(6,3),LFP_CO2_Hydro_kWh_LSV(6,3);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_LSV(6,4),LFP_CO2_Use_kWh_LSV(6,4),LFP_CO2_Hydro_kWh_LSV(6,4);];
LFP_CO2_Hydro_cummu = [LFP_CO2_Hydro(:,1),LFP_CO2_Hydro(:,1)+LFP_CO2_Hydro(:,2),LFP_CO2_Hydro(:,1)+LFP_CO2_Hydro(:,2)+LFP_CO2_Hydro(:,3),...
     LFP_CO2_Hydro(:,1)+LFP_CO2_Hydro(:,2)+LFP_CO2_Hydro(:,3)+LFP_CO2_Hydro(:,4),LFP_CO2_Hydro(:,1)+LFP_CO2_Hydro(:,2)+LFP_CO2_Hydro(:,3)+LFP_CO2_Hydro(:,4)+LFP_CO2_Hydro(:,5)];
%%%%%%%%%% pyro recycling %%%%%%%%%%%%%%%
LFP_CO2_Pyro = [LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),0,0,LFP_CO2_Pyro_kWh_EV(1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),0,0,LFP_CO2_Pyro_kWh_EV(2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),0,0,LFP_CO2_Pyro_kWh_EV(3);
    LFP_CO2_Cell_kWh_ESS1(6,1)+LFP_CO2_Manu_kWh_ESS1(6,1),LFP_CO2_Use_kWh_ESS1(6,1),0,0,LFP_CO2_Pyro_kWh_ESS1(6,1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_ESS1(6,2),LFP_CO2_Use_kWh_ESS1(6,2),LFP_CO2_Pyro_kWh_ESS1(6,2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_ESS1(6,3),LFP_CO2_Use_kWh_ESS1(6,3),LFP_CO2_Pyro_kWh_ESS1(6,3);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_ESS1(6,4),LFP_CO2_Use_kWh_ESS1(6,4),LFP_CO2_Pyro_kWh_ESS1(6,4);
    LFP_CO2_Cell_kWh_ESS2(6,1)+LFP_CO2_Manu_kWh_ESS2(6,1),LFP_CO2_Use_kWh_ESS2(6,1),0,0,LFP_CO2_Pyro_kWh_ESS2(6,1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_ESS2(6,2),LFP_CO2_Use_kWh_ESS2(6,2),LFP_CO2_Pyro_kWh_ESS2(6,2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_ESS2(6,3),LFP_CO2_Use_kWh_ESS2(6,3),LFP_CO2_Pyro_kWh_ESS2(6,3);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_ESS2(6,4),LFP_CO2_Use_kWh_ESS2(6,4),LFP_CO2_Pyro_kWh_ESS2(6,4);
    LFP_CO2_Cell_kWh_ESS3(6,1)+LFP_CO2_Manu_kWh_ESS3(6,1),LFP_CO2_Use_kWh_ESS3(6,1),0,0,LFP_CO2_Pyro_kWh_ESS3(6,1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_ESS3(6,2),LFP_CO2_Use_kWh_ESS3(6,2),LFP_CO2_Pyro_kWh_ESS3(6,2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_ESS3(6,3),LFP_CO2_Use_kWh_ESS3(6,3),LFP_CO2_Pyro_kWh_ESS3(6,3);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_ESS3(6,4),LFP_CO2_Use_kWh_ESS3(6,4),LFP_CO2_Pyro_kWh_ESS3(6,4);
    LFP_CO2_Cell_kWh_CBS1(6,1)+LFP_CO2_Manu_kWh_CBS1(6,1),LFP_CO2_Use_kWh_CBS1(6,1),0,0,LFP_CO2_Pyro_kWh_CBS1(6,1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_CBS1(6,2),LFP_CO2_Use_kWh_CBS1(6,2),LFP_CO2_Pyro_kWh_CBS1(6,2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_CBS1(6,3),LFP_CO2_Use_kWh_CBS1(6,3),LFP_CO2_Pyro_kWh_CBS1(6,3);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_CBS1(6,4),LFP_CO2_Use_kWh_CBS1(6,4),LFP_CO2_Pyro_kWh_CBS1(6,4);
    LFP_CO2_Cell_kWh_CBS2(6,1)+LFP_CO2_Manu_kWh_CBS2(6,1),LFP_CO2_Use_kWh_CBS2(6,1),0,0,LFP_CO2_Pyro_kWh_CBS2(6,1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_CBS2(6,2),LFP_CO2_Use_kWh_CBS2(6,2),LFP_CO2_Pyro_kWh_CBS2(6,2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_CBS2(6,3),LFP_CO2_Use_kWh_CBS2(6,3),LFP_CO2_Pyro_kWh_CBS2(6,3);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_CBS2(6,4),LFP_CO2_Use_kWh_CBS2(6,4),LFP_CO2_Pyro_kWh_CBS2(6,4);
    LFP_CO2_Cell_kWh_CBS3(6,1)+LFP_CO2_Manu_kWh_CBS3(6,1),LFP_CO2_Use_kWh_CBS3(6,1),0,0,LFP_CO2_Pyro_kWh_CBS3(6,1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_CBS3(6,2),LFP_CO2_Use_kWh_CBS3(6,2),LFP_CO2_Pyro_kWh_CBS3(6,2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_CBS3(6,3),LFP_CO2_Use_kWh_CBS3(6,3),LFP_CO2_Pyro_kWh_CBS3(6,3);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_CBS3(6,4),LFP_CO2_Use_kWh_CBS3(6,4),LFP_CO2_Pyro_kWh_CBS3(6,4);
    LFP_CO2_Cell_kWh_CBS4(6,1)+LFP_CO2_Manu_kWh_CBS4(6,1),LFP_CO2_Use_kWh_CBS4(6,1),0,0,LFP_CO2_Pyro_kWh_CBS4(6,1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_CBS4(6,2),LFP_CO2_Use_kWh_CBS4(6,2),LFP_CO2_Pyro_kWh_CBS4(6,2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_CBS4(6,3),LFP_CO2_Use_kWh_CBS4(6,3),LFP_CO2_Pyro_kWh_CBS4(6,3);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_CBS4(6,4),LFP_CO2_Use_kWh_CBS4(6,4),LFP_CO2_Pyro_kWh_CBS4(6,4);
    LFP_CO2_Cell_kWh_LSV(6,1)+LFP_CO2_Manu_kWh_LSV(6,1),LFP_CO2_Use_kWh_LSV(6,1),0,0,LFP_CO2_Pyro_kWh_LSV(6,1);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(1),LFP_CO2_Manu_kWh_LSV(6,2),LFP_CO2_Use_kWh_LSV(6,2),LFP_CO2_Pyro_kWh_LSV(6,2);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(2),LFP_CO2_Manu_kWh_LSV(6,3),LFP_CO2_Use_kWh_LSV(6,3),LFP_CO2_Pyro_kWh_LSV(6,3);
    LFP_CO2_Cell_kWh_EV+LFP_CO2_Manu_kWh_EV,LFP_CO2_Use_kWh_EV(3),LFP_CO2_Manu_kWh_LSV(6,4),LFP_CO2_Use_kWh_LSV(6,4),LFP_CO2_Pyro_kWh_LSV(6,4);];
LFP_CO2_Pyro_cummu = [LFP_CO2_Pyro(:,1),LFP_CO2_Pyro(:,1)+LFP_CO2_Pyro(:,2),LFP_CO2_Pyro(:,1)+LFP_CO2_Pyro(:,2)+LFP_CO2_Pyro(:,3),...
    LFP_CO2_Pyro(:,1)+LFP_CO2_Pyro(:,2)+LFP_CO2_Pyro(:,3)+LFP_CO2_Pyro(:,4),LFP_CO2_Pyro(:,1)+LFP_CO2_Pyro(:,2)+LFP_CO2_Pyro(:,3)+LFP_CO2_Pyro(:,4)+LFP_CO2_Pyro(:,5)];
 
%%%%%%% thoughput capacity during the life cycle (kWh electricity/kWh battery)
SOHsum=zeros(4,1);
soh = 1;
cycle = 0;
for i = 2:5000
    cycle = i-1;
    soh = interp1(LFP_Cycle,LFP_SOH,cycle,'linear')*0.01;
    if soh >= 0.9           
        SOHsum(1,1) = SOHsum(1,1)+soh;
    end
    if soh >= 0.81
        SOHsum(2,1) = SOHsum(2,1)+soh;
    end
    if soh >= 0.7
        SOHsum(3,1) = SOHsum(3,1)+soh;
    end
    if soh >= 0.4
        SOHsum(4,1) = SOHsum(4,1)+soh;
    end
end
LFP_CO2_Direct_ele = LFP_CO2_Direct;
LFP_CO2_Hydro_ele = LFP_CO2_Hydro;
LFP_CO2_Pyro_ele = LFP_CO2_Pyro;
% %%%%%%%%%%%%%%%%%%%
for ii = 1:35
    if mod(ii,4) == 1
        if ii == 1
            LFP_CO2_Direct_ele(ii,:) = LFP_CO2_Direct_ele(ii,:)/SOHsum(1,1);
            LFP_CO2_Hydro_ele(1,:) = LFP_CO2_Hydro_ele(1,:)/SOHsum(1,1);
            LFP_CO2_Pyro_ele(1,:) = LFP_CO2_Pyro_ele(1,:)/SOHsum(1,1);
        else
            LFP_CO2_Direct_ele(ii,:) = LFP_CO2_Direct_ele(ii,:)/SOHsum(4,1);%(SOHsum(4,1)-SOHsum(1,1));
            LFP_CO2_Hydro_ele(ii,:) = LFP_CO2_Hydro_ele(ii,:)/SOHsum(4,1);%(SOHsum(4,1)-SOHsum(1,1));
            LFP_CO2_Pyro_ele(ii,:) = LFP_CO2_Pyro_ele(ii,:)/SOHsum(4,1);%(SOHsum(4,1)-SOHsum(1,1));
        end
    elseif mod(ii,4) == 2
        if ii == 2
            LFP_CO2_Direct_ele(ii,:) = LFP_CO2_Direct_ele(ii,:)/SOHsum(2,1);
            LFP_CO2_Hydro_ele(ii,:) = LFP_CO2_Hydro_ele(ii,:)/SOHsum(2,1);
            LFP_CO2_Pyro_ele(ii,:) = LFP_CO2_Pyro_ele(ii,:)/SOHsum(2,1);
        else
            LFP_CO2_Direct_ele(ii,:) = LFP_CO2_Direct_ele(ii,:)/SOHsum(4,1);%(SOHsum(4,1)-SOHsum(2,1));
            LFP_CO2_Hydro_ele(ii,:) = LFP_CO2_Hydro_ele(ii,:)/SOHsum(4,1);%(SOHsum(4,1)-SOHsum(2,1));
            LFP_CO2_Pyro_ele(ii,:) = LFP_CO2_Pyro_ele(ii,:)/SOHsum(4,1);%(SOHsum(4,1)-SOHsum(2,1));
        end
    elseif mod(ii,4) == 3
        if ii == 3
            LFP_CO2_Direct_ele(ii,:) = LFP_CO2_Direct_ele(ii,:)/SOHsum(3,1);
            LFP_CO2_Hydro_ele(ii,:) = LFP_CO2_Hydro_ele(ii,:)/SOHsum(3,1);
            LFP_CO2_Pyro_ele(ii,:) = LFP_CO2_Pyro_ele(ii,:)/SOHsum(3,1);
        else
            LFP_CO2_Direct_ele(ii,:) = LFP_CO2_Direct_ele(ii,:)/SOHsum(4,1);%(SOHsum(4,1)-SOHsum(3,1));
            LFP_CO2_Hydro_ele(ii,:) = LFP_CO2_Hydro_ele(ii,:)/SOHsum(4,1);%(SOHsum(4,1)-SOHsum(3,1));
            LFP_CO2_Pyro_ele(ii,:) = LFP_CO2_Pyro_ele(ii,:)/SOHsum(4,1);%(SOHsum(4,1)-SOHsum(3,1));
        end
    else 
        LFP_CO2_Direct_ele(ii,:) = LFP_CO2_Direct_ele(ii,:)/SOHsum(4,1);
        LFP_CO2_Hydro_ele(ii,:) = LFP_CO2_Hydro_ele(ii,:)/SOHsum(4,1);
        LFP_CO2_Pyro_ele(ii,:) = LFP_CO2_Pyro_ele(ii,:)/SOHsum(4,1);
    end
end
% %%%%%%%%%%%%%%%%%%%%%%%%%%
LFP_CO2_Direct_ele_cummu = [LFP_CO2_Direct_ele(:,1),LFP_CO2_Direct_ele(:,1)+LFP_CO2_Direct_ele(:,2),LFP_CO2_Direct_ele(:,1)+LFP_CO2_Direct_ele(:,2)+LFP_CO2_Direct_ele(:,3),...
    LFP_CO2_Direct_ele(:,1)+LFP_CO2_Direct_ele(:,2)+LFP_CO2_Direct_ele(:,3)+LFP_CO2_Direct_ele(:,4),LFP_CO2_Direct_ele(:,1)+LFP_CO2_Direct_ele(:,2)+LFP_CO2_Direct_ele(:,3)+LFP_CO2_Direct_ele(:,4)+LFP_CO2_Direct_ele(:,5)];
LFP_CO2_Hydro_ele_cummu = [LFP_CO2_Hydro_ele(:,1),LFP_CO2_Hydro_ele(:,1)+LFP_CO2_Hydro_ele(:,2),LFP_CO2_Hydro_ele(:,1)+LFP_CO2_Hydro_ele(:,2)+LFP_CO2_Hydro_ele(:,3),...
    LFP_CO2_Hydro_ele(:,1)+LFP_CO2_Hydro_ele(:,2)+LFP_CO2_Hydro_ele(:,3)+LFP_CO2_Hydro_ele(:,4),LFP_CO2_Hydro_ele(:,1)+LFP_CO2_Hydro_ele(:,2)+LFP_CO2_Hydro_ele(:,3)+LFP_CO2_Hydro_ele(:,4)+LFP_CO2_Hydro_ele(:,5)];
LFP_CO2_Pyro_ele_cummu = [LFP_CO2_Pyro_ele(:,1),LFP_CO2_Pyro_ele(:,1)+LFP_CO2_Pyro_ele(:,2),LFP_CO2_Pyro_ele(:,1)+LFP_CO2_Pyro_ele(:,2)+LFP_CO2_Pyro_ele(:,3),...
    LFP_CO2_Pyro_ele(:,1)+LFP_CO2_Pyro_ele(:,2)+LFP_CO2_Pyro_ele(:,3)+LFP_CO2_Pyro_ele(:,4),LFP_CO2_Pyro_ele(:,1)+LFP_CO2_Pyro_ele(:,2)+LFP_CO2_Pyro_ele(:,3)+LFP_CO2_Pyro_ele(:,4)+LFP_CO2_Pyro_ele(:,5)];

% %%%%%%%%%%%%%%%%%%%%
% %%%%%%%%% LFP battery roadmap priority sorting, from best to worst
%%%%%%% direct recycling
[S,T] = sort(LFP_CO2_Direct_ele_cummu(:,5));
Pathway_LFP_CO2_Direct = strings(35,7);
for i=1:35
    if T(i,1) == 1
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "90%" "No" "-" "-" "Direct" S(i,1)];
    elseif T(i,1) == 2
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "80%" "No" "-" "-" "Direct" S(i,1)];
    elseif T(i,1) == 3
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "70%" "No" "-" "-" "Direct" S(i,1)];
    elseif T(i,1) == 4
        Pathway_LFP_CO2_Direct(i,:) = ["ESS1" "100%" "No" "-" "-" "Direct" S(i,1)];
    elseif T(i,1) == 5
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "90%" "Yes" "ESS-Gov" "40%" "Direct" S(i,1)];
    elseif T(i,1) == 6
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "80%" "Yes" "ESS-Gov" "40%" "Direct" S(i,1)];
    elseif T(i,1) == 7
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "70%" "Yes" "ESS-Gov" "40%" "Direct" S(i,1)];
    elseif T(i,1) == 8
        Pathway_LFP_CO2_Direct(i,:) = ["ESS2" "100%" "No" "-" "-" "Direct" S(i,1)];
    elseif T(i,1) == 9
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "90%" "Yes" "ESS-Lig" "40%" "Direct" S(i,1)];
    elseif T(i,1) == 10
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "80%" "Yes" "ESS-Lig" "40%" "Direct" S(i,1)];
    elseif T(i,1) == 11
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "70%" "Yes" "ESS-Lig" "40%" "Direct" S(i,1)];
    elseif T(i,1) == 12
        Pathway_LFP_CO2_Direct(i,:) = ["ESS3" "100%" "No" "-" "-" "Direct" S(i,1)];
    elseif T(i,1) == 13
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "90%" "Yes" "ESS-Com" "40%" "Direct" S(i,1)];
    elseif T(i,1) == 14
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "80%" "Yes" "ESS-Com" "40%" "Direct" S(i,1)];
    elseif T(i,1) == 15
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "70%" "Yes" "ESS-Com" "40%" "Direct" S(i,1)];
    elseif T(i,1) == 16
        Pathway_LFP_CO2_Direct(i,:) = ["CBS1" "100%" "No" "-" "-" "Direct" S(i,1)];
    elseif T(i,1) == 17
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "90%" "Yes" "CBS-Com" "40%" "Direct" S(i,1)];
    elseif T(i,1) == 18
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "80%" "Yes" "CBS-Com" "40%" "Direct" S(i,1)];
    elseif T(i,1) == 19
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "70%" "Yes" "CBS-Com" "40%" "Direct" S(i,1)];
    elseif T(i,1) == 20
        Pathway_LFP_CO2_Direct(i,:) = ["CBS2" "100%" "No" "-" "-" "Direct" S(i,1)];
    elseif T(i,1) == 21
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "90%" "Yes" "CBS-Rai" "40%" "Direct" S(i,1)];
    elseif T(i,1) == 22
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "80%" "Yes" "CBS-Rai" "40%" "Direct" S(i,1)];
    elseif T(i,1) == 23
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "70%" "Yes" "CBS-Rai" "40%" "Direct" S(i,1)];
    elseif T(i,1) == 24
        Pathway_LFP_CO2_Direct(i,:) = ["CBS3" "100%" "No" "-" "-" "Direct" S(i,1)];
    elseif T(i,1) == 25
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "90%" "Yes" "CBS-Urb" "40%" "Direct" S(i,1)];
    elseif T(i,1) == 26
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "80%" "Yes" "CBS-Urb" "40%" "Direct" S(i,1)];
    elseif T(i,1) == 27
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "70%" "Yes" "CBS-Urb" "40%" "Direct" S(i,1)];
    elseif T(i,1) == 28
        Pathway_LFP_CO2_Direct(i,:) = ["CBS4" "100%" "No" "-" "-" "Direct" S(i,1)];
    elseif T(i,1) == 29
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "90%" "Yes" "CBS-Rur" "40%" "Direct" S(i,1)];
    elseif T(i,1) == 30
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "80%" "Yes" "CBS-Rur" "40%" "Direct" S(i,1)];
    elseif T(i,1) == 31
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "70%" "Yes" "CBS-Rur" "40%" "Direct" S(i,1)];
    elseif T(i,1) == 32
        Pathway_LFP_CO2_Direct(i,:) = ["LSV" "100%" "No" "-" "-" "Direct" S(i,1)];
    elseif T(i,1) == 33
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "90%" "Yes" "LSV-Sig" "40%" "Direct" S(i,1)];
    elseif T(i,1) == 34
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "80%" "Yes" "LSV-Sig" "40%" "Direct" S(i,1)];
    elseif T(i,1) == 35
        Pathway_LFP_CO2_Direct(i,:) = ["EV" "70%" "Yes" "LSV-Sig" "40%" "Direct" S(i,1)];
    end
end
%%%%%%%%% Hydro- recycling
[U,V] = sort(LFP_CO2_Hydro_ele_cummu(:,5));
Pathway_LFP_CO2_Hydro = strings(35,7);
for i=1:35
    if V(i,1) == 1
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "90%" "No" "-" "-" "Hydro-" U(i,1)];
    elseif V(i,1) == 2
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "80%" "No" "-" "-" "Hydro-" U(i,1)];
    elseif V(i,1) == 3
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "70%" "No" "-" "-" "Hydro-" U(i,1)];
    elseif V(i,1) == 4
        Pathway_LFP_CO2_Hydro(i,:) = ["ESS1" "100%" "No" "-" "-" "Hydro-" U(i,1)];
    elseif V(i,1) == 5
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "90%" "Yes" "ESS-Gov" "40%" "Hydro-" U(i,1)];
    elseif V(i,1) == 6
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "80%" "Yes" "ESS-Gov" "40%" "Hydro-" U(i,1)];
    elseif V(i,1) == 7
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "70%" "Yes" "ESS-Gov" "40%" "Hydro-" U(i,1)];
    elseif V(i,1) == 8
        Pathway_LFP_CO2_Hydro(i,:) = ["ESS2" "100%" "No" "-" "-" "Hydro-" U(i,1)];
    elseif V(i,1) == 9
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "90%" "Yes" "ESS-Lig" "40%" "Hydro-" U(i,1)];
    elseif V(i,1) == 10
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "80%" "Yes" "ESS-Lig" "40%" "Hydro-" U(i,1)];
    elseif V(i,1) == 11
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "70%" "Yes" "ESS-Lig" "40%" "Hydro-" U(i,1)];
    elseif V(i,1) == 12
        Pathway_LFP_CO2_Hydro(i,:) = ["ESS3" "100%" "No" "-" "-" "Hydro-" U(i,1)];
    elseif V(i,1) == 13
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "90%" "Yes" "ESS-Com" "40%" "Hydro-" U(i,1)];
    elseif V(i,1) == 14
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "80%" "Yes" "ESS-Com" "40%" "Hydro-" U(i,1)];
    elseif V(i,1) == 15
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "70%" "Yes" "ESS-Com" "40%" "Hydro-" U(i,1)];
    elseif V(i,1) == 16
        Pathway_LFP_CO2_Hydro(i,:) = ["CBS1" "100%" "No" "-" "-" "Hydro-" U(i,1)];
    elseif V(i,1) == 17
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "90%" "Yes" "CBS-Com" "40%" "Hydro-" U(i,1)];
    elseif V(i,1) == 18
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "80%" "Yes" "CBS-Com" "40%" "Hydro-" U(i,1)];
    elseif V(i,1) == 19
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "70%" "Yes" "CBS-Com" "40%" "Hydro-" U(i,1)];
    elseif V(i,1) == 20
        Pathway_LFP_CO2_Hydro(i,:) = ["CBS2" "100%" "No" "-" "-" "Hydro-" U(i,1)];
    elseif V(i,1) == 21
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "90%" "Yes" "CBS-Rai" "40%" "Hydro-" U(i,1)];
    elseif V(i,1) == 22
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "80%" "Yes" "CBS-Rai" "40%" "Hydro-" U(i,1)];
    elseif V(i,1) == 23
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "70%" "Yes" "CBS-Rai" "40%" "Hydro-" U(i,1)];
    elseif V(i,1) == 24
        Pathway_LFP_CO2_Hydro(i,:) = ["CBS3" "100%" "No" "-" "-" "Hydro-" U(i,1)];
    elseif V(i,1) == 25
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "90%" "Yes" "CBS-Urb" "40%" "Hydro-" U(i,1)];
    elseif V(i,1) == 26
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "80%" "Yes" "CBS-Urb" "40%" "Hydro-" U(i,1)];
    elseif V(i,1) == 27
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "70%" "Yes" "CBS-Urb" "40%" "Hydro-" U(i,1)];
    elseif V(i,1) == 28
        Pathway_LFP_CO2_Hydro(i,:) = ["CBS4" "100%" "No" "-" "-" "Hydro-" U(i,1)];
    elseif V(i,1) == 29
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "90%" "Yes" "CBS-Rur" "40%" "Hydro-" U(i,1)];
    elseif V(i,1) == 30
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "80%" "Yes" "CBS-Rur" "40%" "Hydro-" U(i,1)];
    elseif V(i,1) == 31
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "70%" "Yes" "CBS-Rur" "40%" "Hydro-" U(i,1)];
    elseif V(i,1) == 32
        Pathway_LFP_CO2_Hydro(i,:) = ["LSV" "100%" "No" "-" "-" "Hydro-" U(i,1)];
    elseif V(i,1) == 33
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "90%" "Yes" "LSV-Sig" "40%" "Hydro-" U(i,1)];
    elseif V(i,1) == 34
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "80%" "Yes" "LSV-Sig" "40%" "Hydro-" U(i,1)];
    elseif V(i,1) == 35
        Pathway_LFP_CO2_Hydro(i,:) = ["EV" "70%" "Yes" "LSV-Sig" "40%" "Hydro-" U(i,1)];
    end
end
%%%%%%%%% Pyro- recycling
[W,X] = sort(LFP_CO2_Pyro_ele_cummu(:,5));
Pathway_LFP_CO2_Pyro = strings(35,7);
for i=1:35
    if X(i,1) == 1
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "90%" "No" "-" "-" "Pyro-" W(i,1)];
    elseif X(i,1) == 2
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "80%" "No" "-" "-" "Pyro-" W(i,1)];
    elseif X(i,1) == 3
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "70%" "No" "-" "-" "Pyro-" W(i,1)];
    elseif X(i,1) == 4
        Pathway_LFP_CO2_Pyro(i,:) = ["ESS1" "100%" "No" "-" "-" "Pyro-" W(i,1)];
    elseif X(i,1) == 5
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "90%" "Yes" "ESS-Gov" "40%" "Pyro-" W(i,1)];
    elseif X(i,1) == 6
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "80%" "Yes" "ESS-Gov" "40%" "Pyro-" W(i,1)];
    elseif X(i,1) == 7
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "70%" "Yes" "ESS-Gov" "40%" "Pyro-" W(i,1)];
    elseif X(i,1) == 8
        Pathway_LFP_CO2_Pyro(i,:) = ["ESS2" "100%" "No" "-" "-" "Pyro-" W(i,1)];
    elseif X(i,1) == 9
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "90%" "Yes" "ESS-Lig" "40%" "Pyro-" W(i,1)];
    elseif X(i,1) == 10
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "80%" "Yes" "ESS-Lig" "40%" "Pyro-" W(i,1)];
    elseif X(i,1) == 11
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "70%" "Yes" "ESS-Lig" "40%" "Pyro-" W(i,1)];
    elseif X(i,1) == 12
        Pathway_LFP_CO2_Pyro(i,:) = ["ESS3" "100%" "No" "-" "-" "Pyro-" W(i,1)];
    elseif X(i,1) == 13
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "90%" "Yes" "ESS-Com" "40%" "Pyro-" W(i,1)];
    elseif X(i,1) == 14
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "80%" "Yes" "ESS-Com" "40%" "Pyro-" W(i,1)];
    elseif X(i,1) == 15
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "70%" "Yes" "ESS-Com" "40%" "Pyro-" W(i,1)];
    elseif X(i,1) == 16
        Pathway_LFP_CO2_Pyro(i,:) = ["CBS1" "100%" "No" "-" "-" "Pyro-" W(i,1)];
    elseif X(i,1) == 17
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "90%" "Yes" "CBS-Com" "40%" "Pyro-" W(i,1)];
    elseif X(i,1) == 18
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "80%" "Yes" "CBS-Com" "40%" "Pyro-" W(i,1)];
    elseif X(i,1) == 19
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "70%" "Yes" "CBS-Com" "40%" "Pyro-" W(i,1)];
    elseif X(i,1) == 20
        Pathway_LFP_CO2_Pyro(i,:) = ["CBS2" "100%" "No" "-" "-" "Pyro-" W(i,1)];
    elseif X(i,1) == 21
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "90%" "Yes" "CBS-Rai" "40%" "Pyro-" W(i,1)];
    elseif X(i,1) == 22
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "80%" "Yes" "CBS-Rai" "40%" "Pyro-" W(i,1)];
    elseif X(i,1) == 23
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "70%" "Yes" "CBS-Rai" "40%" "Pyro-" W(i,1)];
    elseif X(i,1) == 24
        Pathway_LFP_CO2_Pyro(i,:) = ["CBS3" "100%" "No" "-" "-" "Pyro-" W(i,1)];
    elseif X(i,1) == 25
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "90%" "Yes" "CBS-Urb" "40%" "Pyro-" W(i,1)];
    elseif X(i,1) == 26
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "80%" "Yes" "CBS-Urb" "40%" "Pyro-" W(i,1)];
    elseif X(i,1) == 27
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "70%" "Yes" "CBS-Urb" "40%" "Pyro-" W(i,1)];
    elseif X(i,1) == 28
        Pathway_LFP_CO2_Pyro(i,:) = ["CBS4" "100%" "No" "-" "-" "Pyro-" W(i,1)];
    elseif X(i,1) == 29
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "90%" "Yes" "CBS-Rur" "40%" "Pyro-" W(i,1)];
    elseif X(i,1) == 30
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "80%" "Yes" "CBS-Rur" "40%" "Pyro-" W(i,1)];
    elseif X(i,1) == 31
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "70%" "Yes" "CBS-Rur" "40%" "Pyro-" W(i,1)];
    elseif X(i,1) == 32
        Pathway_LFP_CO2_Pyro(i,:) = ["LSV" "100%" "No" "-" "-" "Pyro-" W(i,1)];
    elseif X(i,1) == 33
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "90%" "Yes" "LSV-Sig" "40%" "Pyro-" W(i,1)];
    elseif X(i,1) == 34
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "80%" "Yes" "LSV-Sig" "40%" "Pyro-" W(i,1)];
    elseif X(i,1) == 35
        Pathway_LFP_CO2_Pyro(i,:) = ["EV" "70%" "Yes" "LSV-Sig" "40%" "Pyro-" W(i,1)];
    end
end
Pathway_LFP_CO2 = [Pathway_LFP_CO2_Direct;Pathway_LFP_CO2_Hydro;Pathway_LFP_CO2_Pyro];
