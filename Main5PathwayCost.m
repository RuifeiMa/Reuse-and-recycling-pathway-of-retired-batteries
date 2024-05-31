%%%%%%%%%% Pathway - Cost %%%%%%%%%%%%

%%%%%%%%%% NMC pathway - Cost %%%%%%%%%%%%
%%%%%%%%%% direct recycling %%%%%%%%%%%%
NMC_Cost_Direct = [NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),0,0,NMC_Cost_Direct_kWh_EV(1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),0,0,NMC_Cost_Direct_kWh_EV(2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),0,0,NMC_Cost_Direct_kWh_EV(3);
    NMC_Cost_Manu_kWh_ESS1(6,1),NMC_Cost_Use_kWh_ESS1(6,1),0,0,NMC_Cost_Direct_kWh_ESS1(6,1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),NMC_Cost_Manu_kWh_ESS1(6,2),NMC_Cost_Use_kWh_ESS1(6,2),NMC_Cost_Direct_kWh_ESS1(6,2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),NMC_Cost_Manu_kWh_ESS1(6,3),NMC_Cost_Use_kWh_ESS1(6,3),NMC_Cost_Direct_kWh_ESS1(6,3);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),NMC_Cost_Manu_kWh_ESS1(6,4),NMC_Cost_Use_kWh_ESS1(6,4),NMC_Cost_Direct_kWh_ESS1(6,4);
    NMC_Cost_Manu_kWh_ESS2(6,1),NMC_Cost_Use_kWh_ESS2(6,1),0,0,NMC_Cost_Direct_kWh_ESS2(6,1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),NMC_Cost_Manu_kWh_ESS2(6,2),NMC_Cost_Use_kWh_ESS2(6,2),NMC_Cost_Direct_kWh_ESS2(6,2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),NMC_Cost_Manu_kWh_ESS2(6,3),NMC_Cost_Use_kWh_ESS2(6,3),NMC_Cost_Direct_kWh_ESS2(6,3);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),NMC_Cost_Manu_kWh_ESS2(6,4),NMC_Cost_Use_kWh_ESS2(6,4),NMC_Cost_Direct_kWh_ESS2(6,4);
    NMC_Cost_Manu_kWh_ESS3(6,1),NMC_Cost_Use_kWh_ESS3(6,1),0,0,NMC_Cost_Direct_kWh_ESS3(6,1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),NMC_Cost_Manu_kWh_ESS3(6,2),NMC_Cost_Use_kWh_ESS3(6,2),NMC_Cost_Direct_kWh_ESS3(6,2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),NMC_Cost_Manu_kWh_ESS3(6,3),NMC_Cost_Use_kWh_ESS3(6,3),NMC_Cost_Direct_kWh_ESS3(6,3);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),NMC_Cost_Manu_kWh_ESS3(6,4),NMC_Cost_Use_kWh_ESS3(6,4),NMC_Cost_Direct_kWh_ESS3(6,4);
    NMC_Cost_Manu_kWh_CBS1(6,1),NMC_Cost_Use_kWh_CBS1(6,1),0,0,NMC_Cost_Direct_kWh_CBS1(6,1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),NMC_Cost_Manu_kWh_CBS1(6,2),NMC_Cost_Use_kWh_CBS1(6,2),NMC_Cost_Direct_kWh_CBS1(6,2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),NMC_Cost_Manu_kWh_CBS1(6,3),NMC_Cost_Use_kWh_CBS1(6,3),NMC_Cost_Direct_kWh_CBS1(6,3);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),NMC_Cost_Manu_kWh_CBS1(6,4),NMC_Cost_Use_kWh_CBS1(6,4),NMC_Cost_Direct_kWh_CBS1(6,4);
    NMC_Cost_Manu_kWh_CBS2(6,1),NMC_Cost_Use_kWh_CBS2(6,1),0,0,NMC_Cost_Direct_kWh_CBS2(6,1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),NMC_Cost_Manu_kWh_CBS2(6,2),NMC_Cost_Use_kWh_CBS2(6,2),NMC_Cost_Direct_kWh_CBS2(6,2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),NMC_Cost_Manu_kWh_CBS2(6,3),NMC_Cost_Use_kWh_CBS2(6,3),NMC_Cost_Direct_kWh_CBS2(6,3);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),NMC_Cost_Manu_kWh_CBS2(6,4),NMC_Cost_Use_kWh_CBS2(6,4),NMC_Cost_Direct_kWh_CBS2(6,4);
    NMC_Cost_Manu_kWh_CBS3(6,1),NMC_Cost_Use_kWh_CBS3(6,1),0,0,NMC_Cost_Direct_kWh_CBS3(6,1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),NMC_Cost_Manu_kWh_CBS3(6,2),NMC_Cost_Use_kWh_CBS3(6,2),NMC_Cost_Direct_kWh_CBS3(6,2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),NMC_Cost_Manu_kWh_CBS3(6,3),NMC_Cost_Use_kWh_CBS3(6,3),NMC_Cost_Direct_kWh_CBS3(6,3);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),NMC_Cost_Manu_kWh_CBS3(6,4),NMC_Cost_Use_kWh_CBS3(6,4),NMC_Cost_Direct_kWh_CBS3(6,4);
    NMC_Cost_Manu_kWh_CBS4(6,1),NMC_Cost_Use_kWh_CBS4(6,1),0,0,NMC_Cost_Direct_kWh_CBS4(6,1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),NMC_Cost_Manu_kWh_CBS4(6,2),NMC_Cost_Use_kWh_CBS4(6,2),NMC_Cost_Direct_kWh_CBS4(6,2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),NMC_Cost_Manu_kWh_CBS4(6,3),NMC_Cost_Use_kWh_CBS4(6,3),NMC_Cost_Direct_kWh_CBS4(6,3);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),NMC_Cost_Manu_kWh_CBS4(6,4),NMC_Cost_Use_kWh_CBS4(6,4),NMC_Cost_Direct_kWh_CBS4(6,4);
    NMC_Cost_Manu_kWh_LSV(6,1),NMC_Cost_Use_kWh_LSV(6,1),0,0,NMC_Cost_Direct_kWh_LSV(6,1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),NMC_Cost_Manu_kWh_LSV(6,2),NMC_Cost_Use_kWh_LSV(6,2),NMC_Cost_Direct_kWh_LSV(6,2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),NMC_Cost_Manu_kWh_LSV(6,3),NMC_Cost_Use_kWh_LSV(6,3),NMC_Cost_Direct_kWh_LSV(6,3);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),NMC_Cost_Manu_kWh_LSV(6,4),NMC_Cost_Use_kWh_LSV(6,4),NMC_Cost_Direct_kWh_LSV(6,4);];
NMC_Cost_Direct_cummu = [NMC_Cost_Direct(:,1),NMC_Cost_Direct(:,1)+NMC_Cost_Direct(:,2),NMC_Cost_Direct(:,1)+NMC_Cost_Direct(:,2)+NMC_Cost_Direct(:,3),...
    NMC_Cost_Direct(:,1)+NMC_Cost_Direct(:,2)+NMC_Cost_Direct(:,3)+NMC_Cost_Direct(:,4),NMC_Cost_Direct(:,1)+NMC_Cost_Direct(:,2)+NMC_Cost_Direct(:,3)+NMC_Cost_Direct(:,4)+NMC_Cost_Direct(:,5)];
%%%%%%%%% hydro- recycling %%%%%%%%%%%%
NMC_Cost_Hydro = [NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),0,0,NMC_Cost_Hydro_kWh_EV(1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),0,0,NMC_Cost_Hydro_kWh_EV(2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),0,0,NMC_Cost_Hydro_kWh_EV(3);
    NMC_Cost_Manu_kWh_ESS1(6,1),NMC_Cost_Use_kWh_ESS1(6,1),0,0,NMC_Cost_Hydro_kWh_ESS1(6,1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),NMC_Cost_Manu_kWh_ESS1(6,2),NMC_Cost_Use_kWh_ESS1(6,2),NMC_Cost_Hydro_kWh_ESS1(6,2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),NMC_Cost_Manu_kWh_ESS1(6,3),NMC_Cost_Use_kWh_ESS1(6,3),NMC_Cost_Hydro_kWh_ESS1(6,3);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),NMC_Cost_Manu_kWh_ESS1(6,4),NMC_Cost_Use_kWh_ESS1(6,4),NMC_Cost_Hydro_kWh_ESS1(6,4);
    NMC_Cost_Manu_kWh_ESS2(6,1),NMC_Cost_Use_kWh_ESS2(6,1),0,0,NMC_Cost_Hydro_kWh_ESS2(6,1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),NMC_Cost_Manu_kWh_ESS2(6,2),NMC_Cost_Use_kWh_ESS2(6,2),NMC_Cost_Hydro_kWh_ESS2(6,2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),NMC_Cost_Manu_kWh_ESS2(6,3),NMC_Cost_Use_kWh_ESS2(6,3),NMC_Cost_Hydro_kWh_ESS2(6,3);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),NMC_Cost_Manu_kWh_ESS2(6,4),NMC_Cost_Use_kWh_ESS2(6,4),NMC_Cost_Hydro_kWh_ESS2(6,4);
    NMC_Cost_Manu_kWh_ESS3(6,1),NMC_Cost_Use_kWh_ESS3(6,1),0,0,NMC_Cost_Hydro_kWh_ESS3(6,1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),NMC_Cost_Manu_kWh_ESS3(6,2),NMC_Cost_Use_kWh_ESS3(6,2),NMC_Cost_Hydro_kWh_ESS3(6,2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),NMC_Cost_Manu_kWh_ESS3(6,3),NMC_Cost_Use_kWh_ESS3(6,3),NMC_Cost_Hydro_kWh_ESS3(6,3);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),NMC_Cost_Manu_kWh_ESS3(6,4),NMC_Cost_Use_kWh_ESS3(6,4),NMC_Cost_Hydro_kWh_ESS3(6,4);
    NMC_Cost_Manu_kWh_CBS1(6,1),NMC_Cost_Use_kWh_CBS1(6,1),0,0,NMC_Cost_Hydro_kWh_CBS1(6,1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),NMC_Cost_Manu_kWh_CBS1(6,2),NMC_Cost_Use_kWh_CBS1(6,2),NMC_Cost_Hydro_kWh_CBS1(6,2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),NMC_Cost_Manu_kWh_CBS1(6,3),NMC_Cost_Use_kWh_CBS1(6,3),NMC_Cost_Hydro_kWh_CBS1(6,3);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),NMC_Cost_Manu_kWh_CBS1(6,4),NMC_Cost_Use_kWh_CBS1(6,4),NMC_Cost_Hydro_kWh_CBS1(6,4);
    NMC_Cost_Manu_kWh_CBS2(6,1),NMC_Cost_Use_kWh_CBS2(6,1),0,0,NMC_Cost_Hydro_kWh_CBS2(6,1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),NMC_Cost_Manu_kWh_CBS2(6,2),NMC_Cost_Use_kWh_CBS2(6,2),NMC_Cost_Hydro_kWh_CBS2(6,2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),NMC_Cost_Manu_kWh_CBS2(6,3),NMC_Cost_Use_kWh_CBS2(6,3),NMC_Cost_Hydro_kWh_CBS2(6,3);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),NMC_Cost_Manu_kWh_CBS2(6,4),NMC_Cost_Use_kWh_CBS2(6,4),NMC_Cost_Hydro_kWh_CBS2(6,4);
    NMC_Cost_Manu_kWh_CBS3(6,1),NMC_Cost_Use_kWh_CBS3(6,1),0,0,NMC_Cost_Hydro_kWh_CBS3(6,1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),NMC_Cost_Manu_kWh_CBS3(6,2),NMC_Cost_Use_kWh_CBS3(6,2),NMC_Cost_Hydro_kWh_CBS3(6,2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),NMC_Cost_Manu_kWh_CBS3(6,3),NMC_Cost_Use_kWh_CBS3(6,3),NMC_Cost_Hydro_kWh_CBS3(6,3);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),NMC_Cost_Manu_kWh_CBS3(6,4),NMC_Cost_Use_kWh_CBS3(6,4),NMC_Cost_Hydro_kWh_CBS3(6,4);
    NMC_Cost_Manu_kWh_CBS4(6,1),NMC_Cost_Use_kWh_CBS4(6,1),0,0,NMC_Cost_Hydro_kWh_CBS4(6,1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),NMC_Cost_Manu_kWh_CBS4(6,2),NMC_Cost_Use_kWh_CBS4(6,2),NMC_Cost_Hydro_kWh_CBS4(6,2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),NMC_Cost_Manu_kWh_CBS4(6,3),NMC_Cost_Use_kWh_CBS4(6,3),NMC_Cost_Hydro_kWh_CBS4(6,3);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),NMC_Cost_Manu_kWh_CBS4(6,4),NMC_Cost_Use_kWh_CBS4(6,4),NMC_Cost_Hydro_kWh_CBS4(6,4);
    NMC_Cost_Manu_kWh_LSV(6,1),NMC_Cost_Use_kWh_LSV(6,1),0,0,NMC_Cost_Hydro_kWh_LSV(6,1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),NMC_Cost_Manu_kWh_LSV(6,2),NMC_Cost_Use_kWh_LSV(6,2),NMC_Cost_Hydro_kWh_LSV(6,2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),NMC_Cost_Manu_kWh_LSV(6,3),NMC_Cost_Use_kWh_LSV(6,3),NMC_Cost_Hydro_kWh_LSV(6,3);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),NMC_Cost_Manu_kWh_LSV(6,4),NMC_Cost_Use_kWh_LSV(6,4),NMC_Cost_Hydro_kWh_LSV(6,4);];
NMC_Cost_Hydro_cummu = [NMC_Cost_Hydro(:,1),NMC_Cost_Hydro(:,1)+NMC_Cost_Hydro(:,2),NMC_Cost_Hydro(:,1)+NMC_Cost_Hydro(:,2)+NMC_Cost_Hydro(:,3),...
    NMC_Cost_Hydro(:,1)+NMC_Cost_Hydro(:,2)+NMC_Cost_Hydro(:,3)+NMC_Cost_Hydro(:,4),NMC_Cost_Hydro(:,1)+NMC_Cost_Hydro(:,2)+NMC_Cost_Hydro(:,3)+NMC_Cost_Hydro(:,4)+NMC_Cost_Hydro(:,5)];
%%%%%%%% pyro- recycling %%%%%%%%%%%%
NMC_Cost_Pyro = [NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),0,0,NMC_Cost_Pyro_kWh_EV(1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),0,0,NMC_Cost_Pyro_kWh_EV(2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),0,0,NMC_Cost_Pyro_kWh_EV(3);
    NMC_Cost_Manu_kWh_ESS1(6,1),NMC_Cost_Use_kWh_ESS1(6,1),0,0,NMC_Cost_Pyro_kWh_ESS1(6,1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),NMC_Cost_Manu_kWh_ESS1(6,2),NMC_Cost_Use_kWh_ESS1(6,2),NMC_Cost_Pyro_kWh_ESS1(6,2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),NMC_Cost_Manu_kWh_ESS1(6,3),NMC_Cost_Use_kWh_ESS1(6,3),NMC_Cost_Pyro_kWh_ESS1(6,3);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),NMC_Cost_Manu_kWh_ESS1(6,4),NMC_Cost_Use_kWh_ESS1(6,4),NMC_Cost_Pyro_kWh_ESS1(6,4);
    NMC_Cost_Manu_kWh_ESS2(6,1),NMC_Cost_Use_kWh_ESS2(6,1),0,0,NMC_Cost_Pyro_kWh_ESS2(6,1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),NMC_Cost_Manu_kWh_ESS2(6,2),NMC_Cost_Use_kWh_ESS2(6,2),NMC_Cost_Pyro_kWh_ESS2(6,2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),NMC_Cost_Manu_kWh_ESS2(6,3),NMC_Cost_Use_kWh_ESS2(6,3),NMC_Cost_Pyro_kWh_ESS2(6,3);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),NMC_Cost_Manu_kWh_ESS2(6,4),NMC_Cost_Use_kWh_ESS2(6,4),NMC_Cost_Pyro_kWh_ESS2(6,4);
    NMC_Cost_Manu_kWh_ESS3(6,1),NMC_Cost_Use_kWh_ESS3(6,1),0,0,NMC_Cost_Pyro_kWh_ESS3(6,1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),NMC_Cost_Manu_kWh_ESS3(6,2),NMC_Cost_Use_kWh_ESS3(6,2),NMC_Cost_Pyro_kWh_ESS3(6,2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),NMC_Cost_Manu_kWh_ESS3(6,3),NMC_Cost_Use_kWh_ESS3(6,3),NMC_Cost_Pyro_kWh_ESS3(6,3);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),NMC_Cost_Manu_kWh_ESS3(6,4),NMC_Cost_Use_kWh_ESS3(6,4),NMC_Cost_Pyro_kWh_ESS3(6,4);
    NMC_Cost_Manu_kWh_CBS1(6,1),NMC_Cost_Use_kWh_CBS1(6,1),0,0,NMC_Cost_Pyro_kWh_CBS1(6,1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),NMC_Cost_Manu_kWh_CBS1(6,2),NMC_Cost_Use_kWh_CBS1(6,2),NMC_Cost_Pyro_kWh_CBS1(6,2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),NMC_Cost_Manu_kWh_CBS1(6,3),NMC_Cost_Use_kWh_CBS1(6,3),NMC_Cost_Pyro_kWh_CBS1(6,3);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),NMC_Cost_Manu_kWh_CBS1(6,4),NMC_Cost_Use_kWh_CBS1(6,4),NMC_Cost_Pyro_kWh_CBS1(6,4);
    NMC_Cost_Manu_kWh_CBS2(6,1),NMC_Cost_Use_kWh_CBS2(6,1),0,0,NMC_Cost_Pyro_kWh_CBS2(6,1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),NMC_Cost_Manu_kWh_CBS2(6,2),NMC_Cost_Use_kWh_CBS2(6,2),NMC_Cost_Pyro_kWh_CBS2(6,2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),NMC_Cost_Manu_kWh_CBS2(6,3),NMC_Cost_Use_kWh_CBS2(6,3),NMC_Cost_Pyro_kWh_CBS2(6,3);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),NMC_Cost_Manu_kWh_CBS2(6,4),NMC_Cost_Use_kWh_CBS2(6,4),NMC_Cost_Pyro_kWh_CBS2(6,4);
    NMC_Cost_Manu_kWh_CBS3(6,1),NMC_Cost_Use_kWh_CBS3(6,1),0,0,NMC_Cost_Pyro_kWh_CBS3(6,1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),NMC_Cost_Manu_kWh_CBS3(6,2),NMC_Cost_Use_kWh_CBS3(6,2),NMC_Cost_Pyro_kWh_CBS3(6,2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),NMC_Cost_Manu_kWh_CBS3(6,3),NMC_Cost_Use_kWh_CBS3(6,3),NMC_Cost_Pyro_kWh_CBS3(6,3);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),NMC_Cost_Manu_kWh_CBS3(6,4),NMC_Cost_Use_kWh_CBS3(6,4),NMC_Cost_Pyro_kWh_CBS3(6,4);
    NMC_Cost_Manu_kWh_CBS4(6,1),NMC_Cost_Use_kWh_CBS4(6,1),0,0,NMC_Cost_Pyro_kWh_CBS4(6,1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),NMC_Cost_Manu_kWh_CBS4(6,2),NMC_Cost_Use_kWh_CBS4(6,2),NMC_Cost_Pyro_kWh_CBS4(6,2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),NMC_Cost_Manu_kWh_CBS4(6,3),NMC_Cost_Use_kWh_CBS4(6,3),NMC_Cost_Pyro_kWh_CBS4(6,3);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),NMC_Cost_Manu_kWh_CBS4(6,4),NMC_Cost_Use_kWh_CBS4(6,4),NMC_Cost_Pyro_kWh_CBS4(6,4);
    NMC_Cost_Manu_kWh_LSV(6,1),NMC_Cost_Use_kWh_LSV(6,1),0,0,NMC_Cost_Pyro_kWh_LSV(6,1);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(1),NMC_Cost_Manu_kWh_LSV(6,2),NMC_Cost_Use_kWh_LSV(6,2),NMC_Cost_Pyro_kWh_LSV(6,2);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(2),NMC_Cost_Manu_kWh_LSV(6,3),NMC_Cost_Use_kWh_LSV(6,3),NMC_Cost_Pyro_kWh_LSV(6,3);
    NMC_Cost_Manu_kWh_EV,NMC_Cost_Use_kWh_EV(3),NMC_Cost_Manu_kWh_LSV(6,4),NMC_Cost_Use_kWh_LSV(6,4),NMC_Cost_Pyro_kWh_LSV(6,4);];
NMC_Cost_Pyro_cummu = [NMC_Cost_Pyro(:,1),NMC_Cost_Pyro(:,1)+NMC_Cost_Pyro(:,2),NMC_Cost_Pyro(:,1)+NMC_Cost_Pyro(:,2)+NMC_Cost_Pyro(:,3),...
    NMC_Cost_Pyro(:,1)+NMC_Cost_Pyro(:,2)+NMC_Cost_Pyro(:,3)+NMC_Cost_Pyro(:,4),NMC_Cost_Pyro(:,1)+NMC_Cost_Pyro(:,2)+NMC_Cost_Pyro(:,3)+NMC_Cost_Pyro(:,4)+NMC_Cost_Pyro(:,5)];

%%%%%%%% NMC battery roadmap priority sorting, from best to worst
%%%%%%%% direct recycling
[A,B] = sort(NMC_Cost_Direct_cummu(:,5));
Pathway_NMC_Cost_Direct = strings(35,7);
for i=1:35
    if B(i,1) == 1
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "90%" "No" "-" "-" "Direct" A(i,1)];
    elseif B(i,1) == 2
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "80%" "No" "-" "-" "Direct" A(i,1)];
    elseif B(i,1) == 3
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "70%" "No" "-" "-" "Direct" A(i,1)];
    elseif B(i,1) == 4
        Pathway_NMC_Cost_Direct(i,:) = ["ESS1" "100%" "No" "-" "-" "Direct" A(i,1)];
    elseif B(i,1) == 5
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "90%" "Yes" "ESS1" "40%" "Direct" A(i,1)];
    elseif B(i,1) == 6
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "80%" "Yes" "ESS1" "40%" "Direct" A(i,1)];
    elseif B(i,1) == 7
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "70%" "Yes" "ESS1" "40%" "Direct" A(i,1)];
    elseif B(i,1) == 8
        Pathway_NMC_Cost_Direct(i,:) = ["ESS2" "100%" "No" "-" "-" "Direct" A(i,1)];
    elseif B(i,1) == 9
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "90%" "Yes" "ESS2" "40%" "Direct" A(i,1)];
    elseif B(i,1) == 10
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "80%" "Yes" "ESS2" "40%" "Direct" A(i,1)];
    elseif B(i,1) == 11
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "70%" "Yes" "ESS2" "40%" "Direct" A(i,1)];
    elseif B(i,1) == 12
        Pathway_NMC_Cost_Direct(i,:) = ["ESS3" "100%" "No" "-" "-" "Direct" A(i,1)];
    elseif B(i,1) == 13
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "90%" "Yes" "ESS3" "40%" "Direct" A(i,1)];
    elseif B(i,1) == 14
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "80%" "Yes" "ESS3" "40%" "Direct" A(i,1)];
    elseif B(i,1) == 15
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "70%" "Yes" "ESS3" "40%" "Direct" A(i,1)];
    elseif B(i,1) == 16
        Pathway_NMC_Cost_Direct(i,:) = ["CBS1" "100%" "No" "-" "-" "Direct" A(i,1)];
    elseif B(i,1) == 17
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "90%" "Yes" "CBS1" "40%" "Direct" A(i,1)];
    elseif B(i,1) == 18
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "80%" "Yes" "CBS1" "40%" "Direct" A(i,1)];
    elseif B(i,1) == 19
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "70%" "Yes" "CBS1" "40%" "Direct" A(i,1)];
    elseif B(i,1) == 20
        Pathway_NMC_Cost_Direct(i,:) = ["CBS2" "100%" "No" "-" "-" "Direct" A(i,1)];
    elseif B(i,1) == 21
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "90%" "Yes" "CBS2" "40%" "Direct" A(i,1)];
    elseif B(i,1) == 22
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "80%" "Yes" "CBS2" "40%" "Direct" A(i,1)];
    elseif B(i,1) == 23
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "70%" "Yes" "CBS2" "40%" "Direct" A(i,1)];
    elseif B(i,1) == 24
        Pathway_NMC_Cost_Direct(i,:) = ["CBS3" "100%" "No" "-" "-" "Direct" A(i,1)];
    elseif B(i,1) == 25
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "90%" "Yes" "CBS3" "40%" "Direct" A(i,1)];
    elseif B(i,1) == 26
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "80%" "Yes" "CBS3" "40%" "Direct" A(i,1)];
    elseif B(i,1) == 27
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "70%" "Yes" "CBS3" "40%" "Direct" A(i,1)];
    elseif B(i,1) == 28
        Pathway_NMC_Cost_Direct(i,:) = ["CBS4" "100%" "No" "-" "-" "Direct" A(i,1)];
    elseif B(i,1) == 29
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "90%" "Yes" "CBS4" "40%" "Direct" A(i,1)];
    elseif B(i,1) == 30
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "80%" "Yes" "CBS4" "40%" "Direct" A(i,1)];
    elseif B(i,1) == 31
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "70%" "Yes" "CBS4" "40%" "Direct" A(i,1)];
    elseif B(i,1) == 32
        Pathway_NMC_Cost_Direct(i,:) = ["LSV" "100%" "No" "-" "-" "Direct" A(i,1)];
    elseif B(i,1) == 33
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "90%" "Yes" "LSV" "40%" "Direct" A(i,1)];
    elseif B(i,1) == 34
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "80%" "Yes" "LSV" "40%" "Direct" A(i,1)];
    elseif B(i,1) == 35
        Pathway_NMC_Cost_Direct(i,:) = ["EV" "70%" "Yes" "LSV" "40%" "Direct" A(i,1)];
    end
end

%%%%%%%% Hydro-recycling
[C,D]= sort(NMC_Cost_Hydro_cummu(:,5));
Pathway_NMC_Cost_Hydro = strings(35,7);
for i=1:35
    if D(i,1) == 1
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "90%" "No" "-" "-" "Hydro-" C(i,1)];
    elseif D(i,1) == 2
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "80%" "No" "-" "-" "Hydro-" C(i,1)];
    elseif D(i,1) == 3
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "70%" "No" "-" "-" "Hydro-" C(i,1)];
    elseif D(i,1) == 4
        Pathway_NMC_Cost_Hydro(i,:) = ["ESS1" "100%" "No" "-" "-" "Hydro-" C(i,1)];
    elseif D(i,1) == 5
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "90%" "Yes" "ESS1" "40%" "Hydro-" C(i,1)];
    elseif D(i,1) == 6
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "80%" "Yes" "ESS1" "40%" "Hydro-" C(i,1)];
    elseif D(i,1) == 7
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "70%" "Yes" "ESS1" "40%" "Hydro-" C(i,1)];
    elseif D(i,1) == 8
        Pathway_NMC_Cost_Hydro(i,:) = ["ESS2" "100%" "No" "-" "-" "Hydro-" C(i,1)];
    elseif D(i,1) == 9
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "90%" "Yes" "ESS2" "40%" "Hydro-" C(i,1)];
    elseif D(i,1) == 10
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "80%" "Yes" "ESS2" "40%" "Hydro-" C(i,1)];
    elseif D(i,1) == 11
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "70%" "Yes" "ESS2" "40%" "Hydro-" C(i,1)];
    elseif D(i,1) == 12
        Pathway_NMC_Cost_Hydro(i,:) = ["ESS3" "100%" "No" "-" "-" "Hydro-" C(i,1)];
    elseif D(i,1) == 13
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "90%" "Yes" "ESS3" "40%" "Hydro-" C(i,1)];
    elseif D(i,1) == 14
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "80%" "Yes" "ESS3" "40%" "Hydro-" C(i,1)];
    elseif D(i,1) == 15
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "70%" "Yes" "ESS3" "40%" "Hydro-" C(i,1)];
    elseif D(i,1) == 16
        Pathway_NMC_Cost_Hydro(i,:) = ["CBS1" "100%" "No" "-" "-" "Hydro-" C(i,1)];
    elseif D(i,1) == 17
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "90%" "Yes" "CBS1" "40%" "Hydro-" C(i,1)];
    elseif D(i,1) == 18
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "80%" "Yes" "CBS1" "40%" "Hydro-" C(i,1)];
    elseif D(i,1) == 19
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "70%" "Yes" "CBS1" "40%" "Hydro-" C(i,1)];
    elseif D(i,1) == 20
        Pathway_NMC_Cost_Hydro(i,:) = ["CBS2" "100%" "No" "-" "-" "Hydro-" C(i,1)];
    elseif D(i,1) == 21
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "90%" "Yes" "CBS2" "40%" "Hydro-" C(i,1)];
    elseif D(i,1) == 22
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "80%" "Yes" "CBS2" "40%" "Hydro-" C(i,1)];
    elseif D(i,1) == 23
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "70%" "Yes" "CBS2" "40%" "Hydro-" C(i,1)];
    elseif D(i,1) == 24
        Pathway_NMC_Cost_Hydro(i,:) = ["CBS3" "100%" "No" "-" "-" "Hydro-" C(i,1)];
    elseif D(i,1) == 25
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "90%" "Yes" "CBS3" "40%" "Hydro-" C(i,1)];
    elseif D(i,1) == 26
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "80%" "Yes" "CBS3" "40%" "Hydro-" C(i,1)];
    elseif D(i,1) == 27
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "70%" "Yes" "CBS3" "40%" "Hydro-" C(i,1)];
    elseif D(i,1) == 28
        Pathway_NMC_Cost_Hydro(i,:) = ["CBS4" "100%" "No" "-" "-" "Hydro-" C(i,1)];
    elseif D(i,1) == 29
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "90%" "Yes" "CBS4" "40%" "Hydro-" C(i,1)];
    elseif D(i,1) == 30
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "80%" "Yes" "CBS4" "40%" "Hydro-" C(i,1)];
    elseif D(i,1) == 31
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "70%" "Yes" "CBS4" "40%" "Hydro-" C(i,1)];
    elseif D(i,1) == 32
        Pathway_NMC_Cost_Hydro(i,:) = ["LSV" "100%" "No" "-" "-" "Hydro-" C(i,1)];
    elseif D(i,1) == 33
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "90%" "Yes" "LSV" "40%" "Hydro-" C(i,1)];
    elseif D(i,1) == 34
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "80%" "Yes" "LSV" "40%" "Hydro-" C(i,1)];
    elseif D(i,1) == 35
        Pathway_NMC_Cost_Hydro(i,:) = ["EV" "70%" "Yes" "LSV" "40%" "Hydro-" C(i,1)];
    end
end
%%%%%%%%% Pyro-recycling 
[E,F]= sort(NMC_Cost_Pyro_cummu(:,5));
Pathway_NMC_Cost_Pyro = strings(35,7);
for i=1:35
    if F(i,1) == 1
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "90%" "No" "-" "-" "Pyro-" E(i,1)];
    elseif F(i,1) == 2
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "80%" "No" "-" "-" "Pyro-" E(i,1)];
    elseif F(i,1) == 3
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "70%" "No" "-" "-" "Pyro-" E(i,1)];
    elseif F(i,1) == 4
        Pathway_NMC_Cost_Pyro(i,:) = ["ESS1" "100%" "No" "-" "-" "Pyro-" E(i,1)];
    elseif F(i,1) == 5
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "90%" "Yes" "ESS1" "40%" "Pyro-" E(i,1)];
    elseif F(i,1) == 6
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "80%" "Yes" "ESS1" "40%" "Pyro-" E(i,1)];
    elseif F(i,1) == 7
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "70%" "Yes" "ESS1" "40%" "Pyro-" E(i,1)];
    elseif F(i,1) == 8
        Pathway_NMC_Cost_Pyro(i,:) = ["ESS2" "100%" "No" "-" "-" "Pyro-" E(i,1)];
    elseif F(i,1) == 9
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "90%" "Yes" "ESS2" "40%" "Pyro-" E(i,1)];
    elseif F(i,1) == 10
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "80%" "Yes" "ESS2" "40%" "Pyro-" E(i,1)];
    elseif F(i,1) == 11
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "70%" "Yes" "ESS2" "40%" "Pyro-" E(i,1)];
    elseif F(i,1) == 12
        Pathway_NMC_Cost_Pyro(i,:) = ["ESS3" "100%" "No" "-" "-" "Pyro-" E(i,1)];
    elseif F(i,1) == 13
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "90%" "Yes" "ESS3" "40%" "Pyro-" E(i,1)];
    elseif F(i,1) == 14
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "80%" "Yes" "ESS3" "40%" "Pyro-" E(i,1)];
    elseif F(i,1) == 15
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "70%" "Yes" "ESS3" "40%" "Pyro-" E(i,1)];
    elseif F(i,1) == 16
        Pathway_NMC_Cost_Pyro(i,:) = ["CBS1" "100%" "No" "-" "-" "Pyro-" E(i,1)];
    elseif F(i,1) == 17
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "90%" "Yes" "CBS1" "40%" "Pyro-" E(i,1)];
    elseif F(i,1) == 18
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "80%" "Yes" "CBS1" "40%" "Pyro-" E(i,1)];
    elseif F(i,1) == 19
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "70%" "Yes" "CBS1" "40%" "Pyro-" E(i,1)];
    elseif F(i,1) == 20
        Pathway_NMC_Cost_Pyro(i,:) = ["CBS2" "100%" "No" "-" "-" "Pyro-" E(i,1)];
    elseif F(i,1) == 21
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "90%" "Yes" "CBS2" "40%" "Pyro-" E(i,1)];
    elseif F(i,1) == 22
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "80%" "Yes" "CBS2" "40%" "Pyro-" E(i,1)];
    elseif F(i,1) == 23
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "70%" "Yes" "CBS2" "40%" "Pyro-" E(i,1)];
    elseif F(i,1) == 24
        Pathway_NMC_Cost_Pyro(i,:) = ["CBS3" "100%" "No" "-" "-" "Pyro-" E(i,1)];
    elseif F(i,1) == 25
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "90%" "Yes" "CBS3" "40%" "Pyro-" E(i,1)];
    elseif F(i,1) == 26
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "80%" "Yes" "CBS3" "40%" "Pyro-" E(i,1)];
    elseif F(i,1) == 27
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "70%" "Yes" "CBS3" "40%" "Pyro-" E(i,1)];
    elseif F(i,1) == 28
        Pathway_NMC_Cost_Pyro(i,:) = ["CBS4" "100%" "No" "-" "-" "Pyro-" E(i,1)];
    elseif F(i,1) == 29
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "90%" "Yes" "CBS4" "40%" "Pyro-" E(i,1)];
    elseif F(i,1) == 30
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "80%" "Yes" "CBS4" "40%" "Pyro-" E(i,1)];
    elseif F(i,1) == 31
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "70%" "Yes" "CBS4" "40%" "Pyro-" E(i,1)];
    elseif F(i,1) == 32
        Pathway_NMC_Cost_Pyro(i,:) = ["LSV" "100%" "No" "-" "-" "Pyro-" E(i,1)];
    elseif F(i,1) == 33
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "90%" "Yes" "LSV" "40%" "Pyro-" E(i,1)];
    elseif F(i,1) == 34
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "80%" "Yes" "LSV" "40%" "Pyro-" E(i,1)];
    elseif F(i,1) == 35
        Pathway_NMC_Cost_Pyro(i,:) = ["EV" "70%" "Yes" "LSV" "40%" "Pyro-" E(i,1)];
    end
end

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


%%%%%%%%%% LFP pathway - Cost %%%%%%%%%%%%
%%%%%%%%%% direct recycling %%%%%%%%%%%%%%%
LFP_Cost_Direct = [LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),0,0,LFP_Cost_Direct_kWh_EV(1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),0,0,LFP_Cost_Direct_kWh_EV(2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),0,0,LFP_Cost_Direct_kWh_EV(3);
    LFP_Cost_Manu_kWh_ESS1(6,1),LFP_Cost_Use_kWh_ESS1(6,1),0,0,LFP_Cost_Direct_kWh_ESS1(6,1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),LFP_Cost_Manu_kWh_ESS1(6,2),LFP_Cost_Use_kWh_ESS1(6,2),LFP_Cost_Direct_kWh_ESS1(6,2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),LFP_Cost_Manu_kWh_ESS1(6,3),LFP_Cost_Use_kWh_ESS1(6,3),LFP_Cost_Direct_kWh_ESS1(6,3);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),LFP_Cost_Manu_kWh_ESS1(6,4),LFP_Cost_Use_kWh_ESS1(6,4),LFP_Cost_Direct_kWh_ESS1(6,4);
    LFP_Cost_Manu_kWh_ESS2(6,1),LFP_Cost_Use_kWh_ESS2(6,1),0,0,LFP_Cost_Direct_kWh_ESS2(6,1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),LFP_Cost_Manu_kWh_ESS2(6,2),LFP_Cost_Use_kWh_ESS2(6,2),LFP_Cost_Direct_kWh_ESS2(6,2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),LFP_Cost_Manu_kWh_ESS2(6,3),LFP_Cost_Use_kWh_ESS2(6,3),LFP_Cost_Direct_kWh_ESS2(6,3);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),LFP_Cost_Manu_kWh_ESS2(6,4),LFP_Cost_Use_kWh_ESS2(6,4),LFP_Cost_Direct_kWh_ESS2(6,4);
    LFP_Cost_Manu_kWh_ESS3(6,1),LFP_Cost_Use_kWh_ESS3(6,1),0,0,LFP_Cost_Direct_kWh_ESS3(6,1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),LFP_Cost_Manu_kWh_ESS3(6,2),LFP_Cost_Use_kWh_ESS3(6,2),LFP_Cost_Direct_kWh_ESS3(6,2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),LFP_Cost_Manu_kWh_ESS3(6,3),LFP_Cost_Use_kWh_ESS3(6,3),LFP_Cost_Direct_kWh_ESS3(6,3);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),LFP_Cost_Manu_kWh_ESS3(6,4),LFP_Cost_Use_kWh_ESS3(6,4),LFP_Cost_Direct_kWh_ESS3(6,4);
    LFP_Cost_Manu_kWh_CBS1(6,1),LFP_Cost_Use_kWh_CBS1(6,1),0,0,LFP_Cost_Direct_kWh_CBS1(6,1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),LFP_Cost_Manu_kWh_CBS1(6,2),LFP_Cost_Use_kWh_CBS1(6,2),LFP_Cost_Direct_kWh_CBS1(6,2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),LFP_Cost_Manu_kWh_CBS1(6,3),LFP_Cost_Use_kWh_CBS1(6,3),LFP_Cost_Direct_kWh_CBS1(6,3);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),LFP_Cost_Manu_kWh_CBS1(6,4),LFP_Cost_Use_kWh_CBS1(6,4),LFP_Cost_Direct_kWh_CBS1(6,4);
    LFP_Cost_Manu_kWh_CBS2(6,1),LFP_Cost_Use_kWh_CBS2(6,1),0,0,LFP_Cost_Direct_kWh_CBS2(6,1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),LFP_Cost_Manu_kWh_CBS2(6,2),LFP_Cost_Use_kWh_CBS2(6,2),LFP_Cost_Direct_kWh_CBS2(6,2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),LFP_Cost_Manu_kWh_CBS2(6,3),LFP_Cost_Use_kWh_CBS2(6,3),LFP_Cost_Direct_kWh_CBS2(6,3);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),LFP_Cost_Manu_kWh_CBS2(6,4),LFP_Cost_Use_kWh_CBS2(6,4),LFP_Cost_Direct_kWh_CBS2(6,4);
    LFP_Cost_Manu_kWh_CBS3(6,1),LFP_Cost_Use_kWh_CBS3(6,1),0,0,LFP_Cost_Direct_kWh_CBS3(6,1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),LFP_Cost_Manu_kWh_CBS3(6,2),LFP_Cost_Use_kWh_CBS3(6,2),LFP_Cost_Direct_kWh_CBS3(6,2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),LFP_Cost_Manu_kWh_CBS3(6,3),LFP_Cost_Use_kWh_CBS3(6,3),LFP_Cost_Direct_kWh_CBS3(6,3);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),LFP_Cost_Manu_kWh_CBS3(6,4),LFP_Cost_Use_kWh_CBS3(6,4),LFP_Cost_Direct_kWh_CBS3(6,4);
    LFP_Cost_Manu_kWh_CBS4(6,1),LFP_Cost_Use_kWh_CBS4(6,1),0,0,LFP_Cost_Direct_kWh_CBS4(6,1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),LFP_Cost_Manu_kWh_CBS4(6,2),LFP_Cost_Use_kWh_CBS4(6,2),LFP_Cost_Direct_kWh_CBS4(6,2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),LFP_Cost_Manu_kWh_CBS4(6,3),LFP_Cost_Use_kWh_CBS4(6,3),LFP_Cost_Direct_kWh_CBS4(6,3);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),LFP_Cost_Manu_kWh_CBS4(6,4),LFP_Cost_Use_kWh_CBS4(6,4),LFP_Cost_Direct_kWh_CBS4(6,4);
    LFP_Cost_Manu_kWh_LSV(6,1),LFP_Cost_Use_kWh_LSV(6,1),0,0,LFP_Cost_Direct_kWh_LSV(6,1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),LFP_Cost_Manu_kWh_LSV(6,2),LFP_Cost_Use_kWh_LSV(6,2),LFP_Cost_Direct_kWh_LSV(6,2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),LFP_Cost_Manu_kWh_LSV(6,3),LFP_Cost_Use_kWh_LSV(6,3),LFP_Cost_Direct_kWh_LSV(6,3);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),LFP_Cost_Manu_kWh_LSV(6,4),LFP_Cost_Use_kWh_LSV(6,4),LFP_Cost_Direct_kWh_LSV(6,4);];
LFP_Cost_Direct_cummu = [LFP_Cost_Direct(:,1),LFP_Cost_Direct(:,1)+LFP_Cost_Direct(:,2),LFP_Cost_Direct(:,1)+LFP_Cost_Direct(:,2)+LFP_Cost_Direct(:,3),...
    LFP_Cost_Direct(:,1)+LFP_Cost_Direct(:,2)+LFP_Cost_Direct(:,3)+LFP_Cost_Direct(:,4),LFP_Cost_Direct(:,1)+LFP_Cost_Direct(:,2)+LFP_Cost_Direct(:,3)+LFP_Cost_Direct(:,4)+LFP_Cost_Direct(:,5)];
%%%%%%%%%% hydro recycling %%%%%%%%%%%%%%%
LFP_Cost_Hydro = [LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),0,0,LFP_Cost_Hydro_kWh_EV(1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),0,0,LFP_Cost_Hydro_kWh_EV(2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),0,0,LFP_Cost_Hydro_kWh_EV(3);
    LFP_Cost_Manu_kWh_ESS1(6,1),LFP_Cost_Use_kWh_ESS1(6,1),0,0,LFP_Cost_Hydro_kWh_ESS1(6,1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),LFP_Cost_Manu_kWh_ESS1(6,2),LFP_Cost_Use_kWh_ESS1(6,2),LFP_Cost_Hydro_kWh_ESS1(6,2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),LFP_Cost_Manu_kWh_ESS1(6,3),LFP_Cost_Use_kWh_ESS1(6,3),LFP_Cost_Hydro_kWh_ESS1(6,3);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),LFP_Cost_Manu_kWh_ESS1(6,4),LFP_Cost_Use_kWh_ESS1(6,4),LFP_Cost_Hydro_kWh_ESS1(6,4);
    LFP_Cost_Manu_kWh_ESS2(6,1),LFP_Cost_Use_kWh_ESS2(6,1),0,0,LFP_Cost_Hydro_kWh_ESS2(6,1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),LFP_Cost_Manu_kWh_ESS2(6,2),LFP_Cost_Use_kWh_ESS2(6,2),LFP_Cost_Hydro_kWh_ESS2(6,2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),LFP_Cost_Manu_kWh_ESS2(6,3),LFP_Cost_Use_kWh_ESS2(6,3),LFP_Cost_Hydro_kWh_ESS2(6,3);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),LFP_Cost_Manu_kWh_ESS2(6,4),LFP_Cost_Use_kWh_ESS2(6,4),LFP_Cost_Hydro_kWh_ESS2(6,4);
    LFP_Cost_Manu_kWh_ESS3(6,1),LFP_Cost_Use_kWh_ESS3(6,1),0,0,LFP_Cost_Hydro_kWh_ESS3(6,1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),LFP_Cost_Manu_kWh_ESS3(6,2),LFP_Cost_Use_kWh_ESS3(6,2),LFP_Cost_Hydro_kWh_ESS3(6,2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),LFP_Cost_Manu_kWh_ESS3(6,3),LFP_Cost_Use_kWh_ESS3(6,3),LFP_Cost_Hydro_kWh_ESS3(6,3);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),LFP_Cost_Manu_kWh_ESS3(6,4),LFP_Cost_Use_kWh_ESS3(6,4),LFP_Cost_Hydro_kWh_ESS3(6,4);
    LFP_Cost_Manu_kWh_CBS1(6,1),LFP_Cost_Use_kWh_CBS1(6,1),0,0,LFP_Cost_Hydro_kWh_CBS1(6,1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),LFP_Cost_Manu_kWh_CBS1(6,2),LFP_Cost_Use_kWh_CBS1(6,2),LFP_Cost_Hydro_kWh_CBS1(6,2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),LFP_Cost_Manu_kWh_CBS1(6,3),LFP_Cost_Use_kWh_CBS1(6,3),LFP_Cost_Hydro_kWh_CBS1(6,3);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),LFP_Cost_Manu_kWh_CBS1(6,4),LFP_Cost_Use_kWh_CBS1(6,4),LFP_Cost_Hydro_kWh_CBS1(6,4);
    LFP_Cost_Manu_kWh_CBS2(6,1),LFP_Cost_Use_kWh_CBS2(6,1),0,0,LFP_Cost_Hydro_kWh_CBS2(6,1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),LFP_Cost_Manu_kWh_CBS2(6,2),LFP_Cost_Use_kWh_CBS2(6,2),LFP_Cost_Hydro_kWh_CBS2(6,2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),LFP_Cost_Manu_kWh_CBS2(6,3),LFP_Cost_Use_kWh_CBS2(6,3),LFP_Cost_Hydro_kWh_CBS2(6,3);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),LFP_Cost_Manu_kWh_CBS2(6,4),LFP_Cost_Use_kWh_CBS2(6,4),LFP_Cost_Hydro_kWh_CBS2(6,4);
    LFP_Cost_Manu_kWh_CBS3(6,1),LFP_Cost_Use_kWh_CBS3(6,1),0,0,LFP_Cost_Hydro_kWh_CBS3(6,1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),LFP_Cost_Manu_kWh_CBS3(6,2),LFP_Cost_Use_kWh_CBS3(6,2),LFP_Cost_Hydro_kWh_CBS3(6,2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),LFP_Cost_Manu_kWh_CBS3(6,3),LFP_Cost_Use_kWh_CBS3(6,3),LFP_Cost_Hydro_kWh_CBS3(6,3);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),LFP_Cost_Manu_kWh_CBS3(6,4),LFP_Cost_Use_kWh_CBS3(6,4),LFP_Cost_Hydro_kWh_CBS3(6,4);
    LFP_Cost_Manu_kWh_CBS4(6,1),LFP_Cost_Use_kWh_CBS4(6,1),0,0,LFP_Cost_Hydro_kWh_CBS4(6,1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),LFP_Cost_Manu_kWh_CBS4(6,2),LFP_Cost_Use_kWh_CBS4(6,2),LFP_Cost_Hydro_kWh_CBS4(6,2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),LFP_Cost_Manu_kWh_CBS4(6,3),LFP_Cost_Use_kWh_CBS4(6,3),LFP_Cost_Hydro_kWh_CBS4(6,3);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),LFP_Cost_Manu_kWh_CBS4(6,4),LFP_Cost_Use_kWh_CBS4(6,4),LFP_Cost_Hydro_kWh_CBS4(6,4);
    LFP_Cost_Manu_kWh_LSV(6,1),LFP_Cost_Use_kWh_LSV(6,1),0,0,LFP_Cost_Hydro_kWh_LSV(6,1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),LFP_Cost_Manu_kWh_LSV(6,2),LFP_Cost_Use_kWh_LSV(6,2),LFP_Cost_Hydro_kWh_LSV(6,2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),LFP_Cost_Manu_kWh_LSV(6,3),LFP_Cost_Use_kWh_LSV(6,3),LFP_Cost_Hydro_kWh_LSV(6,3);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),LFP_Cost_Manu_kWh_LSV(6,4),LFP_Cost_Use_kWh_LSV(6,4),LFP_Cost_Hydro_kWh_LSV(6,4);];
LFP_Cost_Hydro_cummu = [LFP_Cost_Hydro(:,1),LFP_Cost_Hydro(:,1)+LFP_Cost_Hydro(:,2),LFP_Cost_Hydro(:,1)+LFP_Cost_Hydro(:,2)+LFP_Cost_Hydro(:,3),...
    LFP_Cost_Hydro(:,1)+LFP_Cost_Hydro(:,2)+LFP_Cost_Hydro(:,3)+LFP_Cost_Hydro(:,4),LFP_Cost_Hydro(:,1)+LFP_Cost_Hydro(:,2)+LFP_Cost_Hydro(:,3)+LFP_Cost_Hydro(:,4)+LFP_Cost_Hydro(:,5)];
%%%%%%%%%% pyro recycling %%%%%%%%%%%%%%%
LFP_Cost_Pyro = [LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),0,0,LFP_Cost_Pyro_kWh_EV(1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),0,0,LFP_Cost_Pyro_kWh_EV(2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),0,0,LFP_Cost_Pyro_kWh_EV(3);
    LFP_Cost_Manu_kWh_ESS1(6,1),LFP_Cost_Use_kWh_ESS1(6,1),0,0,LFP_Cost_Pyro_kWh_ESS1(6,1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),LFP_Cost_Manu_kWh_ESS1(6,2),LFP_Cost_Use_kWh_ESS1(6,2),LFP_Cost_Pyro_kWh_ESS1(6,2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),LFP_Cost_Manu_kWh_ESS1(6,3),LFP_Cost_Use_kWh_ESS1(6,3),LFP_Cost_Pyro_kWh_ESS1(6,3);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),LFP_Cost_Manu_kWh_ESS1(6,4),LFP_Cost_Use_kWh_ESS1(6,4),LFP_Cost_Pyro_kWh_ESS1(6,4);
    LFP_Cost_Manu_kWh_ESS2(6,1),LFP_Cost_Use_kWh_ESS2(6,1),0,0,LFP_Cost_Pyro_kWh_ESS2(6,1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),LFP_Cost_Manu_kWh_ESS2(6,2),LFP_Cost_Use_kWh_ESS2(6,2),LFP_Cost_Pyro_kWh_ESS2(6,2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),LFP_Cost_Manu_kWh_ESS2(6,3),LFP_Cost_Use_kWh_ESS2(6,3),LFP_Cost_Pyro_kWh_ESS2(6,3);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),LFP_Cost_Manu_kWh_ESS2(6,4),LFP_Cost_Use_kWh_ESS2(6,4),LFP_Cost_Pyro_kWh_ESS2(6,4);
    LFP_Cost_Manu_kWh_ESS3(6,1),LFP_Cost_Use_kWh_ESS3(6,1),0,0,LFP_Cost_Pyro_kWh_ESS3(6,1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),LFP_Cost_Manu_kWh_ESS3(6,2),LFP_Cost_Use_kWh_ESS3(6,2),LFP_Cost_Pyro_kWh_ESS3(6,2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),LFP_Cost_Manu_kWh_ESS3(6,3),LFP_Cost_Use_kWh_ESS3(6,3),LFP_Cost_Pyro_kWh_ESS3(6,3);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),LFP_Cost_Manu_kWh_ESS3(6,4),LFP_Cost_Use_kWh_ESS3(6,4),LFP_Cost_Pyro_kWh_ESS3(6,4);
    LFP_Cost_Manu_kWh_CBS1(6,1),LFP_Cost_Use_kWh_CBS1(6,1),0,0,LFP_Cost_Pyro_kWh_CBS1(6,1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),LFP_Cost_Manu_kWh_CBS1(6,2),LFP_Cost_Use_kWh_CBS1(6,2),LFP_Cost_Pyro_kWh_CBS1(6,2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),LFP_Cost_Manu_kWh_CBS1(6,3),LFP_Cost_Use_kWh_CBS1(6,3),LFP_Cost_Pyro_kWh_CBS1(6,3);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),LFP_Cost_Manu_kWh_CBS1(6,4),LFP_Cost_Use_kWh_CBS1(6,4),LFP_Cost_Pyro_kWh_CBS1(6,4);
    LFP_Cost_Manu_kWh_CBS2(6,1),LFP_Cost_Use_kWh_CBS2(6,1),0,0,LFP_Cost_Pyro_kWh_CBS2(6,1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),LFP_Cost_Manu_kWh_CBS2(6,2),LFP_Cost_Use_kWh_CBS2(6,2),LFP_Cost_Pyro_kWh_CBS2(6,2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),LFP_Cost_Manu_kWh_CBS2(6,3),LFP_Cost_Use_kWh_CBS2(6,3),LFP_Cost_Pyro_kWh_CBS2(6,3);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),LFP_Cost_Manu_kWh_CBS2(6,4),LFP_Cost_Use_kWh_CBS2(6,4),LFP_Cost_Pyro_kWh_CBS2(6,4);
    LFP_Cost_Manu_kWh_CBS3(6,1),LFP_Cost_Use_kWh_CBS3(6,1),0,0,LFP_Cost_Pyro_kWh_CBS3(6,1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),LFP_Cost_Manu_kWh_CBS3(6,2),LFP_Cost_Use_kWh_CBS3(6,2),LFP_Cost_Pyro_kWh_CBS3(6,2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),LFP_Cost_Manu_kWh_CBS3(6,3),LFP_Cost_Use_kWh_CBS3(6,3),LFP_Cost_Pyro_kWh_CBS3(6,3);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),LFP_Cost_Manu_kWh_CBS3(6,4),LFP_Cost_Use_kWh_CBS3(6,4),LFP_Cost_Pyro_kWh_CBS3(6,4);
    LFP_Cost_Manu_kWh_CBS4(6,1),LFP_Cost_Use_kWh_CBS4(6,1),0,0,LFP_Cost_Pyro_kWh_CBS4(6,1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),LFP_Cost_Manu_kWh_CBS4(6,2),LFP_Cost_Use_kWh_CBS4(6,2),LFP_Cost_Pyro_kWh_CBS4(6,2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),LFP_Cost_Manu_kWh_CBS4(6,3),LFP_Cost_Use_kWh_CBS4(6,3),LFP_Cost_Pyro_kWh_CBS4(6,3);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),LFP_Cost_Manu_kWh_CBS4(6,4),LFP_Cost_Use_kWh_CBS4(6,4),LFP_Cost_Pyro_kWh_CBS4(6,4);
    LFP_Cost_Manu_kWh_LSV(6,1),LFP_Cost_Use_kWh_LSV(6,1),0,0,LFP_Cost_Pyro_kWh_LSV(6,1);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(1),LFP_Cost_Manu_kWh_LSV(6,2),LFP_Cost_Use_kWh_LSV(6,2),LFP_Cost_Pyro_kWh_LSV(6,2);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(2),LFP_Cost_Manu_kWh_LSV(6,3),LFP_Cost_Use_kWh_LSV(6,3),LFP_Cost_Pyro_kWh_LSV(6,3);
    LFP_Cost_Manu_kWh_EV,LFP_Cost_Use_kWh_EV(3),LFP_Cost_Manu_kWh_LSV(6,4),LFP_Cost_Use_kWh_LSV(6,4),LFP_Cost_Pyro_kWh_LSV(6,4);];
LFP_Cost_Pyro_cummu = [LFP_Cost_Pyro(:,1),LFP_Cost_Pyro(:,1)+LFP_Cost_Pyro(:,2),LFP_Cost_Pyro(:,1)+LFP_Cost_Pyro(:,2)+LFP_Cost_Pyro(:,3),...
    LFP_Cost_Pyro(:,1)+LFP_Cost_Pyro(:,2)+LFP_Cost_Pyro(:,3)+LFP_Cost_Pyro(:,4),LFP_Cost_Pyro(:,1)+LFP_Cost_Pyro(:,2)+LFP_Cost_Pyro(:,3)+LFP_Cost_Pyro(:,4)+LFP_Cost_Pyro(:,5)];

%%%%%%%%% LFP battery roadmap priority sorting, from best to worst
%%%%%%%% direct recycling
[G,H] = sort(LFP_Cost_Direct_cummu(:,5));
Pathway_LFP_Cost_Direct = strings(35,7);
for i=1:35
    if H(i,1) == 1
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "90%" "No" "-" "-" "Direct" G(i,1)];
    elseif H(i,1) == 2
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "80%" "No" "-" "-" "Direct" G(i,1)];
    elseif H(i,1) == 3
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "70%" "No" "-" "-" "Direct" G(i,1)];
    elseif H(i,1) == 4
        Pathway_LFP_Cost_Direct(i,:) = ["ESS1" "100%" "No" "-" "-" "Direct" G(i,1)];
    elseif H(i,1) == 5
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "90%" "Yes" "ESS1" "40%" "Direct" G(i,1)];
    elseif H(i,1) == 6
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "80%" "Yes" "ESS1" "40%" "Direct" G(i,1)];
    elseif H(i,1) == 7
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "70%" "Yes" "ESS1" "40%" "Direct" G(i,1)];
    elseif H(i,1) == 8
        Pathway_LFP_Cost_Direct(i,:) = ["ESS2" "100%" "No" "-" "-" "Direct" G(i,1)];
    elseif H(i,1) == 9
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "90%" "Yes" "ESS2" "40%" "Direct" G(i,1)];
    elseif H(i,1) == 10
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "80%" "Yes" "ESS2" "40%" "Direct" G(i,1)];
    elseif H(i,1) == 11
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "70%" "Yes" "ESS2" "40%" "Direct" G(i,1)];
    elseif H(i,1) == 12
        Pathway_LFP_Cost_Direct(i,:) = ["ESS3" "100%" "No" "-" "-" "Direct" G(i,1)];
    elseif H(i,1) == 13
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "90%" "Yes" "ESS3" "40%" "Direct" G(i,1)];
    elseif H(i,1) == 14
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "80%" "Yes" "ESS3" "40%" "Direct" G(i,1)];
    elseif H(i,1) == 15
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "70%" "Yes" "ESS3" "40%" "Direct" G(i,1)];
    elseif H(i,1) == 16
        Pathway_LFP_Cost_Direct(i,:) = ["CBS1" "100%" "No" "-" "-" "Direct" G(i,1)];
    elseif H(i,1) == 17
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "90%" "Yes" "CBS1" "40%" "Direct" G(i,1)];
    elseif H(i,1) == 18
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "80%" "Yes" "CBS1" "40%" "Direct" G(i,1)];
    elseif H(i,1) == 19
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "70%" "Yes" "CBS1" "40%" "Direct" G(i,1)];
    elseif H(i,1) == 20
        Pathway_LFP_Cost_Direct(i,:) = ["CBS2" "100%" "No" "-" "-" "Direct" G(i,1)];
    elseif H(i,1) == 21
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "90%" "Yes" "CBS2" "40%" "Direct" G(i,1)];
    elseif H(i,1) == 22
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "80%" "Yes" "CBS2" "40%" "Direct" G(i,1)];
    elseif H(i,1) == 23
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "70%" "Yes" "CBS2" "40%" "Direct" G(i,1)];
    elseif H(i,1) == 24
        Pathway_LFP_Cost_Direct(i,:) = ["CBS3" "100%" "No" "-" "-" "Direct" G(i,1)];
    elseif H(i,1) == 25
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "90%" "Yes" "CBS3" "40%" "Direct" G(i,1)];
    elseif H(i,1) == 26
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "80%" "Yes" "CBS3" "40%" "Direct" G(i,1)];
    elseif H(i,1) == 27
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "70%" "Yes" "CBS3" "40%" "Direct" G(i,1)];
    elseif H(i,1) == 28
        Pathway_LFP_Cost_Direct(i,:) = ["CBS4" "100%" "No" "-" "-" "Direct" G(i,1)];
    elseif H(i,1) == 29
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "90%" "Yes" "CBS4" "40%" "Direct" G(i,1)];
    elseif H(i,1) == 30
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "80%" "Yes" "CBS4" "40%" "Direct" G(i,1)];
    elseif H(i,1) == 31
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "70%" "Yes" "CBS4" "40%" "Direct" G(i,1)];
    elseif H(i,1) == 32
        Pathway_LFP_Cost_Direct(i,:) = ["LSV" "100%" "No" "-" "-" "Direct" G(i,1)];
    elseif H(i,1) == 33
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "90%" "Yes" "LSV" "40%" "Direct" G(i,1)];
    elseif H(i,1) == 34
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "80%" "Yes" "LSV" "40%" "Direct" G(i,1)];
    elseif H(i,1) == 35
        Pathway_LFP_Cost_Direct(i,:) = ["EV" "70%" "Yes" "LSV" "40%" "Direct" G(i,1)];
    end
end
%%%%%%%% Hydro- recycling
[I,J] = sort(LFP_Cost_Hydro_cummu(:,5));
Pathway_LFP_Cost_Hydro = strings(35,7);
for i=1:35
    if J(i,1) == 1
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "90%" "No" "-" "-" "Hydro-" I(i,1)];
    elseif J(i,1) == 2
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "80%" "No" "-" "-" "Hydro-" I(i,1)];
    elseif J(i,1) == 3
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "70%" "No" "-" "-" "Hydro-" I(i,1)];
    elseif J(i,1) == 4
        Pathway_LFP_Cost_Hydro(i,:) = ["ESS1" "100%" "No" "-" "-" "Hydro-" I(i,1)];
    elseif J(i,1) == 5
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "90%" "Yes" "ESS1" "40%" "Hydro-" I(i,1)];
    elseif J(i,1) == 6
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "80%" "Yes" "ESS1" "40%" "Hydro-" I(i,1)];
    elseif J(i,1) == 7
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "70%" "Yes" "ESS1" "40%" "Hydro-" I(i,1)];
    elseif J(i,1) == 8
        Pathway_LFP_Cost_Hydro(i,:) = ["ESS2" "100%" "No" "-" "-" "Hydro-" I(i,1)];
    elseif J(i,1) == 9
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "90%" "Yes" "ESS2" "40%" "Hydro-" I(i,1)];
    elseif J(i,1) == 10
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "80%" "Yes" "ESS2" "40%" "Hydro-" I(i,1)];
    elseif J(i,1) == 11
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "70%" "Yes" "ESS2" "40%" "Hydro-" I(i,1)];
    elseif J(i,1) == 12
        Pathway_LFP_Cost_Hydro(i,:) = ["ESS3" "100%" "No" "-" "-" "Hydro-" I(i,1)];
    elseif J(i,1) == 13
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "90%" "Yes" "ESS3" "40%" "Hydro-" I(i,1)];
    elseif J(i,1) == 14
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "80%" "Yes" "ESS3" "40%" "Hydro-" I(i,1)];
    elseif J(i,1) == 15
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "70%" "Yes" "ESS3" "40%" "Hydro-" I(i,1)];
    elseif J(i,1) == 16
        Pathway_LFP_Cost_Hydro(i,:) = ["CBS1" "100%" "No" "-" "-" "Hydro-" I(i,1)];
    elseif J(i,1) == 17
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "90%" "Yes" "CBS1" "40%" "Hydro-" I(i,1)];
    elseif J(i,1) == 18
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "80%" "Yes" "CBS1" "40%" "Hydro-" I(i,1)];
    elseif J(i,1) == 19
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "70%" "Yes" "CBS1" "40%" "Hydro-" I(i,1)];
    elseif J(i,1) == 20
        Pathway_LFP_Cost_Hydro(i,:) = ["CBS2" "100%" "No" "-" "-" "Hydro-" I(i,1)];
    elseif J(i,1) == 21
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "90%" "Yes" "CBS2" "40%" "Hydro-" I(i,1)];
    elseif J(i,1) == 22
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "80%" "Yes" "CBS2" "40%" "Hydro-" I(i,1)];
    elseif J(i,1) == 23
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "70%" "Yes" "CBS2" "40%" "Hydro-" I(i,1)];
    elseif J(i,1) == 24
        Pathway_LFP_Cost_Hydro(i,:) = ["CBS3" "100%" "No" "-" "-" "Hydro-" I(i,1)];
    elseif J(i,1) == 25
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "90%" "Yes" "CBS3" "40%" "Hydro-" I(i,1)];
    elseif J(i,1) == 26
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "80%" "Yes" "CBS3" "40%" "Hydro-" I(i,1)];
    elseif J(i,1) == 27
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "70%" "Yes" "CBS3" "40%" "Hydro-" I(i,1)];
    elseif J(i,1) == 28
        Pathway_LFP_Cost_Hydro(i,:) = ["CBS4" "100%" "No" "-" "-" "Hydro-" I(i,1)];
    elseif J(i,1) == 29
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "90%" "Yes" "CBS4" "40%" "Hydro-" I(i,1)];
    elseif J(i,1) == 30
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "80%" "Yes" "CBS4" "40%" "Hydro-" I(i,1)];
    elseif J(i,1) == 31
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "70%" "Yes" "CBS4" "40%" "Hydro-" I(i,1)];
    elseif J(i,1) == 32
        Pathway_LFP_Cost_Hydro(i,:) = ["LSV" "100%" "No" "-" "-" "Hydro-" I(i,1)];
    elseif J(i,1) == 33
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "90%" "Yes" "LSV" "40%" "Hydro-" I(i,1)];
    elseif J(i,1) == 34
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "80%" "Yes" "LSV" "40%" "Hydro-" I(i,1)];
    elseif J(i,1) == 35
        Pathway_LFP_Cost_Hydro(i,:) = ["EV" "70%" "Yes" "LSV" "40%" "Hydro-" I(i,1)];
    end
end
%%%%%%%% Pyro- recycling
[K,L] = sort(LFP_Cost_Pyro_cummu(:,5));
Pathway_LFP_Cost_Pyro = strings(35,7);
for i=1:35
    if L(i,1) == 1
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "90%" "No" "-" "-" "Pyro-" K(i,1)];
    elseif L(i,1) == 2
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "80%" "No" "-" "-" "Pyro-" K(i,1)];
    elseif L(i,1) == 3
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "70%" "No" "-" "-" "Pyro-" K(i,1)];
    elseif L(i,1) == 4
        Pathway_LFP_Cost_Pyro(i,:) = ["ESS1" "100%" "No" "-" "-" "Pyro-" K(i,1)];
    elseif L(i,1) == 5
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "90%" "Yes" "ESS1" "40%" "Pyro-" K(i,1)];
    elseif L(i,1) == 6
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "80%" "Yes" "ESS1" "40%" "Pyro-" K(i,1)];
    elseif L(i,1) == 7
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "70%" "Yes" "ESS1" "40%" "Pyro-" K(i,1)];
    elseif L(i,1) == 8
        Pathway_LFP_Cost_Pyro(i,:) = ["ESS2" "100%" "No" "-" "-" "Pyro-" K(i,1)];
    elseif L(i,1) == 9
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "90%" "Yes" "ESS2" "40%" "Pyro-" K(i,1)];
    elseif L(i,1) == 10
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "80%" "Yes" "ESS2" "40%" "Pyro-" K(i,1)];
    elseif L(i,1) == 11
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "70%" "Yes" "ESS2" "40%" "Pyro-" K(i,1)];
    elseif L(i,1) == 12
        Pathway_LFP_Cost_Pyro(i,:) = ["ESS3" "100%" "No" "-" "-" "Pyro-" K(i,1)];
    elseif L(i,1) == 13
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "90%" "Yes" "ESS3" "40%" "Pyro-" K(i,1)];
    elseif L(i,1) == 14
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "80%" "Yes" "ESS3" "40%" "Pyro-" K(i,1)];
    elseif L(i,1) == 15
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "70%" "Yes" "ESS3" "40%" "Pyro-" K(i,1)];
    elseif L(i,1) == 16
        Pathway_LFP_Cost_Pyro(i,:) = ["CBS1" "100%" "No" "-" "-" "Pyro-" K(i,1)];
    elseif L(i,1) == 17
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "90%" "Yes" "CBS1" "40%" "Pyro-" K(i,1)];
    elseif L(i,1) == 18
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "80%" "Yes" "CBS1" "40%" "Pyro-" K(i,1)];
    elseif L(i,1) == 19
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "70%" "Yes" "CBS1" "40%" "Pyro-" K(i,1)];
    elseif L(i,1) == 20
        Pathway_LFP_Cost_Pyro(i,:) = ["CBS2" "100%" "No" "-" "-" "Pyro-" K(i,1)];
    elseif L(i,1) == 21
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "90%" "Yes" "CBS2" "40%" "Pyro-" K(i,1)];
    elseif L(i,1) == 22
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "80%" "Yes" "CBS2" "40%" "Pyro-" K(i,1)];
    elseif L(i,1) == 23
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "70%" "Yes" "CBS2" "40%" "Pyro-" K(i,1)];
    elseif L(i,1) == 24
        Pathway_LFP_Cost_Pyro(i,:) = ["CBS3" "100%" "No" "-" "-" "Pyro-" K(i,1)];
    elseif L(i,1) == 25
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "90%" "Yes" "CBS3" "40%" "Pyro-" K(i,1)];
    elseif L(i,1) == 26
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "80%" "Yes" "CBS3" "40%" "Pyro-" K(i,1)];
    elseif L(i,1) == 27
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "70%" "Yes" "CBS3" "40%" "Pyro-" K(i,1)];
    elseif L(i,1) == 28
        Pathway_LFP_Cost_Pyro(i,:) = ["CBS4" "100%" "No" "-" "-" "Pyro-" K(i,1)];
    elseif L(i,1) == 29
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "90%" "Yes" "CBS4" "40%" "Pyro-" K(i,1)];
    elseif L(i,1) == 30
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "80%" "Yes" "CBS4" "40%" "Pyro-" K(i,1)];
    elseif L(i,1) == 31
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "70%" "Yes" "CBS4" "40%" "Pyro-" K(i,1)];
    elseif L(i,1) == 32
        Pathway_LFP_Cost_Pyro(i,:) = ["LSV" "100%" "No" "-" "-" "Pyro-" K(i,1)];
    elseif L(i,1) == 33
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "90%" "Yes" "LSV" "40%" "Pyro-" K(i,1)];
    elseif L(i,1) == 34
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "80%" "Yes" "LSV" "40%" "Pyro-" K(i,1)];
    elseif L(i,1) == 35
        Pathway_LFP_Cost_Pyro(i,:) = ["EV" "70%" "Yes" "LSV" "40%" "Pyro-" K(i,1)];
    end
end