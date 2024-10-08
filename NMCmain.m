% clc;
% clear;
SOH1 = zeros(1,6);
SOH2 = zeros(1,4);
for i = 1:6
    SOH1(i) = (10-i)/10;
    if SOH1(i) >= 0.7
        [NMC_BattEner_EV,NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV,NMC_Cost_Manu_kWh_EV,... % Manu
            NMC_CO2_Use_kWh_EV(i),NMC_Cost_Use_kWh_EV(i),NMC_CO2_Use_kWh_year_EV(i),NMC_Cost_Use_kWh_year_EV(i),NMC_CO2_Use_year_EV(i),NMC_Cost_Use_year_EV(i),... % Use
            NMC_CO2_Hydro_kWh_EV(i),NMC_CO2_Direct_kWh_EV(i),NMC_CO2_Pyro_kWh_EV(i),NMC_Cost_Hydro_kWh_EV(i),NMC_Cost_Direct_kWh_EV(i),NMC_Cost_Pyro_kWh_EV(i),...
            NMC_CO2_Cell_EV(i,:),NMC_CO2_Manu_EV(i,:),NMC_CO2_PacRec_EV(i,:),NMC_CO2_Hydro_EV(i,:),NMC_CO2_Direct_EV(i,:),NMC_CO2_Pyro_EV(i,:),...
            NMC_Cost_PacRec_EV(i,:),NMC_Cost_Hydro_EV(i,:),NMC_Cost_Direct_EV(i,:),NMC_Cost_Pyro_EV(i,:)] = ... % Recycle
            NMCLifeCycle("EV",SOH1(i),1);
    end
    for j = 1:4
        SOH2(j) = (11-j)/10;
        if SOH2(j) > SOH1(i)
            [NMC_BattEner_ESS1(i,j),NMC_CO2_Cell_kWh_ESS1(i,j),NMC_CO2_Manu_kWh_ESS1(i,j),NMC_Cost_Manu_kWh_ESS1(i,j),...
                NMC_CO2_Use_kWh_ESS1(i,j),NMC_Cost_Use_kWh_ESS1(i,j),NMC_CO2_Use_kWh_year_ESS1(i,j),NMC_Cost_Use_kWh_year_ESS1(i,j),NMC_CO2_Use_year_ESS1(i,j),NMC_Cost_Use_year_ESS1(i,j),...
                NMC_CO2_Hydro_kWh_ESS1(i,j),NMC_CO2_Direct_kWh_ESS1(i,j),NMC_CO2_Pyro_kWh_ESS1(i,j),NMC_Cost_Hydro_kWh_ESS1(i,j),NMC_Cost_Direct_kWh_ESS1(i,j),NMC_Cost_Pyro_kWh_ESS1(i,j),...
                NMC_CO2_Cell_ESS1(i,j,:),NMC_CO2_Manu_ESS1(i,j,:),NMC_CO2_PacRec_ESS1(i,j,:),NMC_CO2_Hydro_ESS1(i,j,:),NMC_CO2_Direct_ESS1(i,j,:),NMC_CO2_Pyro_ESS1(i,j,:),...
                NMC_Cost_PacRec_ESS1(i,j,:),NMC_Cost_Hydro_ESS1(i,j,:),NMC_Cost_Direct_ESS1(i,j,:),NMC_Cost_Pyro_ESS1(i,j,:)] = ...
                NMCLifeCycle("ESS1",SOH1(i),SOH2(j));

            [NMC_BattEner_ESS2(i,j),NMC_CO2_Cell_kWh_ESS2(i,j),NMC_CO2_Manu_kWh_ESS2(i,j),NMC_Cost_Manu_kWh_ESS2(i,j),...
                NMC_CO2_Use_kWh_ESS2(i,j),NMC_Cost_Use_kWh_ESS2(i,j),NMC_CO2_Use_kWh_year_ESS2(i,j),NMC_Cost_Use_kWh_year_ESS2(i,j),NMC_CO2_Use_year_ESS2(i,j),NMC_Cost_Use_year_ESS2(i,j),...
                NMC_CO2_Hydro_kWh_ESS2(i,j),NMC_CO2_Direct_kWh_ESS2(i,j),NMC_CO2_Pyro_kWh_ESS2(i,j),NMC_Cost_Hydro_kWh_ESS2(i,j),NMC_Cost_Direct_kWh_ESS2(i,j),NMC_Cost_Pyro_kWh_ESS2(i,j),...
                NMC_CO2_Cell_ESS2(i,j,:),NMC_CO2_Manu_ESS2(i,j,:),NMC_CO2_PacRec_ESS2(i,j,:),NMC_CO2_Hydro_ESS2(i,j,:),NMC_CO2_Direct_ESS2(i,j,:),NMC_CO2_Pyro_ESS2(i,j,:),...
                NMC_Cost_PacRec_ESS2(i,j,:),NMC_Cost_Hydro_ESS2(i,j,:),NMC_Cost_Direct_ESS2(i,j,:),NMC_Cost_Pyro_ESS2(i,j,:)] = ...
                NMCLifeCycle("ESS2",SOH1(i),SOH2(j));

            [NMC_BattEner_ESS3(i,j),NMC_CO2_Cell_kWh_ESS3(i,j),NMC_CO2_Manu_kWh_ESS3(i,j),NMC_Cost_Manu_kWh_ESS3(i,j),...
                NMC_CO2_Use_kWh_ESS3(i,j),NMC_Cost_Use_kWh_ESS3(i,j),NMC_CO2_Use_kWh_year_ESS3(i,j),NMC_Cost_Use_kWh_year_ESS3(i,j),NMC_CO2_Use_year_ESS3(i,j),NMC_Cost_Use_year_ESS3(i,j),...
                NMC_CO2_Hydro_kWh_ESS3(i,j),NMC_CO2_Direct_kWh_ESS3(i,j),NMC_CO2_Pyro_kWh_ESS3(i,j),NMC_Cost_Hydro_kWh_ESS3(i,j),NMC_Cost_Direct_kWh_ESS3(i,j),NMC_Cost_Pyro_kWh_ESS3(i,j),...
                NMC_CO2_Cell_ESS3(i,j,:),NMC_CO2_Manu_ESS3(i,j,:),NMC_CO2_PacRec_ESS3(i,j,:),NMC_CO2_Hydro_ESS3(i,j,:),NMC_CO2_Direct_ESS3(i,j,:),NMC_CO2_Pyro_ESS3(i,j,:),...
                NMC_Cost_PacRec_ESS3(i,j,:),NMC_Cost_Hydro_ESS3(i,j,:),NMC_Cost_Direct_ESS3(i,j,:),NMC_Cost_Pyro_ESS3(i,j,:)] = ...
                NMCLifeCycle("ESS3",SOH1(i),SOH2(j));

            [NMC_BattEner_CBS1(i,j),NMC_CO2_Cell_kWh_CBS1(i,j),NMC_CO2_Manu_kWh_CBS1(i,j),NMC_Cost_Manu_kWh_CBS1(i,j),...
                NMC_CO2_Use_kWh_CBS1(i,j),NMC_Cost_Use_kWh_CBS1(i,j),NMC_CO2_Use_kWh_year_CBS1(i,j),NMC_Cost_Use_kWh_year_CBS1(i,j),NMC_CO2_Use_year_CBS1(i,j),NMC_Cost_Use_year_CBS1(i,j),...
                NMC_CO2_Hydro_kWh_CBS1(i,j),NMC_CO2_Direct_kWh_CBS1(i,j),NMC_CO2_Pyro_kWh_CBS1(i,j),NMC_Cost_Hydro_kWh_CBS1(i,j),NMC_Cost_Direct_kWh_CBS1(i,j),NMC_Cost_Pyro_kWh_CBS1(i,j),...
                NMC_CO2_Cell_CBS1(i,j,:),NMC_CO2_Manu_CBS1(i,j,:),NMC_CO2_PacRec_CBS1(i,j,:),NMC_CO2_Hydro_CBS1(i,j,:),NMC_CO2_Direct_CBS1(i,j,:),NMC_CO2_Pyro_CBS1(i,j,:),...
                NMC_Cost_PacRec_CBS1(i,j,:),NMC_Cost_Hydro_CBS1(i,j,:),NMC_Cost_Direct_CBS1(i,j,:),NMC_Cost_Pyro_CBS1(i,j,:)] = ...
                NMCLifeCycle("CBS1",SOH1(i),SOH2(j));

            [NMC_BattEner_CBS2(i,j),NMC_CO2_Cell_kWh_CBS2(i,j),NMC_CO2_Manu_kWh_CBS2(i,j),NMC_Cost_Manu_kWh_CBS2(i,j),...
                NMC_CO2_Use_kWh_CBS2(i,j),NMC_Cost_Use_kWh_CBS2(i,j),NMC_CO2_Use_kWh_year_CBS2(i,j),NMC_Cost_Use_kWh_year_CBS2(i,j),NMC_CO2_Use_year_CBS2(i,j),NMC_Cost_Use_year_CBS2(i,j),...
                NMC_CO2_Hydro_kWh_CBS2(i,j),NMC_CO2_Direct_kWh_CBS2(i,j),NMC_CO2_Pyro_kWh_CBS2(i,j),NMC_Cost_Hydro_kWh_CBS2(i,j),NMC_Cost_Direct_kWh_CBS2(i,j),NMC_Cost_Pyro_kWh_CBS2(i,j),...
                NMC_CO2_Cell_CBS2(i,j,:),NMC_CO2_Manu_CBS2(i,j,:),NMC_CO2_PacRec_CBS2(i,j,:),NMC_CO2_Hydro_CBS2(i,j,:),NMC_CO2_Direct_CBS2(i,j,:),NMC_CO2_Pyro_CBS2(i,j,:),...
                NMC_Cost_PacRec_CBS2(i,j,:),NMC_Cost_Hydro_CBS2(i,j,:),NMC_Cost_Direct_CBS2(i,j,:),NMC_Cost_Pyro_CBS2(i,j,:)] = ...
                NMCLifeCycle("CBS2",SOH1(i),SOH2(j));

            [NMC_BattEner_CBS3(i,j),NMC_CO2_Cell_kWh_CBS3(i,j),NMC_CO2_Manu_kWh_CBS3(i,j),NMC_Cost_Manu_kWh_CBS3(i,j),...
                NMC_CO2_Use_kWh_CBS3(i,j),NMC_Cost_Use_kWh_CBS3(i,j),NMC_CO2_Use_kWh_year_CBS3(i,j),NMC_Cost_Use_kWh_year_CBS3(i,j),NMC_CO2_Use_year_CBS3(i,j),NMC_Cost_Use_year_CBS3(i,j),...
                NMC_CO2_Hydro_kWh_CBS3(i,j),NMC_CO2_Direct_kWh_CBS3(i,j),NMC_CO2_Pyro_kWh_CBS3(i,j),NMC_Cost_Hydro_kWh_CBS3(i,j),NMC_Cost_Direct_kWh_CBS3(i,j),NMC_Cost_Pyro_kWh_CBS3(i,j),...
                NMC_CO2_Cell_CBS3(i,j,:),NMC_CO2_Manu_CBS3(i,j,:),NMC_CO2_PacRec_CBS3(i,j,:),NMC_CO2_Hydro_CBS3(i,j,:),NMC_CO2_Direct_CBS3(i,j,:),NMC_CO2_Pyro_CBS3(i,j,:),...
                NMC_Cost_PacRec_CBS3(i,j,:),NMC_Cost_Hydro_CBS3(i,j,:),NMC_Cost_Direct_CBS3(i,j,:),NMC_Cost_Pyro_CBS3(i,j,:)] = ...
                NMCLifeCycle("CBS3",SOH1(i),SOH2(j));

            [NMC_BattEner_CBS4(i,j),NMC_CO2_Cell_kWh_CBS4(i,j),NMC_CO2_Manu_kWh_CBS4(i,j),NMC_Cost_Manu_kWh_CBS4(i,j),...
                NMC_CO2_Use_kWh_CBS4(i,j),NMC_Cost_Use_kWh_CBS4(i,j),NMC_CO2_Use_kWh_year_CBS4(i,j),NMC_Cost_Use_kWh_year_CBS4(i,j),NMC_CO2_Use_year_CBS4(i,j),NMC_Cost_Use_year_CBS4(i,j),...
                NMC_CO2_Hydro_kWh_CBS4(i,j),NMC_CO2_Direct_kWh_CBS4(i,j),NMC_CO2_Pyro_kWh_CBS4(i,j),NMC_Cost_Hydro_kWh_CBS4(i,j),NMC_Cost_Direct_kWh_CBS4(i,j),NMC_Cost_Pyro_kWh_CBS4(i,j),...
                NMC_CO2_Cell_CBS4(i,j,:),NMC_CO2_Manu_CBS4(i,j,:),NMC_CO2_PacRec_CBS4(i,j,:),NMC_CO2_Hydro_CBS4(i,j,:),NMC_CO2_Direct_CBS4(i,j,:),NMC_CO2_Pyro_CBS4(i,j,:),...
                NMC_Cost_PacRec_CBS4(i,j,:),NMC_Cost_Hydro_CBS4(i,j,:),NMC_Cost_Direct_CBS4(i,j,:),NMC_Cost_Pyro_CBS4(i,j,:)] = ...
                NMCLifeCycle("CBS4",SOH1(i),SOH2(j));

            [NMC_BattEner_LSV(i,j),NMC_CO2_Cell_kWh_LSV(i,j),NMC_CO2_Manu_kWh_LSV(i,j),NMC_Cost_Manu_kWh_LSV(i,j),...
                NMC_CO2_Use_kWh_LSV(i,j),NMC_Cost_Use_kWh_LSV(i,j),NMC_CO2_Use_kWh_year_LSV(i,j),NMC_Cost_Use_kWh_year_LSV(i,j),NMC_CO2_Use_year_LSV(i,j),NMC_Cost_Use_year_LSV(i,j),...
                NMC_CO2_Hydro_kWh_LSV(i,j),NMC_CO2_Direct_kWh_LSV(i,j),NMC_CO2_Pyro_kWh_LSV(i,j),NMC_Cost_Hydro_kWh_LSV(i,j),NMC_Cost_Direct_kWh_LSV(i,j),NMC_Cost_Pyro_kWh_LSV(i,j),...
                NMC_CO2_Cell_LSV(i,j,:),NMC_CO2_Manu_LSV(i,j,:),NMC_CO2_PacRec_LSV(i,j,:),NMC_CO2_Hydro_LSV(i,j,:),NMC_CO2_Direct_LSV(i,j,:),NMC_CO2_Pyro_LSV(i,j,:),...
                NMC_Cost_PacRec_LSV(i,j,:),NMC_Cost_Hydro_LSV(i,j,:),NMC_Cost_Direct_LSV(i,j,:),NMC_Cost_Pyro_LSV(i,j,:)] = ...
                NMCLifeCycle("LSV",SOH1(i),SOH2(j));
        end
    end
end
