%%%%%%%%%%%% Cell & module & pack manufacturing carbon footprint detalis

%%%%%%%%%%%% NMC cell & module & pack manufacturing carbon footprint detalis
%%%%%%% Order: [CO2_CellPos CO2_CellNeg CO2_CellEly CO2_CellSepa CO2_CellPosTerm CO2_CellNegTerm CO2_CellPou CO2_CellEner], for more corresponding explanation information, please refer to the 'NMCMaterials.m' file.
NMC_CO2_Cell_pie = [NMC_CO2_Cell_EV(1,:);
    reshape(NMC_CO2_Cell_ESS2(6,1,:),1,[]);reshape(NMC_CO2_Cell_ESS2(6,2,:),1,[]);reshape(NMC_CO2_Cell_ESS2(6,3,:),1,[]);reshape(NMC_CO2_Cell_ESS2(6,4,:),1,[]);
    reshape(NMC_CO2_Cell_CBS4(6,1,:),1,[]);reshape(NMC_CO2_Cell_CBS4(6,2,:),1,[]);reshape(NMC_CO2_Cell_CBS4(6,3,:),1,[]);reshape(NMC_CO2_Cell_CBS4(6,4,:),1,[]);
    reshape(NMC_CO2_Cell_LSV(6,1,:),1,[]);reshape(NMC_CO2_Cell_LSV(6,2,:),1,[]);reshape(NMC_CO2_Cell_LSV(6,3,:),1,[]);reshape(NMC_CO2_Cell_LSV(6,4,:),1,[])];
%%%%%%%% [CO2_Mod CO2_Pac]
NMC_CO2_Manu_pie = [NMC_CO2_Manu_EV(1,:);
    reshape(NMC_CO2_Manu_ESS2(6,1,:),1,[]);reshape(NMC_CO2_Manu_ESS2(6,2,:),1,[]);reshape(NMC_CO2_Manu_ESS2(6,3,:),1,[]);reshape(NMC_CO2_Manu_ESS2(6,4,:),1,[]);
    reshape(NMC_CO2_Manu_CBS4(6,1,:),1,[]);reshape(NMC_CO2_Manu_CBS4(6,2,:),1,[]);reshape(NMC_CO2_Manu_CBS4(6,3,:),1,[]);reshape(NMC_CO2_Manu_CBS4(6,4,:),1,[]);
    reshape(NMC_CO2_Manu_LSV(6,1,:),1,[]);reshape(NMC_CO2_Manu_LSV(6,2,:),1,[]);reshape(NMC_CO2_Manu_LSV(6,3,:),1,[]);reshape(NMC_CO2_Manu_LSV(6,4,:),1,[])];
%%%%%%%% NMC cell & manu carbon emission sum
NMC_CO2_Cell_Manu_pie = [NMC_CO2_Cell_pie,NMC_CO2_Manu_pie]';
NMC_CO2_Cell_Manu_sum_pie = [NMC_CO2_Cell_kWh_EV,NMC_CO2_Manu_kWh_EV; 
    NMC_CO2_Cell_kWh_ESS2(6,1),NMC_CO2_Manu_kWh_ESS2(6,1);
    NMC_CO2_Cell_kWh_ESS2(6,2),NMC_CO2_Manu_kWh_ESS2(6,2);
    NMC_CO2_Cell_kWh_ESS2(6,3),NMC_CO2_Manu_kWh_ESS2(6,3);
    NMC_CO2_Cell_kWh_ESS2(6,4),NMC_CO2_Manu_kWh_ESS2(6,4);
    NMC_CO2_Cell_kWh_CBS4(6,1),NMC_CO2_Manu_kWh_CBS4(6,1);
    NMC_CO2_Cell_kWh_CBS4(6,2),NMC_CO2_Manu_kWh_CBS4(6,2);
    NMC_CO2_Cell_kWh_CBS4(6,3),NMC_CO2_Manu_kWh_CBS4(6,3);
    NMC_CO2_Cell_kWh_CBS4(6,4),NMC_CO2_Manu_kWh_CBS4(6,4);
    NMC_CO2_Cell_kWh_LSV(6,1),NMC_CO2_Manu_kWh_LSV(6,1);
    NMC_CO2_Cell_kWh_LSV(6,2),NMC_CO2_Manu_kWh_LSV(6,2);
    NMC_CO2_Cell_kWh_LSV(6,3),NMC_CO2_Manu_kWh_LSV(6,3);
    NMC_CO2_Cell_kWh_LSV(6,4),NMC_CO2_Manu_kWh_LSV(6,4);]';

 %%%%%% NMC hydro recycle carbon footprintn details
 %%%%%%% Order: [CO2_H2SO4_mar CO2_An_mar CO2_Na2CO3_mar CO2_water_mar CO2_Elec CO2_Li2CO3_pro CO2_NiSO4_pro CO2_CoSO4_pro CO2_MnSO4_pro CO2_Graphite_pro CO2_Al_pro CO2_Cu_pro]
 NMC_CO2_Hydro_sum_pie = [reshape(NMC_CO2_PacRec_ESS1(6,1,:),1,[]),reshape(NMC_CO2_Hydro_ESS1(6,1,:),1,[]); % 40% ended SOH
    reshape(NMC_CO2_PacRec_ESS2(5,1,:),1,[]),reshape(NMC_CO2_Hydro_ESS2(5,1,:),1,[]); % 50% ended SOH
    reshape(NMC_CO2_PacRec_ESS2(4,1,:),1,[]),reshape(NMC_CO2_Hydro_ESS2(4,1,:),1,[]); % 60% ended SOH
    reshape(NMC_CO2_PacRec_ESS2(3,1,:),1,[]),reshape(NMC_CO2_Hydro_ESS2(3,1,:),1,[]); % 70% ended SOH
    reshape(NMC_CO2_PacRec_ESS2(2,1,:),1,[]),reshape(NMC_CO2_Hydro_ESS2(2,1,:),1,[]); % 80% ended SOH
    reshape(NMC_CO2_PacRec_ESS2(1,1,:),1,[]),reshape(NMC_CO2_Hydro_ESS2(1,1,:),1,[]);]/NMC_BattEner_ESS2(6,1); % 90% ended SOH
for i = 1:6
    y=find(NMC_CO2_Hydro_sum_pie(i,:)>=0);
    a(i,:)=NMC_CO2_Hydro_sum_pie(i,y);
    as(i,:)=sum(a(i,:)) ;
    z=find(NMC_CO2_Hydro_sum_pie(i,:)<0);
    b(i,:)=NMC_CO2_Hydro_sum_pie(i,z);
    bs(i,:)=sum(b(i,:)) ;
end
c = [a,abs(b)]'; % detalis - pie
cs = [as,bs,as+bs]; % sum - bar
cs_pie = [as,abs(bs)]'; % sum - pie

%%%%%% NMC direct recycle carbon footprint details
%%%%%%% Order: [CO2_Li2CO3_mar CO2_water_mar CO2_Elec CO2_NMC622_pro CO2_Graphite_pro CO2_Al_pro CO2_Cu_pro]
NMC_CO2_Direct_sum_pie = [reshape(NMC_CO2_PacRec_ESS1(6,1,:),1,[]),reshape(NMC_CO2_Direct_ESS1(6,1,:),1,[]); % 40% ended SOH
    reshape(NMC_CO2_PacRec_ESS2(5,1,:),1,[]),reshape(NMC_CO2_Direct_ESS2(5,1,:),1,[]); % 50% ended SOH
    reshape(NMC_CO2_PacRec_ESS2(4,1,:),1,[]),reshape(NMC_CO2_Direct_ESS2(4,1,:),1,[]); % 60% ended SOH
    reshape(NMC_CO2_PacRec_ESS2(3,1,:),1,[]),reshape(NMC_CO2_Direct_ESS2(3,1,:),1,[]); % 70% ended SOH
    reshape(NMC_CO2_PacRec_ESS2(2,1,:),1,[]),reshape(NMC_CO2_Direct_ESS2(2,1,:),1,[]); % 80% ended SOH
    reshape(NMC_CO2_PacRec_ESS2(1,1,:),1,[]),reshape(NMC_CO2_Direct_ESS2(1,1,:),1,[]);]/NMC_BattEner_ESS2(6,1); % 90% ended SOH
for i = 1:6
    y=find(NMC_CO2_Direct_sum_pie(i,:)>=0);
    d(i,:)=NMC_CO2_Direct_sum_pie(i,y);
    ds(i,:)=sum(d(i,:)) ;
    z=find(NMC_CO2_Direct_sum_pie(i,:)<0);
    e(i,:)=NMC_CO2_Direct_sum_pie(i,z);
    es(i,:)=sum(e(i,:)) ;
end
f = [d,abs(e)]'; % detalis - pie
fs = [ds,es,ds+es]; % sum - bar
fs_pie = [ds,abs(es)]'; % sum - pie

%%%%%% NMC pyro recycle carbon footprint details
%%%%%%% Order: [CO2_H2SO4_mar CO2_Coke_mar CO2_Na2CO3_mar CO2_water_mar CO2_Elec CO2_Li2CO3_pro CO2_NiSO4_pro CO2_CoSO4_pro CO2_MnSO4_pro CO2_Graphite_pro CO2_Al_pro CO2_Cu_pro]
NMC_CO2_Pyro_sum_pie = [reshape(NMC_CO2_PacRec_ESS1(6,1,:),1,[]),reshape(NMC_CO2_Pyro_ESS1(6,1,:),1,[]); % 40% ended SOH
    reshape(NMC_CO2_PacRec_ESS2(5,1,:),1,[]),reshape(NMC_CO2_Pyro_ESS2(5,1,:),1,[]); % 50% ended SOH
    reshape(NMC_CO2_PacRec_ESS2(4,1,:),1,[]),reshape(NMC_CO2_Pyro_ESS2(4,1,:),1,[]); % 60% ended SOH
    reshape(NMC_CO2_PacRec_ESS2(3,1,:),1,[]),reshape(NMC_CO2_Pyro_ESS2(3,1,:),1,[]); % 70% ended SOH
    reshape(NMC_CO2_PacRec_ESS2(2,1,:),1,[]),reshape(NMC_CO2_Pyro_ESS2(2,1,:),1,[]); % 80% ended SOH
    reshape(NMC_CO2_PacRec_ESS2(1,1,:),1,[]),reshape(NMC_CO2_Pyro_ESS2(1,1,:),1,[]);]/NMC_BattEner_ESS2(6,1); % 90% ended SOH
for i = 1:6    
    y=find(NMC_CO2_Pyro_sum_pie(i,:)>=0);
    g(i,:)=NMC_CO2_Pyro_sum_pie(i,y);
    gs(i,:)=sum(g(i,:)) ;
    z=find(NMC_CO2_Pyro_sum_pie(i,:)<0);
    h(i,:)=NMC_CO2_Pyro_sum_pie(i,z);
    hs(i,:)=sum(h(i,:));
end
j = [g,abs(h)]'; % detalis - pie
js = [gs,hs,gs+hs]; % sum - bar
js_pie = [gs,abs(hs)]'; % sum - pie

%%%%%%%%%%%%% LFP cell & module & pack manufacturing carbon footprint detalis
%%%%%%% Order: [CO2_CellPos CO2_CellNeg CO2_CellEly CO2_CellSepa CO2_CellPosTerm CO2_CellNegTerm CO2_CellPou CO2_CellEner], for more corresponding explanation information, please refer to the 'LFPMaterials.m' file.
LFP_CO2_Cell_pie = [LFP_CO2_Cell_EV(1,:);
    reshape(LFP_CO2_Cell_ESS2(6,1,:),1,[]);reshape(LFP_CO2_Cell_ESS2(6,2,:),1,[]);reshape(LFP_CO2_Cell_ESS2(6,3,:),1,[]);reshape(LFP_CO2_Cell_ESS2(6,4,:),1,[]);
    reshape(LFP_CO2_Cell_CBS4(6,1,:),1,[]);reshape(LFP_CO2_Cell_CBS4(6,2,:),1,[]);reshape(LFP_CO2_Cell_CBS4(6,3,:),1,[]);reshape(LFP_CO2_Cell_CBS4(6,4,:),1,[]);
    reshape(LFP_CO2_Cell_LSV(6,1,:),1,[]);reshape(LFP_CO2_Cell_LSV(6,2,:),1,[]);reshape(LFP_CO2_Cell_LSV(6,3,:),1,[]);reshape(LFP_CO2_Cell_LSV(6,4,:),1,[])];
%%%%%%%% [CO2_Mod CO2_Pac]
LFP_CO2_Manu_pie = [LFP_CO2_Manu_EV(1,:);
    reshape(LFP_CO2_Manu_ESS2(6,1,:),1,[]);reshape(LFP_CO2_Manu_ESS2(6,2,:),1,[]);reshape(LFP_CO2_Manu_ESS2(6,3,:),1,[]);reshape(LFP_CO2_Manu_ESS2(6,4,:),1,[]);
    reshape(LFP_CO2_Manu_CBS4(6,1,:),1,[]);reshape(LFP_CO2_Manu_CBS4(6,2,:),1,[]);reshape(LFP_CO2_Manu_CBS4(6,3,:),1,[]);reshape(LFP_CO2_Manu_CBS4(6,4,:),1,[]);
    reshape(LFP_CO2_Manu_LSV(6,1,:),1,[]);reshape(LFP_CO2_Manu_LSV(6,2,:),1,[]);reshape(LFP_CO2_Manu_LSV(6,3,:),1,[]);reshape(LFP_CO2_Manu_LSV(6,4,:),1,[])];
%%%%%%%% NMC cell & manu carbon emission sum
LFP_CO2_Cell_Manu_pie = [LFP_CO2_Cell_pie,LFP_CO2_Manu_pie]';
LFP_CO2_Cell_Manu_sum_pie = [LFP_CO2_Cell_kWh_EV,LFP_CO2_Manu_kWh_EV;
    LFP_CO2_Cell_kWh_ESS2(6,1),LFP_CO2_Manu_kWh_ESS2(6,1);
    LFP_CO2_Cell_kWh_ESS2(6,2),LFP_CO2_Manu_kWh_ESS2(6,2);
    LFP_CO2_Cell_kWh_ESS2(6,3),LFP_CO2_Manu_kWh_ESS2(6,3);
    LFP_CO2_Cell_kWh_ESS2(6,4),LFP_CO2_Manu_kWh_ESS2(6,4);
    LFP_CO2_Cell_kWh_CBS4(6,1),LFP_CO2_Manu_kWh_CBS4(6,1);
    LFP_CO2_Cell_kWh_CBS4(6,2),LFP_CO2_Manu_kWh_CBS4(6,2);
    LFP_CO2_Cell_kWh_CBS4(6,3),LFP_CO2_Manu_kWh_CBS4(6,3);
    LFP_CO2_Cell_kWh_CBS4(6,4),LFP_CO2_Manu_kWh_CBS4(6,4);
    LFP_CO2_Cell_kWh_LSV(6,1),LFP_CO2_Manu_kWh_LSV(6,1);
    LFP_CO2_Cell_kWh_LSV(6,2),LFP_CO2_Manu_kWh_LSV(6,2);
    LFP_CO2_Cell_kWh_LSV(6,3),LFP_CO2_Manu_kWh_LSV(6,3);
    LFP_CO2_Cell_kWh_LSV(6,4),LFP_CO2_Manu_kWh_LSV(6,4);]';

%%%%%% LFP hydro recycle carbon footprint details
%%%%%%% Order: [CO2_H2SO4_mar CO2_H2O2_mar CO2_Na2CO3_mar CO2_water_mar CO2_Elec CO2_Li2CO3_pro CO2_FePO4_pro CO2_Graphite_pro CO2_Al_pro CO2_Cu_pro]
LFP_CO2_Hydro_sum_pie = [reshape(LFP_CO2_PacRec_ESS2(6,1,:),1,[]),reshape(LFP_CO2_Hydro_ESS2(6,1,:),1,[]); % 40% ended SOH
    reshape(LFP_CO2_PacRec_ESS2(5,1,:),1,[]),reshape(LFP_CO2_Hydro_ESS2(5,1,:),1,[]); % 50% ended SOH
    reshape(LFP_CO2_PacRec_ESS2(4,1,:),1,[]),reshape(LFP_CO2_Hydro_ESS2(4,1,:),1,[]); % 60% ended SOH
    reshape(LFP_CO2_PacRec_ESS2(3,1,:),1,[]),reshape(LFP_CO2_Hydro_ESS2(3,1,:),1,[]); % 70% ended SOH
    reshape(LFP_CO2_PacRec_ESS2(2,1,:),1,[]),reshape(LFP_CO2_Hydro_ESS2(2,1,:),1,[]); % 80% ended SOH
    reshape(LFP_CO2_PacRec_ESS2(1,1,:),1,[]),reshape(LFP_CO2_Hydro_ESS2(1,1,:),1,[]);]/LFP_BattEner_ESS2(6,1); % 90% ended SOH
for i = 1:6
    y=find(LFP_CO2_Hydro_sum_pie(i,:)>=0);
    k(i,:)=LFP_CO2_Hydro_sum_pie(i,y);
    ks(i,:)=sum(k(i,:)) ;
    z=find(LFP_CO2_Hydro_sum_pie(i,:)<0);
    l(i,:)=LFP_CO2_Hydro_sum_pie(i,z);
    ls(i,:)=sum(l(i,:)) ;
end
m = [k,abs(l)]'; % detalis - pie
ms = [ks,ls,ks+ls]; % sum - bar
ms_pie = [ks,abs(ls)]'; % sum - pie

%%%%%% LFP direct recycle carbon footprint details
%%%%%%% Order: [CO2_Li2CO3_mar CO2_water_mar CO2_Elec CO2_LiFePO4_pro CO2_Graphite_pro CO2_Al_pro CO2_Cu_pro]
LFP_CO2_Direct_sum_pie = [reshape(LFP_CO2_PacRec_ESS1(6,1,:),1,[]),reshape(LFP_CO2_Direct_ESS2(6,1,:),1,[]); % 40% ended SOH
    reshape(LFP_CO2_PacRec_ESS2(5,1,:),1,[]),reshape(LFP_CO2_Direct_ESS2(5,1,:),1,[]); % 50% ended SOH
    reshape(LFP_CO2_PacRec_ESS2(4,1,:),1,[]),reshape(LFP_CO2_Direct_ESS2(4,1,:),1,[]); % 60% ended SOH
    reshape(LFP_CO2_PacRec_ESS2(3,1,:),1,[]),reshape(LFP_CO2_Direct_ESS2(3,1,:),1,[]); % 70% ended SOH
    reshape(LFP_CO2_PacRec_ESS2(2,1,:),1,[]),reshape(LFP_CO2_Direct_ESS2(2,1,:),1,[]); % 80% ended SOH
    reshape(LFP_CO2_PacRec_ESS2(1,1,:),1,[]),reshape(LFP_CO2_Direct_ESS2(1,1,:),1,[]);]/LFP_BattEner_ESS2(6,1); % 90% ended SOH
for i = 1:6
    y=find(LFP_CO2_Direct_sum_pie(i,:)>=0);
    u(i,:)=LFP_CO2_Direct_sum_pie(i,y);
    us(i,:)=sum(u(i,:)) ;
    z=find(LFP_CO2_Direct_sum_pie(i,:)<0);
    o(i,:)=LFP_CO2_Direct_sum_pie(i,z);
    os(i,:)=sum(o(i,:)) ;
end
p = [u,abs(o)]'; % detalis - pie
ps = [us,os,us+os]; % sum - bar
ps_pie = [us,abs(os)]'; % sum - pie

%%%%%% LFP pyro recycle carbon footprint details
%%%%%%% Order: [CO2_H2SO4_mar CO2_Coke_mar CO2_Na2CO3_mar CO2_water_mar CO2_Elec CO2_Li2CO3_pro CO2_Graphite_pro CO2_Al_pro CO2_Cu_pro]
LFP_CO2_Pyro_sum_pie = [reshape(LFP_CO2_PacRec_ESS2(6,1,:),1,[]),reshape(LFP_CO2_Pyro_ESS2(6,1,:),1,[]); % 40% ended SOH
    reshape(LFP_CO2_PacRec_ESS2(5,1,:),1,[]),reshape(LFP_CO2_Pyro_ESS2(5,1,:),1,[]); % 50% ended SOH
    reshape(LFP_CO2_PacRec_ESS2(4,1,:),1,[]),reshape(LFP_CO2_Pyro_ESS2(4,1,:),1,[]); % 60% ended SOH
    reshape(LFP_CO2_PacRec_ESS2(3,1,:),1,[]),reshape(LFP_CO2_Pyro_ESS2(3,1,:),1,[]); % 70% ended SOH
    reshape(LFP_CO2_PacRec_ESS2(2,1,:),1,[]),reshape(LFP_CO2_Pyro_ESS2(2,1,:),1,[]); % 80% ended SOH
    reshape(LFP_CO2_PacRec_ESS2(1,1,:),1,[]),reshape(LFP_CO2_Pyro_ESS2(1,1,:),1,[]);]/LFP_BattEner_ESS2(6,1); % 90% ended SOH
for i = 1:6
    
    y=find(LFP_CO2_Pyro_sum_pie(i,:)>=0);
    q(i,:)=LFP_CO2_Pyro_sum_pie(i,y);
    qs(i,:)=sum(q(i,:)) ;
    z=find(LFP_CO2_Pyro_sum_pie(i,:)<0);
    r(i,:)=LFP_CO2_Pyro_sum_pie(i,z);
    rs(i,:)=sum(r(i,:));
end
s = [q,abs(r)]'; % detalis - pie
ss = [qs,rs,qs+rs]; % sum - bar
ss_pie = [qs,abs(rs)]'; % sum - pie
