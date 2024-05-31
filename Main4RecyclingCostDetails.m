%%%%%%% Recycling cost details

%%%%%%%% NMC battery
%%%%%%% NMC hydro- recycling cost details
%%%%%%%% [Cost_DegradNMC Cost_H2SO4 Cost_An Cost_Na2CO3 Cost_water Cost_Elec Cost_Equip_Hydro Cost_Labor_Hydro Cost_Disass_Hydro Cost_Sewage_Hydro Cost_Li2CO3 Cost_NiSO4 Cost_CoSO4 Cost_MnSO4 Cost_Graphite Cost_Al Cost_Cu]
 NMC_Cost_Hydro_sum_pie = [reshape(NMC_Cost_PacRec_ESS2(6,1,:),1,[]),reshape(NMC_Cost_Hydro_ESS2(6,1,:),1,[]); % 40% ended SOH
    reshape(NMC_Cost_PacRec_ESS2(5,1,:),1,[]),reshape(NMC_Cost_Hydro_ESS2(5,1,:),1,[]); % 50% ended SOH
    reshape(NMC_Cost_PacRec_ESS2(4,1,:),1,[]),reshape(NMC_Cost_Hydro_ESS2(4,1,:),1,[]); % 60% ended SOH
    reshape(NMC_Cost_PacRec_ESS2(3,1,:),1,[]),reshape(NMC_Cost_Hydro_ESS2(3,1,:),1,[]); % 70% ended SOH
    reshape(NMC_Cost_PacRec_ESS2(2,1,:),1,[]),reshape(NMC_Cost_Hydro_ESS2(2,1,:),1,[]); % 80% ended SOH
    reshape(NMC_Cost_PacRec_ESS2(1,1,:),1,[]),reshape(NMC_Cost_Hydro_ESS2(1,1,:),1,[]);]/NMC_BattEner_ESS2(6,1); % 90% ended SOH
for i = 1:6
    y=find(NMC_Cost_Hydro_sum_pie(i,:)>=0);
    a_(i,:)=NMC_Cost_Hydro_sum_pie(i,y);
    as_(i,:)=sum(a_(i,:)) ;
    z=find(NMC_Cost_Hydro_sum_pie(i,:)<0);
    b_(i,:)=NMC_Cost_Hydro_sum_pie(i,z);
    bs_(i,:)=sum(b_(i,:)) ;
end
c_ = [a_,abs(b_)]'; % detalis - pie
cs_ = [as_,bs_,as_+bs_]; % sum - bar
cs_pie_ = [as_,abs(bs_)]'; % sum - pie
%%%%%%%% NMC direct recycling cost details, 
%%%%%%%% [Cost_DegradNMC Cost_Li2CO3 Cost_water Cost_Elec Cost_Equip_Direct Cost_Labor_Direct Cost_Disass_Direct Cost_Sewage_Direct Cost_NMC622 Cost_Graphite Cost_Al Cost_Cu]
NMC_Cost_Direct_sum_pie = [reshape(NMC_Cost_PacRec_ESS2(6,1,:),1,[]),reshape(NMC_Cost_Direct_ESS2(6,1,:),1,[]); % 40% ended SOH 
    reshape(NMC_Cost_PacRec_ESS2(5,1,:),1,[]),reshape(NMC_Cost_Direct_ESS2(5,1,:),1,[]); % 50% ended SOH
    reshape(NMC_Cost_PacRec_ESS2(4,1,:),1,[]),reshape(NMC_Cost_Direct_ESS2(4,1,:),1,[]); % 60% ended SOH
    reshape(NMC_Cost_PacRec_ESS2(3,1,:),1,[]),reshape(NMC_Cost_Direct_ESS2(3,1,:),1,[]); % 70% ended SOH
    reshape(NMC_Cost_PacRec_ESS2(2,1,:),1,[]),reshape(NMC_Cost_Direct_ESS2(2,1,:),1,[]); % 80% ended SOH
    reshape(NMC_Cost_PacRec_ESS2(1,1,:),1,[]),reshape(NMC_Cost_Direct_ESS2(1,1,:),1,[]);]/NMC_BattEner_ESS2(6,1); % 90% ended SOH
for i = 1:6
    y=find(NMC_Cost_Direct_sum_pie(i,:)>=0);
    d_(i,:)=NMC_Cost_Direct_sum_pie(i,y);
    ds_(i,:)=sum(d_(i,:)) ;
    z=find(NMC_Cost_Direct_sum_pie(i,:)<0);
    e_(i,:)=NMC_Cost_Direct_sum_pie(i,z);
    es_(i,:)=sum(e_(i,:)) ;
end
f_ = [d_,abs(e_)]'; % detalis - pie
fs_ = [ds_,es_,ds_+es_]; % sum - bar
fs_pie_ = [ds_,abs(es_)]'; % sum - pie
%%%%%%%% NMC pyro- recycling cost details, 
%%%%%%%% [Cost_DegradNMC Cost_H2SO4 Cost_Coke Cost_Na2CO3 Cost_water Cost_Elec Cost_Equip_Pyro Cost_Labor_Pyro Cost_Disass_Pyro Cost_Sewage_Pyro Cost_Li2CO3 Cost_NiSO4 Cost_CoSO4 Cost_MnSO4 Cost_Graphite Cost_Al Cost_Cu]
NMC_Cost_Pyro_sum_pie = [reshape(NMC_Cost_PacRec_ESS2(6,1,:),1,[]),reshape(NMC_Cost_Pyro_ESS2(6,1,:),1,[]); % 40% ended SOH 
    reshape(NMC_Cost_PacRec_ESS2(5,1,:),1,[]),reshape(NMC_Cost_Pyro_ESS2(5,1,:),1,[]); % 50% ended SOH
    reshape(NMC_Cost_PacRec_ESS2(4,1,:),1,[]),reshape(NMC_Cost_Pyro_ESS2(4,1,:),1,[]); % 60% ended SOH
    reshape(NMC_Cost_PacRec_ESS2(3,1,:),1,[]),reshape(NMC_Cost_Pyro_ESS2(3,1,:),1,[]); % 70% ended SOH
    reshape(NMC_Cost_PacRec_ESS2(2,1,:),1,[]),reshape(NMC_Cost_Pyro_ESS2(2,1,:),1,[]); % 80% ended SOH
    reshape(NMC_Cost_PacRec_ESS2(1,1,:),1,[]),reshape(NMC_Cost_Pyro_ESS2(1,1,:),1,[]);]/NMC_BattEner_ESS2(6,1); % 90% ended SOH
for i = 1:6    
    y=find(NMC_Cost_Pyro_sum_pie(i,:)>=0);
    g_(i,:)=NMC_Cost_Pyro_sum_pie(i,y);
    gs_(i,:)=sum(g_(i,:));
    z=find(NMC_Cost_Pyro_sum_pie(i,:)<0);
    h_(i,:)=NMC_Cost_Pyro_sum_pie(i,z);
    hs_(i,:)=sum(h_(i,:));
end
j_ = [g_,abs(h_)]'; % detalis - pie
js_ = [gs_,hs_,gs_+hs_]; % sum - bar
js_pie_ = [gs_,abs(hs_)]'; % sum - pie

%%%%%%%%%%%%%% LFP hydro- recycling cost details, 
%%%%%%%% [Cost_DegradLFP Cost_H2SO4 Cost_H2O2 Cost_Na2CO3 Cost_water Cost_Elec Cost_Equip_Hydro Cost_Labor_Hydro Cost_Disass_Hydro Cost_Sewage_Hydro Cost_Li2CO3 Cost_FePO4 Cost_Graphite Cost_Al Cost_Cu]
LFP_Cost_Hydro_sum_pie = [reshape(LFP_Cost_PacRec_ESS2(6,1,:),1,[]),reshape(LFP_Cost_Hydro_ESS2(6,1,:),1,[]); % 40% ended SOH 
    reshape(LFP_Cost_PacRec_ESS2(5,1,:),1,[]),reshape(LFP_Cost_Hydro_ESS2(5,1,:),1,[]); % 50% ended SOH 
    reshape(LFP_Cost_PacRec_ESS2(4,1,:),1,[]),reshape(LFP_Cost_Hydro_ESS2(4,1,:),1,[]); % 60% ended SOH 
    reshape(LFP_Cost_PacRec_ESS2(3,1,:),1,[]),reshape(LFP_Cost_Hydro_ESS2(3,1,:),1,[]); % 70% ended SOH 
    reshape(LFP_Cost_PacRec_ESS2(2,1,:),1,[]),reshape(LFP_Cost_Hydro_ESS2(2,1,:),1,[]); % 80% ended SOH 
    reshape(LFP_Cost_PacRec_ESS2(1,1,:),1,[]),reshape(LFP_Cost_Hydro_ESS2(1,1,:),1,[]);]/LFP_BattEner_ESS2(6,1); % 90% ended SOH 
for i = 1:6
    y=find(LFP_Cost_Hydro_sum_pie(i,:)>=0);
    k_(i,:)=LFP_Cost_Hydro_sum_pie(i,y);
    ks_(i,:)=sum(k_(i,:));
    z=find(LFP_Cost_Hydro_sum_pie(i,:)<0);
    l_(i,:)=LFP_Cost_Hydro_sum_pie(i,z);
    ls_(i,:)=sum(l_(i,:)) ;
end
m_ = [k_,abs(l_)]';
ms_ = [ks_,ls_,ks_+ls_];
ms_pie_ = [ks_,abs(ls_)]';
%%%%%%%% LFP direct recycling cost details, 
%%%%%%%% [Cost_DegradLFP Cost_Li2CO3 Cost_water Cost_Elec Cost_Equip_Direct Cost_Labor_Direct Cost_Disass_Direct Cost_Sewage_Direct Cost_LiFePO4 Cost_Graphite Cost_Al Cost_Cu]
LFP_Cost_Direct_sum_pie = [reshape(LFP_Cost_PacRec_ESS2(6,1,:),1,[]),reshape(LFP_Cost_Direct_ESS2(6,1,:),1,[]); % 40% ended SOH
    reshape(LFP_Cost_PacRec_ESS2(5,1,:),1,[]),reshape(LFP_Cost_Direct_ESS2(5,1,:),1,[]); % 50% ended SOH 
    reshape(LFP_Cost_PacRec_ESS2(4,1,:),1,[]),reshape(LFP_Cost_Direct_ESS2(4,1,:),1,[]); % 60% ended SOH
    reshape(LFP_Cost_PacRec_ESS2(3,1,:),1,[]),reshape(LFP_Cost_Direct_ESS2(3,1,:),1,[]); % 70% ended SOH
    reshape(LFP_Cost_PacRec_ESS2(2,1,:),1,[]),reshape(LFP_Cost_Direct_ESS2(2,1,:),1,[]); % 80% ended SOH
    reshape(LFP_Cost_PacRec_ESS2(1,1,:),1,[]),reshape(LFP_Cost_Direct_ESS2(1,1,:),1,[]);]/LFP_BattEner_ESS2(6,1); % 90% ended SOH
for i = 1:6
    y=find(LFP_Cost_Direct_sum_pie(i,:)>=0);
    u_(i,:)=LFP_Cost_Direct_sum_pie(i,y);
    us_(i,:)=sum(u_(i,:));
    z=find(LFP_Cost_Direct_sum_pie(i,:)<0);
    o_(i,:)=LFP_Cost_Direct_sum_pie(i,z);
    os_(i,:)=sum(o_(i,:)) ;
end
p_ = [u_,abs(o_)]';
ps_ = [us_,os_,us_+os_];
ps_pie_ = [us_,abs(os_)]';
%%%%%%%% LFP pyro- recycling cost details, 
%%%%%%%% [Cost_DegradLFP Cost_H2SO4 Cost_Coke Cost_Na2CO3 Cost_water Cost_Elec Cost_Equip_Pyro Cost_Labor_Pyro Cost_Disass_Pyro Cost_Sewage_Pyro Cost_Li2CO3 Cost_Graphite Cost_Al Cost_Cu]
LFP_Cost_Pyro_sum_pie = [reshape(LFP_Cost_PacRec_ESS2(6,1,:),1,[]),reshape(LFP_Cost_Pyro_ESS2(6,1,:),1,[]); % 40% ended SOH
    reshape(LFP_Cost_PacRec_ESS2(5,1,:),1,[]),reshape(LFP_Cost_Pyro_ESS2(5,1,:),1,[]); % 50% ended SOH
    reshape(LFP_Cost_PacRec_ESS2(4,1,:),1,[]),reshape(LFP_Cost_Pyro_ESS2(4,1,:),1,[]); % 60% ended SOH
    reshape(LFP_Cost_PacRec_ESS2(3,1,:),1,[]),reshape(LFP_Cost_Pyro_ESS2(3,1,:),1,[]); % 70% ended SOH
    reshape(LFP_Cost_PacRec_ESS2(2,1,:),1,[]),reshape(LFP_Cost_Pyro_ESS2(2,1,:),1,[]); % 80% ended SOH
    reshape(LFP_Cost_PacRec_ESS2(1,1,:),1,[]),reshape(LFP_Cost_Pyro_ESS2(1,1,:),1,[]);]/LFP_BattEner_ESS2(6,1); % 90% ended SOH
for i = 1:6    
    y=find(LFP_Cost_Pyro_sum_pie(i,:)>=0);
    q_(i,:)=LFP_Cost_Pyro_sum_pie(i,y);
    qs_(i,:)=sum(q_(i,:));
    z=find(LFP_Cost_Pyro_sum_pie(i,:)<0);
    r_(i,:)=LFP_Cost_Pyro_sum_pie(i,z);
    rs_(i,:)=sum(r_(i,:));
end
s_ = [q_,abs(r_)]';
ss_ = [qs_,rs_,qs_+rs_];
ss_pie_ = [qs_,abs(rs_)]';
