%%%%%%%% Configuration illustration %%%%% Use phase cost - line chart
clc;
clear;
maindir = 'D:\12 Second use - Carbon Emission\Cases\CodeRight\Code20230621\Roadmap design'; subdir =  dir(maindir); % 确定包含多个子文件夹的总文件夹

Mmin = ones(5,8*4*2)*5;
% Cost4(10000,48) = 0;
for ii = 1 : length(subdir)
    if regexp(subdir(ii).name,"NMC")
        
        if regexp(subdir(ii).name,"100") % NMC 100% SOH
            SOH2 = 1;
            subdirpath = fullfile(maindir, subdir( ii ).name, '*.mat' ); file_names = dir(subdirpath); % 在这个子文件夹下找后缀为mat的文件

            for jj = 1:length(file_names)
                file_path = fullfile(maindir, subdir(ii).name, file_names(jj).name); load(file_path); % 读取mat文件数据

                Cell_kWh = Cell_Capacity*Cell_Voltage/1000; % kWh

                if regexp(file_names(jj).name,"A")
                    if 200<=M && M<=1800 && mod(M,200)==0
                        NMC_MA100(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MA100(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_MA100(:,1)); NMC_MA100=NMC_MA100(idx,:);
if NMC_MA100(jj,2) <= Mmin(2,1)
    Mmin(2,1) = NMC_MA100(jj,2);
    Mmin(1,1) = M;
    Cost(:,1) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,1) = Cost(:,1)/(M*Cell_kWh);
    Mmin(3,1) = Mmin(2,1)/Mmin(1,1); % Unit cost ($/kWh battery)
    Mmin(4,1) = Mmin(2,1)/day; % Daily cost ($/day)
    Mmin(5,1) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"B")
                    if 200<=M && M<=1800 && mod(M,200)==0
                        NMC_MB100(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MB100(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_MB100(1,:)); NMC_MB100=NMC_MB100(:,idx);
if NMC_MB100(jj,2) <= Mmin(2,2)
    Mmin(2,2) = NMC_MB100(jj,2);
    Mmin(1,2) = M;
    Cost(:,2) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,2) = Cost(:,2)/(M*Cell_kWh);
    Mmin(3,2) = Mmin(2,2)/Mmin(1,2); % Unit cost ($/kWh battery)
    Mmin(4,2) = Mmin(2,2)/day; % Daily cost ($/day)
    Mmin(5,2) = day; % Operation day
end
                    end
                
                elseif regexp(file_names(jj).name,"D")
                    if 50<=M && M<=300
                        NMC_MD100(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MD100(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_MD100(1,:)); NMC_MD100=NMC_MD100(:,idx);
if NMC_MD100(jj,2) <= Mmin(2,4)
    Mmin(2,4) = NMC_MD100(jj,2);
    Mmin(1,4) = M;
    Cost(:,4) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,4) = Cost(:,4)/(M*Cell_kWh);
    Mmin(3,4) = Mmin(2,4)/Mmin(1,4); % Unit cost ($/kWh battery)
    Mmin(4,4) = Mmin(2,4)/day; % Daily cost ($/day)
    Mmin(5,4) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"E")
                    if 50<=M && M<=300
                        NMC_ME100(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_ME100(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_ME100(1,:)); NMC_ME100=NMC_ME100(:,idx);
if NMC_ME100(jj,2) <= Mmin(2,5)
    Mmin(2,5) = NMC_ME100(jj,2);
    Mmin(1,5) = M;
    Cost(:,5) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,5) = Cost(:,5)/(M*Cell_kWh);
    Mmin(3,5) = Mmin(2,5)/Mmin(1,5); % Unit cost ($/kWh battery)
    Mmin(4,5) = Mmin(2,5)/day; % Daily cost ($/day)
    Mmin(5,5) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"F")
                    if 50<=M && M<=250
                        NMC_MF100(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MF100(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_MF100(1,:)); NMC_MF100=NMC_MF100(:,idx);
if NMC_MF100(jj,2) <= Mmin(2,6)
    Mmin(2,6) = NMC_MF100(jj,2);
    Mmin(1,6) = M;
    Cost(:,6) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,6) = Cost(:,6)/(M*Cell_kWh);
    Mmin(3,6) = Mmin(2,6)/Mmin(1,6); % Unit cost ($/kWh battery)
    Mmin(4,6) = Mmin(2,6)/day; % Daily cost ($/day)
    Mmin(5,6) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"G")
                    if 0<=M && M<=50
                        NMC_MG100(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MG100(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_MG100(1,:)); NMC_MG100=NMC_MG100(:,idx);
if NMC_MG100(jj,2) <= Mmin(2,7)
    Mmin(2,7) = NMC_MG100(jj,2);
    Mmin(1,7) = M;
    Cost(:,7) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,7) = Cost(:,7)/(M*Cell_kWh);
    Mmin(3,7) = Mmin(2,7)/Mmin(1,7); % Unit cost ($/kWh battery)
    Mmin(4,7) = Mmin(2,7)/day; % Daily cost ($/day)
    Mmin(5,7) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"H")
                    if 0<=M && M<=100
                        NMC_MH100(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MH100(jj,2) = max(C_total) + max(C_ope) + Cost_Manu;
                        NMC_MH100_day(jj,1) = M;
                        NMC_MH100_day(jj,2) = NMC_MH100(jj,2)/day; % 
%                         [~,idx]=sort(NMC_MH100(1,:)); NMC_MH100=NMC_MH100(:,idx);
if NMC_MH100_day(jj,2) <= Mmin(2,8)
    Mmin(2,8) = NMC_MH100(jj,2);
    Mmin(1,8) = M;
    Cost(:,8) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,8) = Cost(:,8)/(M*Cell_kWh);
    Mmin(3,8) = Mmin(2,8)/Mmin(1,8); % Unit cost ($/kWh battery)
    Mmin(4,8) = NMC_MH100_day(jj,2); % Daily cost ($/day)
    Mmin(5,8) = day; % Operation day
end
                    end
                else
                    if 200<=M && M<=1800 && mod(M,200)==0
                        NMC_MC100(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MC100(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_MC100(1,:)); NMC_MC100=NMC_MC100(:,idx);
if NMC_MC100(jj,2) <= Mmin(2,3)
    Mmin(2,3) = NMC_MC100(jj,2);
    Mmin(1,3) = M;
    Cost(:,3) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,3) = Cost(:,3)/(M*Cell_kWh);
    Mmin(3,3) = Mmin(2,3)/Mmin(1,3); % Unit cost ($/kWh battery)
    Mmin(4,3) = Mmin(2,3)/day; % Daily cost ($/day)
    Mmin(5,3) = day; % Operation day
end
                    end
                end
            end
        elseif regexp(subdir(ii).name,"90") % NMC 90% SOH
            SOH2 = 0.9;
            subdirpath = fullfile(maindir, subdir( ii ).name, '*.mat' ); file_names = dir(subdirpath);   % 在这个子文件夹下找后缀为mat的文件            

            for jj = 1:length(file_names)
                file_path = fullfile(maindir, subdir(ii).name, file_names(jj).name); load(file_path); % 读取mat文件数据

                Cell_kWh = Cell_Capacity*Cell_Voltage/1000; % kWh

                if regexp(file_names(jj).name,"A")
                    if 200<=M && M<=2000
                        NMC_MA90(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MA90(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_MA90(1,:)); NMC_MA90=NMC_MA90(:,idx);
if NMC_MA90(jj,2) <= Mmin(2,9)
    Mmin(2,9) = NMC_MA90(jj,2); % Cost ($)
    Mmin(1,9) = M; % Battery number
    Cost(:,9) = C_total+C_ope+Cost_Manu; % daily comulatuve cost ($)
    Cost_kWh(:,9) = Cost(:,9)/(M*Cell_kWh); % Daily comulative unit battery cost ($/kWh battery)
    Mmin(3,9) = Mmin(2,9)/Mmin(1,9); % Unit cost ($/kWh battery)
    Mmin(4,9) = Mmin(2,9)/day; % Daily cost ($/day)
    Mmin(5,9) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"B")
                    if 200<=M && M<=2000
                        NMC_MB90(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MB90(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_MB90(1,:)); NMC_MB90=NMC_MB90(:,idx);
if NMC_MB90(jj,2) <= Mmin(2,10)
    Mmin(2,10) = NMC_MB90(jj,2);
    Mmin(1,10) = M;
    Cost(:,10) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,10) = Cost(:,10)/(M*Cell_kWh);
    Mmin(3,10) = Mmin(2,10)/Mmin(1,10); % Unit cost ($/kWh battery)
    Mmin(4,10) = Mmin(2,10)/day; % Daily cost ($/day)
    Mmin(5,10) = day; % Operation day
end
                    end                
                elseif regexp(file_names(jj).name,"D")
                    if 50<=M && M<=300
                        NMC_MD90(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MD90(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_MD90(1,:)); NMC_MD90=NMC_MD90(:,idx);
if NMC_MD90(jj,2) <= Mmin(2,12)
    Mmin(2,12) = NMC_MD90(jj,2);
    Mmin(1,12) = M;
    Cost(:,12) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,12) = Cost(:,12)/(M*Cell_kWh);
    Mmin(3,12) = Mmin(2,12)/Mmin(1,12); % Unit cost ($/kWh battery)
    Mmin(4,12) = Mmin(2,12)/day; % Daily cost ($/day)
    Mmin(5,12) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"E")
                    if 100<=M && M<=350
                        NMC_ME90(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_ME90(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_ME90(1,:)); NMC_ME90=NMC_ME90(:,idx);
if NMC_ME90(jj,2) <= Mmin(2,13)
    Mmin(2,13) = NMC_ME90(jj,2);
    Mmin(1,13) = M;
    Cost(:,13) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,13) = Cost(:,13)/(M*Cell_kWh);
    Mmin(3,13) = Mmin(2,13)/Mmin(1,13); % Unit cost ($/kWh battery)
    Mmin(4,13) = Mmin(2,13)/day; % Daily cost ($/day)
    Mmin(5,13) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"F")
                    if 50<=M && M<=300
                        NMC_MF90(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MF90(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_MF90(1,:)); NMC_MF90=NMC_MF90(:,idx);
if NMC_MF90(jj,2) <= Mmin(2,14)
    Mmin(2,14) = NMC_MF90(jj,2);
    Mmin(1,14) = M;
    Cost(:,14) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,14) = Cost(:,14)/(M*Cell_kWh);
    Mmin(3,14) = Mmin(2,14)/Mmin(1,14); % Unit cost ($/kWh battery)
    Mmin(4,14) = Mmin(2,14)/day; % Daily cost ($/day)
    Mmin(5,14) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"G")
                    if 0<=M && M<=60
                        NMC_MG90(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MG90(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_MG90(1,:)); NMC_MG90=NMC_MG90(:,idx);
if NMC_MG90(jj,2) <= Mmin(2,15)
    Mmin(2,15) = NMC_MG90(jj,2);
    Mmin(1,15) = M;
    Cost(:,15) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,15) = Cost(:,15)/(M*Cell_kWh);
    Mmin(3,15) = Mmin(2,15)/Mmin(1,15); % Unit cost ($/kWh battery)
    Mmin(4,15) = Mmin(2,15)/day; % Daily cost ($/day)
    Mmin(5,15) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"H")
                    if 0<=M && M<=100
                        NMC_MH90(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MH90(jj,2) = max(C_total) + max(C_ope) + Cost_Manu;
                        NMC_MH90_day(jj,1) = M;
                        NMC_MH90_day(jj,2) = NMC_MH90(jj,2)/day;
%                         [~,idx]=sort(NMC_MH90(1,:)); NMC_MH90=NMC_MH90(:,idx);
if NMC_MH90_day(jj,2) <= Mmin(2,16)
    Mmin(2,16) = NMC_MH90(jj,2);
    Mmin(1,16) = M;
    Cost(:,16) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,16) = Cost(:,16)/(M*Cell_kWh);
    Mmin(3,16) = Mmin(2,16)/Mmin(1,16); % Unit cost ($/kWh battery)
    Mmin(4,16) = NMC_MH90_day(jj,2); % Daily cost ($/day)
    Mmin(5,16) = day; % Operation day
end
                    end
                else
                    if 200<=M && M<=2000 && mod(M,200)==0
                        NMC_MC90(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MC90(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_MC90(1,:)); NMC_MC90=NMC_MC90(:,idx);
if NMC_MC90(jj,2) <= Mmin(2,11)
    Mmin(2,11) = NMC_MC90(jj,2);
    Mmin(1,11) = M;
    Cost(:,11) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,11) = Cost(:,11)/(M*Cell_kWh);
    Mmin(3,11) = Mmin(2,11)/Mmin(1,11); % Unit cost ($/kWh battery)
    Mmin(4,11) = Mmin(2,11)/day; % Daily cost ($/day)
    Mmin(5,11) = day; % Operation day
end
                    end
                end
            end

        elseif regexp(subdir(ii).name,"80") % NMC 80% SOH
            SOH2 = 0.8;
            subdirpath = fullfile(maindir, subdir( ii ).name, '*.mat' ); file_names = dir(subdirpath);   % 在这个子文件夹下找后缀为mat的文件            

            for jj = 1:length(file_names)
                file_path = fullfile(maindir, subdir(ii).name, file_names(jj).name); load(file_path); % 读取mat文件数据

                Cell_kWh = Cell_Capacity*Cell_Voltage/1000; % kWh

                if regexp(file_names(jj).name,"A")
                    if 200<=M && M<=2200
                        NMC_MA80(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MA80(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_MA80(1,:)); NMC_MA80=NMC_MA80(:,idx);
if NMC_MA80(jj,2) <= Mmin(2,17)
    Mmin(2,17) = NMC_MA80(jj,2);
    Mmin(1,17) = M;
    Cost(:,17) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,17) = Cost(:,17)/(M*Cell_kWh);
    Mmin(3,17) = Mmin(2,17)/Mmin(1,17); % Unit cost ($/kWh battery)
    Mmin(4,17) = Mmin(2,17)/day; % Daily cost ($/day)
    Mmin(5,17) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"B")
                    if 200<=M && M<=2200
                        NMC_MB80(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MB80(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_MB80(1,:)); NMC_MB80=NMC_MB80(:,idx);
if NMC_MB80(jj,2) <= Mmin(2,18)
    Mmin(2,18) = NMC_MB80(jj,2);
    Mmin(1,18) = M;
    Cost(:,18) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,18) = Cost(:,18)/(M*Cell_kWh);
    Mmin(3,18) = Mmin(2,18)/Mmin(1,18); % Unit cost ($/kWh battery)
    Mmin(4,18) = Mmin(2,18)/day; % Daily cost ($/day)
    Mmin(5,18) = day; % Operation day
end
                    end                
                elseif regexp(file_names(jj).name,"D")
                    if 50<=M && M<=350
                        NMC_MD80(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MD80(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_MD80(1,:)); NMC_MD80=NMC_MD80(:,idx);
if NMC_MD80(jj,2) <= Mmin(2,20)
    Mmin(2,20) = NMC_MD80(jj,2);
    Mmin(1,20) = M;
    Cost(:,20) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,20) = Cost(:,20)/(M*Cell_kWh);
    Mmin(3,20) = Mmin(2,20)/Mmin(1,20); % Unit cost ($/kWh battery)
    Mmin(4,20) = Mmin(2,20)/day; % Daily cost ($/day)
    Mmin(5,20) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"E")
                    if 100<=M && M<=400
                        NMC_ME80(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_ME80(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_ME80(1,:)); NMC_ME80=NMC_ME80(:,idx);
if NMC_ME80(jj,2) <= Mmin(2,21)
    Mmin(2,21) = NMC_ME80(jj,2);
    Mmin(1,21) = M;
    Cost(:,21) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,21) = Cost(:,21)/(M*Cell_kWh);
    Mmin(3,21) = Mmin(2,21)/Mmin(1,21); % Unit cost ($/kWh battery)
    Mmin(4,21) = Mmin(2,21)/day; % Daily cost ($/day)
    Mmin(5,21) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"F")
                    if 50<=M && M<=350
                        NMC_MF80(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MF80(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_MF80(1,:)); NMC_MF80=NMC_MF80(:,idx);
if NMC_MF80(jj,2) <= Mmin(2,22)
    Mmin(2,22) = NMC_MF80(jj,2);
    Mmin(1,22) = M;
    Cost(:,22) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,22) = Cost(:,22)/(M*Cell_kWh);
    Mmin(3,22) = Mmin(2,22)/Mmin(1,22); % Unit cost ($/kWh battery)
    Mmin(4,22) = Mmin(2,22)/day; % Daily cost ($/day)
    Mmin(5,22) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"G")
                    if 0<=M && M<=70
                        NMC_MG80(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MG80(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_MG80(1,:)); NMC_MG80=NMC_MG80(:,idx);
if NMC_MG80(jj,2) <= Mmin(2,23)
    Mmin(2,23) = NMC_MG80(jj,2);
    Mmin(1,23) = M;
    Cost(:,23) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,23) = Cost(:,23)/(M*Cell_kWh);
    Mmin(3,23) = Mmin(2,23)/Mmin(1,23); % Unit cost ($/kWh battery)
    Mmin(4,23) = Mmin(2,23)/day; % Daily cost ($/day)
    Mmin(5,23) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"H")
                    if 0<=M && M<=100
                        NMC_MH80(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MH80(jj,2) = max(C_total) + max(C_ope) + Cost_Manu;
                        NMC_MH80_day(jj,1) = M;
                        NMC_MH80_day(jj,2) = NMC_MH80(jj,2)/day;
%                         [~,idx]=sort(NMC_MH80(1,:)); NMC_MH80=NMC_MH80(:,idx);
if NMC_MH80_day(jj,2) <= Mmin(2,24)
    Mmin(2,24) = NMC_MH80(jj,2);
    Mmin(1,24) = M;
    Cost(:,24) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,24) = Cost(:,24)/(M*Cell_kWh);    
    Mmin(3,24) = Mmin(2,24)/Mmin(1,24); % Unit cost ($/kWh battery)
    Mmin(4,24) = NMC_MH80_day(jj,2); % Daily cost ($/day)
    Mmin(5,24) = day; % Operation day
end
                    end
                else
                    if 200<=M && M<=2200
                        NMC_MC80(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MC80(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_MC80(1,:)); NMC_MC80=NMC_MC80(:,idx);
if NMC_MC80(jj,2) <= Mmin(2,19)
    Mmin(2,19) = NMC_MC80(jj,2);
    Mmin(1,19) = M;
    Cost(:,19) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,19) = Cost(:,19)/(M*Cell_kWh);
    Mmin(3,19) = Mmin(2,19)/Mmin(1,19); % Unit cost ($/kWh battery)
    Mmin(4,19) = Mmin(2,19)/day; % Daily cost ($/day)
    Mmin(5,19) = day; % Operation day
end
                    end
                end
            end

        elseif regexp(subdir(ii).name,"70") % NMC 70% SOH
            SOH2 = 0.7;
            subdirpath = fullfile(maindir, subdir( ii ).name, '*.mat' ); file_names = dir(subdirpath);   % 在这个子文件夹下找后缀为mat的文件

            for jj = 1:length(file_names)
                file_path = fullfile(maindir, subdir(ii).name, file_names(jj).name); load(file_path); % 读取mat文件数据

                Cell_kWh = Cell_Capacity*Cell_Voltage/1000; % kWh

                if regexp(file_names(jj).name,"A")
                    if 200<=M && M<=2600
                        NMC_MA70(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MA70(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_MA70(1,:)); NMC_MA70=NMC_MA70(:,idx);
if NMC_MA70(jj,2) <= Mmin(2,25)
    Mmin(2,25) = NMC_MA70(jj,2);
    Mmin(1,25) = M;
    Cost(:,25) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,25) = Cost(:,25)/(M*Cell_kWh);
    Mmin(3,25) = Mmin(2,25)/Mmin(1,25); % Unit cost ($/kWh battery)
    Mmin(4,25) = Mmin(2,25)/day; % Daily cost ($/day)
    Mmin(5,25) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"B")
                    if 200<=M && M<=2600
                        NMC_MB70(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MB70(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_MB70(1,:)); NMC_MB70=NMC_MB70(:,idx);
if NMC_MB70(jj,2) <= Mmin(2,26)
    Mmin(2,26) = NMC_MB70(jj,2);
    Mmin(1,26) = M;
    Cost(:,26) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,26) = Cost(:,26)/(M*Cell_kWh);
    Mmin(3,26) = Mmin(2,26)/Mmin(1,26); % Unit cost ($/kWh battery)
    Mmin(4,26) = Mmin(2,26)/day; % Daily cost ($/day)
    Mmin(5,26) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"D")
                    if 50<=M && M<=400
                        NMC_MD70(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MD70(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_MD70(1,:)); NMC_MD70=NMC_MD70(:,idx);
if NMC_MD70(jj,2) <= Mmin(2,28)
    Mmin(2,28) = NMC_MD70(jj,2);
    Mmin(1,28) = M;
    Cost(:,28) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,28) = Cost(:,28)/(M*Cell_kWh);
    Mmin(3,28) = Mmin(2,28)/Mmin(1,28); % Unit cost ($/kWh battery)
    Mmin(4,28) = Mmin(2,28)/day; % Daily cost ($/day)
    Mmin(5,28) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"E")
                    if 100<=M && M<=450
                        NMC_ME70(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_ME70(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_ME70(1,:)); NMC_ME70=NMC_ME70(:,idx);
if NMC_ME70(jj,2) <= Mmin(2,29)
    Mmin(2,29) = NMC_ME70(jj,2);
    Mmin(1,29) = M;
    Cost(:,29) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,29) = Cost(:,29)/(M*Cell_kWh);
    Mmin(3,29) = Mmin(2,29)/Mmin(1,29); % Unit cost ($/kWh battery)
    Mmin(4,29) = Mmin(2,29)/day; % Daily cost ($/day)
    Mmin(5,29) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"F")
                    if 50<=M && M<=400
                        NMC_MF70(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MF70(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_MF70(1,:)); NMC_MF70=NMC_MF70(:,idx);
if NMC_MF70(jj,2) <= Mmin(2,30)
    Mmin(2,30) = NMC_MF70(jj,2);
    Mmin(1,30) = M;
    Cost(:,30) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,30) = Cost(:,30)/(M*Cell_kWh);
    Mmin(3,30) = Mmin(2,30)/Mmin(1,30); % Unit cost ($/kWh battery)
    Mmin(4,30) = Mmin(2,30)/day; % Daily cost ($/day)
    Mmin(5,30) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"G")
                    if 0<=M && M<=80
                        NMC_MG70(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MG70(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_MG70(1,:)); NMC_MG70=NMC_MG70(:,idx);
if NMC_MG70(jj,2) <= Mmin(2,31)
    Mmin(2,31) = NMC_MG70(jj,2);
    Mmin(1,31) = M;
    Cost(:,31) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,31) = Cost(:,31)/(M*Cell_kWh);
    Mmin(3,31) = Mmin(2,31)/Mmin(1,31); % Unit cost ($/kWh battery)
    Mmin(4,31) = Mmin(2,31)/day; % Daily cost ($/day)
    Mmin(5,31) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"H")
                    if 0<=M && M<=110
                        NMC_MH70(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MH70(jj,2) = max(C_total) + max(C_ope) + Cost_Manu;
                        NMC_MH70_day(jj,1) = M;
                        NMC_MH70_day(jj,2) = NMC_MH70(jj,2)/day;
%                         [~,idx]=sort(NMC_MH70(1,:)); NMC_MH70=NMC_MH70(:,idx);
if NMC_MH70_day(jj,2) <= Mmin(2,32)
    Mmin(2,32) = NMC_MH70(jj,2);
    Mmin(1,32) = M;
    Cost(:,32) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,32) = Cost(:,32)/(M*Cell_kWh); 
    Mmin(3,32) = Mmin(2,32)/Mmin(1,32); % Unit cost ($/kWh battery)
    Mmin(4,32) = NMC_MH70_day(jj,2); % Daily cost ($/day)
    Mmin(5,32) = day; % Operation day
end
                    end
                else
                    if 200<=M && M<=2600
                        NMC_MC70(jj,1) = M;
                        Cost_Manu = ConfigurationNMCManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        NMC_MC70(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(NMC_MC70(1,:)); NMC_MC70=NMC_MC70(:,idx);
if NMC_MC70(jj,2) <= Mmin(2,27)
    Mmin(2,27) = NMC_MC70(jj,2);
    Mmin(1,27) = M;
    Cost(:,27) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,27) = Cost(:,27)/(M*Cell_kWh);
    Mmin(3,27) = Mmin(2,27)/Mmin(1,27); % Unit cost ($/kWh battery)
    Mmin(4,27) = Mmin(2,27)/day; % Daily cost ($/day)
    Mmin(5,27) = day; % Operation day
end
                    end
                end
            end
        end

    elseif regexp(subdir(ii).name,"LFP")
        
        if regexp(subdir(ii).name,"100") % NMC 100% SOH
            SOH2 = 1;
            subdirpath = fullfile(maindir, subdir( ii ).name, '*.mat' ); file_names = dir(subdirpath);   % 在这个子文件夹下找后缀为mat的文件

            for jj = 1:length(file_names)
                file_path = fullfile(maindir, subdir(ii).name, file_names(jj).name); load(file_path); % 读取mat文件数据

                Cell_kWh = Cell_Capacity*Cell_Voltage/1000; % kWh

                if regexp(file_names(jj).name,"A")
                    if 200<=M && M<=1800
                        LFP_MA100(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MA100(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_MA100(1,:)); LFP_MA100=LFP_MA100(:,idx);
if LFP_MA100(jj,2) <= Mmin(2,33)
    Mmin(2,33) = LFP_MA100(jj,2);
    Mmin(1,33) = M;
    Cost(:,33) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,33) = Cost(:,33)/(M*Cell_kWh);
    Mmin(3,33) = Mmin(2,33)/Mmin(1,33); % Unit cost ($/kWh battery)
    Mmin(4,33) = Mmin(2,33)/day; % Daily cost ($/day)
    Mmin(5,33) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"B")
                    if 200<=M && M<=1800
                        LFP_MB100(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MB100(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_MB100(1,:)); LFP_MB100=LFP_MB100(:,idx);
if LFP_MB100(jj,2) <= Mmin(2,34)
    Mmin(2,34) = LFP_MB100(jj,2);
    Mmin(1,34) = M;
    Cost(:,34) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,34) = Cost(:,34)/(M*Cell_kWh);
    Mmin(3,34) = Mmin(2,34)/Mmin(1,34); % Unit cost ($/kWh battery)
    Mmin(4,34) = Mmin(2,34)/day; % Daily cost ($/day)
    Mmin(5,34) = day; % Operation day
end
                    end
                
                elseif regexp(file_names(jj).name,"D")
                    if 50<=M && M<=300
                        LFP_MD100(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MD100(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_MD100(1,:)); LFP_MD100=LFP_MD100(:,idx);
if LFP_MD100(jj,2) <= Mmin(2,36)
    Mmin(2,36) = LFP_MD100(jj,2);
    Mmin(1,36) = M;
    Cost(:,36) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,36) = Cost(:,36)/(M*Cell_kWh);
    Mmin(3,36) = Mmin(2,36)/Mmin(1,36); % Unit cost ($/kWh battery)
    Mmin(4,36) = Mmin(2,36)/day; % Daily cost ($/day)
    Mmin(5,36) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"E")
                    if 50<=M && M<=300
                        LFP_ME100(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_ME100(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_ME100(1,:)); LFP_ME100=LFP_ME100(:,idx);
if LFP_ME100(jj,2) <= Mmin(2,37)
    Mmin(2,37) = LFP_ME100(jj,2);
    Mmin(1,37) = M;
    Cost(:,37) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,37) = Cost(:,37)/(M*Cell_kWh);
    Mmin(3,37) = Mmin(2,37)/Mmin(1,37); % Unit cost ($/kWh battery)
    Mmin(4,37) = Mmin(2,37)/day; % Daily cost ($/day)
    Mmin(5,37) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"FL")
                    if 50<=M && M<=250
                        LFP_MF100(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MF100(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_MF100(1,:)); LFP_MF100=LFP_MF100(:,idx);
if LFP_MF100(jj,2) <= Mmin(2,38)
    Mmin(2,38) = LFP_MF100(jj,2);
    Mmin(1,38) = M;
    Cost(:,38) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,38) = Cost(:,38)/(M*Cell_kWh);
    Mmin(3,38) = Mmin(2,38)/Mmin(1,38); % Unit cost ($/kWh battery)
    Mmin(4,38) = Mmin(2,38)/day; % Daily cost ($/day)
    Mmin(5,38) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"G")
                    if 0<=M && M<=50
                        LFP_MG100(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MG100(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_MG100(1,:)); LFP_MG100=LFP_MG100(:,idx);
if LFP_MG100(jj,2) <= Mmin(2,39)
    Mmin(2,39) = LFP_MG100(jj,2);
    Mmin(1,39) = M;
    Cost(:,39) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,39) = Cost(:,39)/(M*Cell_kWh);
    Mmin(3,39) = Mmin(2,39)/Mmin(1,39); % Unit cost ($/kWh battery)
    Mmin(4,39) = Mmin(2,39)/day; % Daily cost ($/day)
    Mmin(5,39) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"H")
                    if 0<=M && M<=100
                        LFP_MH100(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MH100(jj,2) = max(C_total) + max(C_ope) + Cost_Manu;
                        LFP_MH100_day(jj,1) = M;
                        LFP_MH100_day(jj,2) = LFP_MH100(jj,2)/day;
%                         [~,idx]=sort(LFP_MH100(1,:)); LFP_MH100=LFP_MH100(:,idx);
if LFP_MH100_day(jj,2) <= Mmin(2,40)
    Mmin(2,40) = LFP_MH100(jj,2);
    Mmin(1,40) = M;
    Cost2(:,40) = C_total+C_ope+Cost_Manu;
    Cost_kWh2(:,40) = Cost2(:,40)/(M*Cell_kWh);
    Mmin(3,40) = Mmin(2,40)/Mmin(1,40); % Unit cost ($/kWh battery)
    Mmin(4,40) = LFP_MH100_day(jj,2); % Daily cost ($/day)
    Mmin(5,40) = day; % Operation day
end
                    end
                else
                    if 200<=M && M<=1800
                        LFP_MC100(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MC100(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_MC100(1,:)); LFP_MC100=LFP_MC100(:,idx);
if LFP_MC100(jj,2) <= Mmin(2,35)
    Mmin(2,35) = LFP_MC100(jj,2);
    Mmin(1,35) = M;
    Cost(:,35) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,35) = Cost(:,35)/(M*Cell_kWh);
    Mmin(3,35) = Mmin(2,35)/Mmin(1,35); % Unit cost ($/kWh battery)
    Mmin(4,35) = Mmin(2,35)/day; % Daily cost ($/day)
    Mmin(5,35) = day; % Operation day
end
                    end
                end
            end
        elseif regexp(subdir(ii).name,"90") % NMC 90% SOH
            SOH2 = 0.9;
            subdirpath = fullfile(maindir, subdir( ii ).name, '*.mat' ); file_names = dir(subdirpath);   % 在这个子文件夹下找后缀为mat的文件            

            for jj = 1:length(file_names)
                file_path = fullfile(maindir, subdir(ii).name, file_names(jj).name); load(file_path); % 读取mat文件数据

                Cell_kWh = Cell_Capacity*Cell_Voltage/1000; % kWh

                if regexp(file_names(jj).name,"A")
                    if 200<=M && M<=2000
                        LFP_MA90(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MA90(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_MA90(1,:)); LFP_MA90=LFP_MA90(:,idx);
if LFP_MA90(jj,2) <= Mmin(2,41)
    Mmin(2,41) = LFP_MA90(jj,2);
    Mmin(1,41) = M;
    Cost(:,41) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,41) = Cost(:,41)/(M*Cell_kWh);
    Mmin(3,41) = Mmin(2,41)/Mmin(1,41); % Unit cost ($/kWh battery)
    Mmin(4,41) = Mmin(2,41)/day; % Daily cost ($/day)
    Mmin(5,41) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"B")
                    if 200<=M && M<=2000
                        LFP_MB90(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MB90(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_MB90(1,:)); LFP_MB90=LFP_MB90(:,idx);
if LFP_MB90(jj,2) <= Mmin(2,42)
    Mmin(2,42) = LFP_MB90(jj,2);
    Mmin(1,42) = M;
    Cost(:,42) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,42) = Cost(:,42)/(M*Cell_kWh);
    Mmin(3,42) = Mmin(2,42)/Mmin(1,42); % Unit cost ($/kWh battery)
    Mmin(4,42) = Mmin(2,42)/day; % Daily cost ($/day)
    Mmin(5,42) = day; % Operation day
end
                    end                
                elseif regexp(file_names(jj).name,"D")
                    if 50<=M && M<=300
                        LFP_MD90(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MD90(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_MD90(1,:)); LFP_MD90=LFP_MD90(:,idx);
if LFP_MD90(jj,2) <= Mmin(2,44)
    Mmin(2,44) = LFP_MD90(jj,2);
    Mmin(1,44) = M;
    Cost(:,44) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,44) = Cost(:,44)/(M*Cell_kWh);
    Mmin(3,44) = Mmin(2,44)/Mmin(1,44); % Unit cost ($/kWh battery)
    Mmin(4,44) = Mmin(2,44)/day; % Daily cost ($/day)
    Mmin(5,44) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"E")
                    if 100<=M && M<=350
                        LFP_ME90(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_ME90(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_ME90(1,:)); LFP_ME90=LFP_ME90(:,idx);
if LFP_ME90(jj,2) <= Mmin(2,45)
    Mmin(2,45) = LFP_ME90(jj,2);
    Mmin(1,45) = M;
    Cost(:,45) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,45) = Cost(:,45)/(M*Cell_kWh);
    Mmin(3,45) = Mmin(2,45)/Mmin(1,45); % Unit cost ($/kWh battery)
    Mmin(4,45) = Mmin(2,45)/day; % Daily cost ($/day)
    Mmin(5,45) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"90F")
                    if 50<=M && M<=300
                        LFP_MF90(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MF90(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_MF90(1,:)); LFP_MF90=LFP_MF90(:,idx);
if LFP_MF90(jj,2) <= Mmin(2,46)
    Mmin(2,46) = LFP_MF90(jj,2);
    Mmin(1,46) = M;
    Cost(:,46) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,46) = Cost(:,46)/(M*Cell_kWh);
    Mmin(3,46) = Mmin(2,46)/Mmin(1,46); % Unit cost ($/kWh battery)
    Mmin(4,46) = Mmin(2,46)/day; % Daily cost ($/day)
    Mmin(5,46) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"G")
                    if 0<=M && M<=60
                        LFP_MG90(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MG90(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_MG90(1,:)); LFP_MG90=LFP_MG90(:,idx);
if LFP_MG90(jj,2) <= Mmin(2,47)
    Mmin(2,47) = LFP_MG90(jj,2);
    Mmin(1,47) = M;
    Cost(:,47) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,47) = Cost(:,47)/(M*Cell_kWh);
    Mmin(3,47) = Mmin(2,47)/Mmin(1,47); % Unit cost ($/kWh battery)
    Mmin(4,47) = Mmin(2,47)/day; % Daily cost ($/day)
    Mmin(5,47) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"H")
                    if 0<=M && M<=100
                        LFP_MH90(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MH90(jj,2) = max(C_total) + max(C_ope) + Cost_Manu;
                        LFP_MH90_day(jj,1) = M;
                        LFP_MH90_day(jj,2) = LFP_MH90(jj,2)/day;
%                         [~,idx]=sort(LFP_MH90(1,:)); LFP_MH90=LFP_MH90(:,idx);
if LFP_MH90_day(jj,2) <= Mmin(2,48)
    Mmin(2,48) = LFP_MH90(jj,2);
    Mmin(1,48) = M;
    Cost4 = C_total+C_ope+Cost_Manu;
    Cost_kWh4= Cost4/(M*Cell_kWh);
    Mmin(3,48) = Mmin(2,48)/Mmin(1,48); % Unit cost ($/kWh battery)
    Mmin(4,48) = LFP_MH90_day(jj,2); % Daily cost ($/day)
    Mmin(5,48) = day; % Operation day
end
                    end
                else
                    if 200<=M && M<=2000
                        LFP_MC90(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MC90(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_MC90(1,:)); LFP_MC90=LFP_MC90(:,idx);
if LFP_MC90(jj,2) <= Mmin(2,43)
    Mmin(2,43) = LFP_MC90(jj,2);
    Mmin(1,43) = M;
    Cost(:,43) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,43) = Cost(:,43)/(M*Cell_kWh);
    Mmin(3,43) = Mmin(2,43)/Mmin(1,43); % Unit cost ($/kWh battery)
    Mmin(4,43) = Mmin(2,43)/day; % Daily cost ($/day)
    Mmin(5,43) = day; % Operation day
end
                    end
                end
            end

        elseif regexp(subdir(ii).name,"80") % NMC 80% SOH
            SOH2 = 0.8;
            subdirpath = fullfile(maindir, subdir( ii ).name, '*.mat' ); file_names = dir(subdirpath);   % 在这个子文件夹下找后缀为mat的文件            

            for jj = 1:length(file_names)
                file_path = fullfile(maindir, subdir(ii).name, file_names(jj).name); load(file_path); % 读取mat文件数据

                Cell_kWh = Cell_Capacity*Cell_Voltage/1000; % kWh

                if regexp(file_names(jj).name,"A")
                    if 200<=M && M<=2200
                        LFP_MA80(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MA80(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_MA80(1,:)); LFP_MA80=LFP_MA80(:,idx);
if LFP_MA80(jj,2) <= Mmin(2,49)
    Mmin(2,49) = LFP_MA80(jj,2);
    Mmin(1,49) = M;
    Cost(:,49) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,49) = Cost(:,49)/(M*Cell_kWh);
    Mmin(3,49) = Mmin(2,49)/Mmin(1,49); % Unit cost ($/kWh battery)
    Mmin(4,49) = Mmin(2,49)/day; % Daily cost ($/day)
    Mmin(5,49) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"B")
                    if 200<=M && M<=2200
                        LFP_MB80(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MB80(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_MB80(1,:)); LFP_MB80=LFP_MB80(:,idx);
if LFP_MB80(jj,2) <= Mmin(2,50)
    Mmin(2,50) = LFP_MB80(jj,2);
    Mmin(1,50) = M;
    Cost(:,50) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,50) = Cost(:,50)/(M*Cell_kWh);
    Mmin(3,50) = Mmin(2,50)/Mmin(1,50); % Unit cost ($/kWh battery)
    Mmin(4,50) = Mmin(2,50)/day; % Daily cost ($/day)
    Mmin(5,50) = day; % Operation day
end
                    end                
                elseif regexp(file_names(jj).name,"D")
                    if 50<=M && M<=350
                        LFP_MD80(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MD80(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_MD80(1,:)); LFP_MD80=LFP_MD80(:,idx);
if LFP_MD80(jj,2) <= Mmin(2,52)
    Mmin(2,52) = LFP_MD80(jj,2);
    Mmin(1,52) = M;
    Cost(:,52) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,52) = Cost(:,52)/(M*Cell_kWh);
    Mmin(3,52) = Mmin(2,52)/Mmin(1,52); % Unit cost ($/kWh battery)
    Mmin(4,52) = Mmin(2,52)/day; % Daily cost ($/day)
    Mmin(5,52) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"E")
                    if 100<=M && M<=400
                        LFP_ME80(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_ME80(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_ME80(1,:)); LFP_ME80=LFP_ME80(:,idx);
if LFP_ME80(jj,2) <= Mmin(2,53)
    Mmin(2,53) = LFP_ME80(jj,2);
    Mmin(1,53) = M;
    Cost(:,53) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,53) = Cost(:,53)/(M*Cell_kWh);
    Mmin(3,53) = Mmin(2,53)/Mmin(1,53); % Unit cost ($/kWh battery)
    Mmin(4,53) = Mmin(2,53)/day; % Daily cost ($/day)
    Mmin(5,53) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"FL")
                    if 50<=M && M<=350
                        LFP_MF80(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MF80(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_MF80(1,:)); LFP_MF80=LFP_MF80(:,idx);
if LFP_MF80(jj,2) <= Mmin(2,54)
    Mmin(2,54) = LFP_MF80(jj,2);
    Mmin(1,54) = M;
    Cost(:,54) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,54) = Cost(:,54)/(M*Cell_kWh);
    Mmin(3,54) = Mmin(2,54)/Mmin(1,54); % Unit cost ($/kWh battery)
    Mmin(4,54) = Mmin(2,54)/day; % Daily cost ($/day)
    Mmin(5,54) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"G")
                    if 0<=M && M<=70
                        LFP_MG80(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MG80(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_MG80(1,:)); LFP_MG80=LFP_MG80(:,idx);
if LFP_MG80(jj,2) <= Mmin(2,55)
    Mmin(2,55) = LFP_MG80(jj,2);
    Mmin(1,55) = M;
    Cost(:,55) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,55) = Cost(:,55)/(M*Cell_kWh);
    Mmin(3,55) = Mmin(2,55)/Mmin(1,55); % Unit cost ($/kWh battery)
    Mmin(4,55) = Mmin(2,55)/day; % Daily cost ($/day)
    Mmin(5,55) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"H")
                    if 0<=M && M<=100
                        LFP_MH80(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MH80(jj,2) = max(C_total) + max(C_ope) + Cost_Manu;
                        LFP_MH80_day(jj,1) = M;
                        LFP_MH80_day(jj,2) = LFP_MH80(jj,2)/day;
%                         [~,idx]=sort(LFP_MH80(1,:)); LFP_MH80=LFP_MH80(:,idx);
if LFP_MH80_day(jj,2) <= Mmin(2,56)
    Mmin(2,56) = LFP_MH80(jj,2);
    Mmin(1,56) = M;
    Cost(:,56) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,56) = Cost(:,56)/(M*Cell_kWh);
    Mmin(3,56) = Mmin(2,56)/Mmin(1,54); % Unit cost ($/kWh battery)
    Mmin(4,56) = LFP_MH80_day(jj,2); % Daily cost ($/day)
    Mmin(5,56) = day; % Operation day
end
                    end
                else
                    if 200<=M && M<=2200
                        LFP_MC80(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MC80(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_MC80(1,:)); LFP_MC80=LFP_MC80(:,idx);
if LFP_MC80(jj,2) <= Mmin(2,51)
    Mmin(2,51) = LFP_MC80(jj,2);
    Mmin(1,51) = M;
    Cost(:,51) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,51) = Cost(:,51)/(M*Cell_kWh);
    Mmin(3,51) = Mmin(2,51)/Mmin(1,51); % Unit cost ($/kWh battery)
    Mmin(4,51) = Mmin(2,51)/day; % Daily cost ($/day)
    Mmin(5,51) = day; % Operation day
end
                    end
                end
            end

        elseif regexp(subdir(ii).name,"70") % NMC 70% SOH
            SOH2 = 0.7;
            subdirpath = fullfile(maindir, subdir( ii ).name, '*.mat' ); file_names = dir(subdirpath);   % 在这个子文件夹下找后缀为mat的文件

            for jj = 1:length(file_names)
                file_path = fullfile(maindir, subdir(ii).name, file_names(jj).name); load(file_path); % 读取mat文件数据

                Cell_kWh = Cell_Capacity*Cell_Voltage/1000; % kWh

                if regexp(file_names(jj).name,"A")
                    if 200<=M && M<=2600
                        LFP_MA70(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MA70(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_MA70(1,:)); LFP_MA70=LFP_MA70(:,idx);
if LFP_MA70(jj,2) <= Mmin(2,57)
    Mmin(2,57) = LFP_MA70(jj,2);
    Mmin(1,57) = M;
    Cost(:,57) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,57) = Cost(:,57)/(M*Cell_kWh);
    Mmin(3,57) = Mmin(2,57)/Mmin(1,57); % Unit cost ($/kWh battery)
    Mmin(4,57) = Mmin(2,57)/day; % Daily cost ($/day)
    Mmin(5,57) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"B")
                    if 200<=M && M<=2600
                        LFP_MB70(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MB70(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_MB70(1,:)); LFP_MB70=LFP_MB70(:,idx);
if LFP_MB70(jj,2) <= Mmin(2,58)
    Mmin(2,58) = LFP_MB70(jj,2);
    Mmin(1,58) = M;
    Cost(:,58) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,58) = Cost(:,58)/(M*Cell_kWh);
    Mmin(3,58) = Mmin(2,58)/Mmin(1,58); % Unit cost ($/kWh battery)
    Mmin(4,58) = Mmin(2,58)/day; % Daily cost ($/day)
    Mmin(5,58) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"D")
                    if 50<=M && M<=400
                        LFP_MD70(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MD70(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_MD70(1,:)); LFP_MD70=LFP_MD70(:,idx);
if LFP_MD70(jj,2) <= Mmin(2,60)
    Mmin(2,60) = LFP_MD70(jj,2);
    Mmin(1,60) = M;
    Cost(:,60) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,60) = Cost(:,60)/(M*Cell_kWh);
    Mmin(3,60) = Mmin(2,60)/Mmin(1,60); % Unit cost ($/kWh battery)
    Mmin(4,60) = Mmin(2,60)/day; % Daily cost ($/day)
    Mmin(5,60) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"E")
                    if 100<=M && M<=450
                        LFP_ME70(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_ME70(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_ME70(1,:)); LFP_ME70=LFP_ME70(:,idx);
if LFP_ME70(jj,2) <= Mmin(2,61)
    Mmin(2,61) = LFP_ME70(jj,2);
    Mmin(1,61) = M;
    Cost(:,61) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,61) = Cost(:,61)/(M*Cell_kWh);
    Mmin(3,61) = Mmin(2,61)/Mmin(1,61); % Unit cost ($/kWh battery)
    Mmin(4,61) = Mmin(2,61)/day; % Daily cost ($/day)
    Mmin(5,61) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"70F")
                    if 50<=M && M<=400
                        LFP_MF70(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MF70(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_MF70(1,:)); LFP_MF70=LFP_MF70(:,idx);
if LFP_MF70(jj,2) <= Mmin(2,62)
    Mmin(2,62) = LFP_MF70(jj,2);
    Mmin(1,62) = M;
    Cost(:,62) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,62) = Cost(:,62)/(M*Cell_kWh);
    Mmin(3,62) = Mmin(2,62)/Mmin(1,62); % Unit cost ($/kWh battery)
    Mmin(4,62) = Mmin(2,62)/day; % Daily cost ($/day)
    Mmin(5,62) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"G")
                    if 0<=M && M<=80
                        LFP_MG70(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MG70(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_MG70(1,:)); LFP_MG70=LFP_MG70(:,idx);
if LFP_MG70(jj,2) <= Mmin(2,63)
    Mmin(2,63) = LFP_MG70(jj,2);
    Mmin(1,63) = M;
    Cost(:,63) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,63) = Cost(:,63)/(M*Cell_kWh);
    Mmin(3,63) = Mmin(2,63)/Mmin(1,63); % Unit cost ($/kWh battery)
    Mmin(4,63) = Mmin(2,63)/day; % Daily cost ($/day)
    Mmin(5,63) = day; % Operation day
end
                    end
                elseif regexp(file_names(jj).name,"H")
                    if 0<=M && M<=100
                        LFP_MH70(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MH70(jj,2) = max(C_total) + max(C_ope) + Cost_Manu;
                        LFP_MH70_day(jj,1) = M;
                        LFP_MH70_day(jj,2) = LFP_MH70(jj,2)/day;
%                         [~,idx]=sort(LFP_MH70(1,:)); LFP_MH70=LFP_MH70(:,idx);
if LFP_MH70_day(jj,2) <= Mmin(2,64)
    Mmin(2,64) = LFP_MH70(jj,2);
    Mmin(1,64) = M;
    Cost(:,64) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,64) = Cost(:,64)/(M*Cell_kWh);
    Mmin(3,64) = Mmin(2,64)/Mmin(1,64); % Unit cost ($/kWh battery)
    Mmin(4,64) = LFP_MH70_day(jj,2); % Daily cost ($/day)
    Mmin(5,64) = day; % Operation day
end
                    end
                else
                    if 200<=M && M<=2600
                        LFP_MC70(jj,1) = M;
                        Cost_Manu = ConfigurationLFPManufact(M,Cell_kWh,SOH2);
                        run ConfigurationManu.m;
                        LFP_MC70(jj,2) = min(C_total) + max(C_ope) + Cost_Manu;
%                         [~,idx]=sort(LFP_MC70(1,:)); LFP_MC70=LFP_MC70(:,idx);
if LFP_MC70(jj,2) <= Mmin(2,59)
    Mmin(2,59) = LFP_MC70(jj,2);
    Mmin(1,59) = M;
    Cost(:,59) = C_total+C_ope+Cost_Manu;
    Cost_kWh(:,59) = Cost(:,59)/(M*Cell_kWh);
    Mmin(3,59) = Mmin(2,59)/Mmin(1,59); % Unit cost ($/kWh battery)
    Mmin(4,59) = Mmin(2,59)/day; % Daily cost ($/day)
    Mmin(5,59) = day; % Operation day
end
                    end
                end
            end
        end
    end
end
NMC_MA100=sortrows(NMC_MA100,1);
NMC_MA100(all(NMC_MA100==0,2),:) = [];
NMC_MB100=sortrows(NMC_MB100,1);
NMC_MB100(all(NMC_MB100==0,2),:) = [];
NMC_MC100=sortrows(NMC_MC100,1);
NMC_MC100(all(NMC_MC100==0,2),:) = [];
NMC_MD100=sortrows(NMC_MD100,1);
NMC_MD100(all(NMC_MD100==0,2),:) = [];
NMC_ME100=sortrows(NMC_ME100,1);
NMC_ME100(all(NMC_ME100==0,2),:) = [];
NMC_MF100=sortrows(NMC_MF100,1);
NMC_MF100(all(NMC_MF100==0,2),:) = [];
NMC_MG100=sortrows(NMC_MG100,1);
NMC_MG100(all(NMC_MG100==0,2),:) = [];
NMC_MH100=sortrows(NMC_MH100,1);
NMC_MH100(all(NMC_MH100==0,2),:) = [];
NMC_MA90=sortrows(NMC_MA90,1);
NMC_MA90(all(NMC_MA90==0,2),:) = [];
NMC_MB90=sortrows(NMC_MB90,1);
NMC_MB90(all(NMC_MB90==0,2),:) = [];
NMC_MC90=sortrows(NMC_MC90,1);
NMC_MC90(all(NMC_MC90==0,2),:) = [];
NMC_MD90=sortrows(NMC_MD90,1);
NMC_MD90(all(NMC_MD90==0,2),:) = [];
NMC_ME90=sortrows(NMC_ME90,1);
NMC_ME90(all(NMC_ME90==0,2),:) = [];
NMC_MF90=sortrows(NMC_MF90,1);
NMC_MF90(all(NMC_MF90==0,2),:) = [];
NMC_MG90=sortrows(NMC_MG90,1);
NMC_MG90(all(NMC_MG90==0,2),:) = [];
NMC_MH90=sortrows(NMC_MH90,1);
NMC_MH90(all(NMC_MH90==0,2),:) = [];
NMC_MA80=sortrows(NMC_MA80,1);
NMC_MA80(all(NMC_MA80==0,2),:) = [];
NMC_MB80=sortrows(NMC_MB80,1);
NMC_MB80(all(NMC_MB80==0,2),:) = [];
NMC_MC80=sortrows(NMC_MC80,1);
NMC_MC80(all(NMC_MC80==0,2),:) = [];
NMC_MD80=sortrows(NMC_MD80,1);
NMC_MD80(all(NMC_MD80==0,2),:) = [];
NMC_ME80=sortrows(NMC_ME80,1);
NMC_ME80(all(NMC_ME80==0,2),:) = [];
NMC_MF80=sortrows(NMC_MF80,1);
NMC_MF80(all(NMC_MF80==0,2),:) = [];
NMC_MG80=sortrows(NMC_MG80,1);
NMC_MG80(all(NMC_MG80==0,2),:) = [];
NMC_MH80=sortrows(NMC_MH80,1);
NMC_MH80(all(NMC_MH80==0,2),:) = [];
NMC_MA70=sortrows(NMC_MA70,1);
NMC_MA70(all(NMC_MA70==0,2),:) = [];
NMC_MB70=sortrows(NMC_MB70,1);
NMC_MB70(all(NMC_MB70==0,2),:) = [];
NMC_MC70=sortrows(NMC_MC70,1);
NMC_MC70(all(NMC_MC70==0,2),:) = [];
NMC_MD70=sortrows(NMC_MD70,1);
NMC_MD70(all(NMC_MD70==0,2),:) = [];
NMC_ME70=sortrows(NMC_ME70,1);
NMC_ME70(all(NMC_ME70==0,2),:) = [];
NMC_MF70=sortrows(NMC_MF70,1);
NMC_MF70(all(NMC_MF70==0,2),:) = [];
NMC_MG70=sortrows(NMC_MG70,1);
NMC_MG70(all(NMC_MG70==0,2),:) = [];
NMC_MH70=sortrows(NMC_MH70,1);
NMC_MH70(all(NMC_MH70==0,2),:) = [];
LFP_MA100=sortrows(LFP_MA100,1);
LFP_MA100(all(LFP_MA100==0,2),:) = [];
LFP_MB100=sortrows(LFP_MB100,1);
LFP_MB100(all(LFP_MB100==0,2),:) = [];
LFP_MC100=sortrows(LFP_MC100,1);
LFP_MC100(all(LFP_MC100==0,2),:) = [];
LFP_MD100=sortrows(LFP_MD100,1);
LFP_MD100(all(LFP_MD100==0,2),:) = [];
LFP_ME100=sortrows(LFP_ME100,1);
LFP_ME100(all(LFP_ME100==0,2),:) = [];
LFP_MF100=sortrows(LFP_MF100,1);
LFP_MF100(all(LFP_MF100==0,2),:) = [];
LFP_MG100=sortrows(LFP_MG100,1);
LFP_MG100(all(LFP_MG100==0,2),:) = [];
LFP_MH100=sortrows(LFP_MH100,1);
LFP_MH100(all(LFP_MH100==0,2),:) = [];
LFP_MA90=sortrows(LFP_MA90,1);
LFP_MA90(all(LFP_MA90==0,2),:) = [];
LFP_MB90=sortrows(LFP_MB90,1);
LFP_MB90(all(LFP_MB90==0,2),:) = [];
LFP_MC90=sortrows(LFP_MC90,1);
LFP_MC90(all(LFP_MC90==0,2),:) = [];
LFP_MD90=sortrows(LFP_MD90,1);
LFP_MD90(all(LFP_MD90==0,2),:) = [];
LFP_ME90=sortrows(LFP_ME90,1);
LFP_ME90(all(LFP_ME90==0,2),:) = [];
LFP_MF90=sortrows(LFP_MF90,1);
LFP_MF90(all(LFP_MF90==0,2),:) = [];
LFP_MG90=sortrows(LFP_MG90,1);
LFP_MG90(all(LFP_MG90==0,2),:) = [];
LFP_MH90=sortrows(LFP_MH90,1);
LFP_MH90(all(LFP_MH90==0,2),:) = [];
LFP_MA80=sortrows(LFP_MA80,1);
LFP_MA80(all(LFP_MA80==0,2),:) = [];
LFP_MB80=sortrows(LFP_MB80,1);
LFP_MB80(all(LFP_MB80==0,2),:) = [];
LFP_MC80=sortrows(LFP_MC80,1);
LFP_MC80(all(LFP_MC80==0,2),:) = [];
LFP_MD80=sortrows(LFP_MD80,1);
LFP_MD80(all(LFP_MD80==0,2),:) = [];
LFP_ME80=sortrows(LFP_ME80,1);
LFP_ME80(all(LFP_ME80==0,2),:) = [];
LFP_MF80=sortrows(LFP_MF80,1);
LFP_MF80(all(LFP_MF80==0,2),:) = [];
LFP_MG80=sortrows(LFP_MG80,1);
LFP_MG80(all(LFP_MG80==0,2),:) = [];
LFP_MH80=sortrows(LFP_MH80,1);
LFP_MH80(all(LFP_MH80==0,2),:) = [];
LFP_MA70=sortrows(LFP_MA70,1);
LFP_MA70(all(LFP_MA70==0,2),:) = [];
LFP_MB70=sortrows(LFP_MB70,1);
LFP_MB70(all(LFP_MB70==0,2),:) = [];
LFP_MC70=sortrows(LFP_MC70,1);
LFP_MC70(all(LFP_MC70==0,2),:) = [];
LFP_MD70=sortrows(LFP_MD70,1);
LFP_MD70(all(LFP_MD70==0,2),:) = [];
LFP_ME70=sortrows(LFP_ME70,1);
LFP_ME70(all(LFP_ME70==0,2),:) = [];
LFP_MF70=sortrows(LFP_MF70,1);
LFP_MF70(all(LFP_MF70==0,2),:) = [];
LFP_MG70=sortrows(LFP_MG70,1);
LFP_MG70(all(LFP_MG70==0,2),:) = [];
LFP_MH70=sortrows(LFP_MH70,1);
LFP_MH70(all(LFP_MH70==0,2),:) = [];
NMC_MA100(20,2)=0;
NMC_MB100(20,2)=0;
NMC_MC100(20,2)=0;
NMC_MD100(20,2)=0;
NMC_ME100(20,2)=0;
NMC_MF100(20,2)=0;
NMC_MG100(20,2)=0;
NMC_MH100(20,2)=0;
NMC_MA90(20,2)=0;
NMC_MB90(20,2)=0;
NMC_MC90(20,2)=0;
NMC_MD90(20,2)=0;
NMC_ME90(20,2)=0;
NMC_MF90(20,2)=0;
NMC_MG90(20,2)=0;
NMC_MH90(20,2)=0;
NMC_MA80(20,2)=0;
NMC_MB80(20,2)=0;
NMC_MC80(20,2)=0;
NMC_MD80(20,2)=0;
NMC_ME80(20,2)=0;
NMC_MF80(20,2)=0;
NMC_MG80(20,2)=0;
NMC_MH80(20,2)=0;
NMC_MA70(20,2)=0;
NMC_MB70(20,2)=0;
NMC_MC70(20,2)=0;
NMC_MD70(20,2)=0;
NMC_ME70(20,2)=0;
NMC_MF70(20,2)=0;
NMC_MG70(20,2)=0;
NMC_MH70(20,2)=0;
LFP_MA100(20,2)=0;
LFP_MB100(20,2)=0;
LFP_MC100(20,2)=0;
LFP_MD100(20,2)=0;
LFP_ME100(20,2)=0;
LFP_MF100(20,2)=0;
LFP_MG100(20,2)=0;
LFP_MH100(20,2)=0;
LFP_MA90(20,2)=0;
LFP_MB90(20,2)=0;
LFP_MC90(20,2)=0;
LFP_MD90(20,2)=0;
LFP_ME90(20,2)=0;
LFP_MF90(20,2)=0;
LFP_MG90(20,2)=0;
LFP_MH90(20,2)=0;
LFP_MA80(20,2)=0;
LFP_MB80(20,2)=0;
LFP_MC80(20,2)=0;
LFP_MD80(20,2)=0;
LFP_ME80(20,2)=0;
LFP_MF80(20,2)=0;
LFP_MG80(20,2)=0;
LFP_MH80(20,2)=0;
LFP_MA70(20,2)=0;
LFP_MB70(20,2)=0;
LFP_MC70(20,2)=0;
LFP_MD70(20,2)=0;
LFP_ME70(20,2)=0;
LFP_MF70(20,2)=0;
LFP_MG70(20,2)=0;
LFP_MH70(20,2)=0;


for i = 1:20
    for j = 1:2
        if NMC_MA100(i,j) == 0
            NMC_MA100(i,j) = NaN;
        end
        if NMC_MB100(i,j) == 0
            NMC_MB100(i,j) = NaN;
        end
        if NMC_MC100(i,j) == 0
            NMC_MC100(i,j) = NaN;
        end
        if NMC_MD100(i,j) == 0
            NMC_MD100(i,j) = NaN;
        end
        if NMC_ME100(i,j) == 0
            NMC_ME100(i,j) = NaN;
        end
        if NMC_MF100(i,j) == 0
            NMC_MF100(i,j) = NaN;
        end
        if NMC_MG100(i,j) == 0
            NMC_MG100(i,j) = NaN;
        end
        if NMC_MH100(i,j) == 0
            NMC_MH100(i,j) = NaN;
        end
        if NMC_MA90(i,j) == 0
            NMC_MA90(i,j) = NaN;
        end
        if NMC_MB90(i,j) == 0
            NMC_MB90(i,j) = NaN;
        end
        if NMC_MC90(i,j) == 0
            NMC_MC90(i,j) = NaN;
        end
        if NMC_MD90(i,j) == 0
            NMC_MD90(i,j) = NaN;
        end
        if NMC_ME90(i,j) == 0
            NMC_ME90(i,j) = NaN;
        end
        if NMC_MF90(i,j) == 0
            NMC_MF90(i,j) = NaN;
        end
        if NMC_MG90(i,j) == 0
            NMC_MG90(i,j) = NaN;
        end
        if NMC_MH90(i,j) == 0
            NMC_MH90(i,j) = NaN;
        end
        if NMC_MA80(i,j) == 0
            NMC_MA80(i,j) = NaN;
        end
        if NMC_MB80(i,j) == 0
            NMC_MB80(i,j) = NaN;
        end
        if NMC_MC80(i,j) == 0
            NMC_MC80(i,j) = NaN;
        end
        if NMC_MD80(i,j) == 0
            NMC_MD80(i,j) = NaN;
        end
        if NMC_ME80(i,j) == 0
            NMC_ME80(i,j) = NaN;
        end
        if NMC_MF80(i,j) == 0
            NMC_MF80(i,j) = NaN;
        end
        if NMC_MG80(i,j) == 0
            NMC_MG80(i,j) = NaN;
        end
        if NMC_MH80(i,j) == 0
            NMC_MH80(i,j) = NaN;
        end
        if NMC_MA70(i,j) == 0
            NMC_MA70(i,j) = NaN;
        end
        if NMC_MB70(i,j) == 0
            NMC_MB70(i,j) = NaN;
        end
        if NMC_MC70(i,j) == 0
            NMC_MC70(i,j) = NaN;
        end
        if NMC_MD70(i,j) == 0
            NMC_MD70(i,j) = NaN;
        end
        if NMC_ME70(i,j) == 0
            NMC_ME70(i,j) = NaN;
        end
        if NMC_MF70(i,j) == 0
            NMC_MF70(i,j) = NaN;
        end
        if NMC_MG70(i,j) == 0
            NMC_MG70(i,j) = NaN;
        end
        if NMC_MH70(i,j) == 0
            NMC_MH70(i,j) = NaN;
        end
        if LFP_MA100(i,j) == 0
            LFP_MA100(i,j) = NaN;
        end
        if LFP_MB100(i,j) == 0
            LFP_MB100(i,j) = NaN;
        end
        if LFP_MC100(i,j) == 0
            LFP_MC100(i,j) = NaN;
        end
        if LFP_MD100(i,j) == 0
            LFP_MD100(i,j) = NaN;
        end
        if LFP_ME100(i,j) == 0
            LFP_ME100(i,j) = NaN;
        end
        if LFP_MF100(i,j) == 0
            LFP_MF100(i,j) = NaN;
        end
        if LFP_MG100(i,j) == 0
            LFP_MG100(i,j) = NaN;
        end
        if LFP_MH100(i,j) == 0
            LFP_MH100(i,j) = NaN;
        end
        if LFP_MA90(i,j) == 0
            LFP_MA90(i,j) = NaN;
        end
        if LFP_MB90(i,j) == 0
            LFP_MB90(i,j) = NaN;
        end
        if LFP_MC90(i,j) == 0
            LFP_MC90(i,j) = NaN;
        end
        if LFP_MD90(i,j) == 0
            LFP_MD90(i,j) = NaN;
        end
        if LFP_ME90(i,j) == 0
            LFP_ME90(i,j) = NaN;
        end
        if LFP_MF90(i,j) == 0
            LFP_MF90(i,j) = NaN;
        end
        if LFP_MG90(i,j) == 0
            LFP_MG90(i,j) = NaN;
        end
        if LFP_MH90(i,j) == 0
            LFP_MH90(i,j) = NaN;
        end
        if LFP_MA80(i,j) == 0
            LFP_MA80(i,j) = NaN;
        end
        if LFP_MB80(i,j) == 0
            LFP_MB80(i,j) = NaN;
        end
        if LFP_MC80(i,j) == 0
            LFP_MC80(i,j) = NaN;
        end
        if LFP_MD80(i,j) == 0
            LFP_MD80(i,j) = NaN;
        end
        if LFP_ME80(i,j) == 0
            LFP_ME80(i,j) = NaN;
        end
        if LFP_MF80(i,j) == 0
            LFP_MF80(i,j) = NaN;
        end
        if LFP_MG80(i,j) == 0
            LFP_MG80(i,j) = NaN;
        end
        if LFP_MH80(i,j) == 0
            LFP_MH80(i,j) = NaN;
        end
        if LFP_MA70(i,j) == 0
            LFP_MA70(i,j) = NaN;
        end
        if LFP_MB70(i,j) == 0
            LFP_MB70(i,j) = NaN;
        end
        if LFP_MC70(i,j) == 0
            LFP_MC70(i,j) = NaN;
        end
        if LFP_MD70(i,j) == 0
            LFP_MD70(i,j) = NaN;
        end
        if LFP_ME70(i,j) == 0
            LFP_ME70(i,j) = NaN;
        end
        if LFP_MF70(i,j) == 0
            LFP_MF70(i,j) = NaN;
        end
        if LFP_MG70(i,j) == 0
            LFP_MG70(i,j) = NaN;
        end
        if LFP_MH70(i,j) == 0
            LFP_MH70(i,j) = NaN;
        end
    end
end
DataA = [NMC_MA70 NMC_MA80 NMC_MA90 NMC_MA100 LFP_MA70 LFP_MA80 LFP_MA90 LFP_MA100];
DataB = [NMC_MB70 NMC_MB80 NMC_MB90 NMC_MB100 LFP_MB70 LFP_MB80 LFP_MB90 LFP_MB100];
DataC = [NMC_MC70 NMC_MC80 NMC_MC90 NMC_MC100 LFP_MC70 LFP_MC80 LFP_MC90 LFP_MC100];
DataD = [NMC_MD70 NMC_MD80 NMC_MD90 NMC_MD100 LFP_MD70 LFP_MD80 LFP_MD90 LFP_MD100];
DataE = [NMC_ME70 NMC_ME80 NMC_ME90 NMC_ME100 LFP_ME70 LFP_ME80 LFP_ME90 LFP_ME100];
DataF = [NMC_MF70 NMC_MF80 NMC_MF90 NMC_MF100 LFP_MF70 LFP_MF80 LFP_MF90 LFP_MF100];
DataG = [NMC_MG70 NMC_MG80 NMC_MG90 NMC_MG100 LFP_MG70 LFP_MG80 LFP_MG90 LFP_MG100];
DataH = [NMC_MH70 NMC_MH80 NMC_MH90 NMC_MH100 LFP_MH70 LFP_MH80 LFP_MH90 LFP_MH100];
Data = [DataA DataB DataC DataD DataE DataF DataG DataH];
Con_Re = ones(5,8*4*2)*5;

Con_Re = [Mmin(:,1) Mmin(:,9) Mmin(:,17) Mmin(:,25)...
    Mmin(:,2) Mmin(:,10) Mmin(:,18) Mmin(:,26)...
    Mmin(:,3) Mmin(:,11) Mmin(:,19) Mmin(:,27)...
    Mmin(:,4) Mmin(:,12) Mmin(:,20) Mmin(:,28)...
    Mmin(:,5) Mmin(:,13) Mmin(:,21) Mmin(:,29)...
    Mmin(:,6) Mmin(:,14) Mmin(:,22) Mmin(:,30)...
    Mmin(:,7) Mmin(:,15) Mmin(:,23) Mmin(:,31)...
    Mmin(:,8) Mmin(:,16) Mmin(:,24) Mmin(:,32)...
    Mmin(:,33) Mmin(:,41) Mmin(:,49) Mmin(:,57)...
    Mmin(:,34) Mmin(:,42) Mmin(:,50) Mmin(:,58)...
    Mmin(:,35) Mmin(:,43) Mmin(:,51) Mmin(:,59)...
    Mmin(:,36) Mmin(:,44) Mmin(:,52) Mmin(:,60)...
    Mmin(:,37) Mmin(:,45) Mmin(:,53) Mmin(:,61)...
    Mmin(:,38) Mmin(:,46) Mmin(:,54) Mmin(:,62)...
    Mmin(:,39) Mmin(:,47) Mmin(:,55) Mmin(:,63)...
    Mmin(:,40) Mmin(:,48) Mmin(:,56) Mmin(:,64)...
    ];
for i = 1:64
    if rem(i-1,4)==0
       Con_Re(:,i) = nan;
    end
end
a = [min(Con_Re(1,:)),max(Con_Re(1,:));min(Con_Re(2,:)),max(Con_Re(2,:));min(Con_Re(3,:)),max(Con_Re(3,:));min(Con_Re(4,:)),max(Con_Re(4,:));min(Con_Re(5,:)),max(Con_Re(5,:))];

