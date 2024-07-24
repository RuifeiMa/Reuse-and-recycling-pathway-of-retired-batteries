C_total = zeros(1,length(SOH_table));
for i=1:length(SOH_table)
    if SOH_table(i)>0.4
        day = i;
        C_total(i) = C_total_table(i);
%         break;
    else
        day = i;
        C_total(i) = C_total_table(i);
        break;
    end
end
for i = 1:length(SOH_table)
if C_total(i) == 0
    C_total(i) = NaN;
end
end
% C_total = C_total_table(day);
C_ope = zeros(1,length(SOH_table));
% C_Manu = zeros(1,5475);
year = day/365;
ir=0.1;
id=0.02;
irid = (1+ir)/(1+id);
for i=1:day
    if (i/365)<=year
        C_ope(i+1) = C_ope(i)+Cell_kWh*M*25/6.5*(irid)^(i/365)/365/3;
%         C_Manu(i) = Cost_manu;
    elseif i/365< year+1
        C_ope(i+1) = C_ope(i)+Cell_kWh*M*25/6.5*(irid)^(i/365)*(year+1-(i/365))/365/3;
%         C_Manu(i) = Cost_manu;
    else
        break;
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
z = y-P_load_max; % battery consume power


% Cost_Use_kWh = (max(C_total)+max(C_ope));%/BattEner;
% Cost_Use_kWh_year = (max(C_total)+max(C_ope))/BattEner/year;
% Cost_Use_year = (max(C_total)+max(C_ope))/year/1000;
% end
% SOHsum1=zeros(1,6000);
%     SOH = 0.81;
%     for i = 2:6000
%         if SOH >= 0.4
%             cycle = i+1900;
%             %         SOH = (-3.158e-10*Cycle^3+1.808e-6*cycle^2-0.01267*Cycle+98.82)*0.01;
%             if cycle<=4.09634e+03
%                 SOH = interp1(LFP_Cycle,LFP_SOH,cycle,'linear')*0.01;
%             else
%                 SOH = (-3.158e-10*cycle^3+1.808e-6*cycle^2-0.01267*cycle+98.82)*0.01;
%             end
%             SOHsum1(1,i) = SOHsum1(1,i-1)+SOH;
%         end
%     end
% 
%     SOHsum2=zeros(1,2000);
%     SOH = 0.81;
%     for i = 2:2000
%         if SOH >= 0.4
%             cycle = i+1000;
%             SOH = interp1(NMC_Cycle,NMC_SOH,cycle,'linear')*0.01;
%             SOHsum2(i) = SOHsum2(i-1)+SOH;
%         end
%     end
%     C_battery_avarage = max(SOHsum1)*45/100+max(SOHsum2)*55/100;
