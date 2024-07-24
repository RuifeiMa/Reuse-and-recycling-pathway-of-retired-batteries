%%%%%%% Recycling cost details

%%%%%%%% NMC battery
%%%%%%% NMC hydro- recycling cost details
%%%%%%%% order:
%%%%%%%% Discharging, Electricity, Transport, Pack - Spent solvent mixture,
%%%%%%%% Pack - Waste plastic, Pack - Electronics scrap, Degraded NMC,
%%%%%%%% H2SO4, Liquid ammonia, Na2CO3, water, electricity, Equipment
%%%%%%%% depreciation, Labor, Disassemble, Sewage treatment, Pack - Aluminum,
%%%%%%%% Pack - Copper, Pack - Steel, Li2CO3, NiSO4, CoSO4,
%%%%%%%% MnSO4, Graphite, Aluminium, Copper

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

%%%%%%%% NMC direct recycling cost details
%%%%%%%% order:
%%%%%%%% Discharging, Electricity, Transport, Pack - Spent solvent mixture,
%%%%%%%% Pack - Waste plastic, Pack - Electronics scrap, Degraded NMC,
%%%%%%%% Li2CO3, water, electricity, Equipment depreciation, Labor,
%%%%%%%% Disassemble, Sewage treatment, Pack - Aluminum, Pack - Copper,
%%%%%%%% Pack - Steel, NMC622, Graphite, Aluminium, Copper
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
%%%%%%%% order:
%%%%%%%% Discharging, Electricity, Transport, Pack - Spent solvent mixture,
%%%%%%%% Pack - Waste plastic, Pack - Electronics scrap, Degraded NMC,
%%%%%%%% H2SO4, Coke, Na2CO3, water, electricity, Equipment depreciation,
%%%%%%%% Labor, Disassemble, Sewage treatment, Pack - Aluminum, Pack -Copper, 
%%%%%%%% Pack - Steel, Li2CO3, NiSO4, CoSO4, MnSO4, Graphite, Aluminium, Copper
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
%%%%%%%% order: 
%%%%%%%% Discharging, Electricity, Transport, Pack - Spent solvent mixture,
%%%%%%%% Pack - Waste plastic, Pack - Electronics scrap, Degraded LFP,
%%%%%%%% H2SO4, H2O2, Na2CO3, water, electricity, Equipment depreciation,
%%%%%%%% Labor, Disassemble, Sewage treatment, Pack - Aluminum, Pack - Copper,
%%%%%%%%  Pack - Steel, Li2CO3, FePO4, Graphite, Aluminium, Copper
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
%%%%%%%% order: 
%%%%%%%% Discharging, Electricity, Transport, Pack - Spent solvent mixture,
%%%%%%%% Pack - Waste plastic, Pack - Electronics scrap, Degraded LFP,
%%%%%%%% Li2CO3, water, electricity, Equipment depreciation, Labor,
%%%%%%%% Disassemble, Sewage treatment, Pack - Aluminum, Pack - Copper,
%%%%%%%% Pack - Steel, LiFePO4, Graphite, Aluminium, Copper
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
%%%%%%%% order: 
%%%%%%%% Discharging, Electricity, Transport, Pack - Spent solvent mixture,
%%%%%%%% Pack - Waste plastic, Pack - Electronics scrap, Degraded LFP,
%%%%%%%% H2SO4, Coke, Na2CO3, water, electricity, Equipment depreciation,
%%%%%%%% Labor, Disassemble, Sewage treatment, Pack - Aluminum, Pack - Copper, 
%%%%%%%% Pack - Steel, Li2CO3, Graphite, Aluminium, Copper
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
