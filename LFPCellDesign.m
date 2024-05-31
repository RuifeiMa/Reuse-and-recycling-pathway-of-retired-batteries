%%%%%%%%% NMC battery cell power basic information %%%%%%%%
CellNomV = 3.282; % Nominal OCV (OCV@50%) of Cells, V
CellFPOCV = 3.25; % OCV at full power, V
BattVfrac = 0.8; % Battery working voltage fraction at full power
BattFPower = 300; % Battery target full power, kW
PacASIEx = 2.75; % External ASI, ohms*cm2
LiConcAvg = 0.0012; % Average Li-ion concentration, mol/cm3
LiDiff = 0.0000016; % Lithium-ion diffusion coefficient in electrolyte, cm2/s
tplus = 0.363; % Transference number t+
RatioGamma = 0.4; % Ratio of lithium electrode thickness to penetration depth

%%%%%%%%% Cell design %%%%%%%%

%%%%%%%%% Input parameters %%%%%

%%%%%%%%% postive electrode materials %%%%%%
PosAcWt = 0.89; % active materials mass composition (LFP)
PosCBWt = 0.06; % Carbon black mass composition
PosBDWt = 0.05; % Binder mass composition (PVDF)
PosAcRo = 3.45; % active materials density (NCM), g/cc
PosCBRo = 1.825; % Carbon black density, g/cc
PosBDRo = 1.77; % Binder mass density (PVDF), g/cc
PosPoro = 0.5; % Porosity
PosSpCap = 150; % Specific capacity (NCM622), mAh/g
PosArCap = 2.1; % Areal Capacity, mAh/cm^2
PosCCRo = 2.7; % positive current collector foil density (Al), g/cc
PosCCh = 0.015; % positive current collector foil thickness (Al), mm

%%%%%%%% Negative electrode materials %%%%
NegAcWt = 0.95; % active materials mass composition (graphite)
NegCBWt = 0; % carbon black mass composition
NegBDWt = 0.05; % Binder mass composition (CMC)
NegAcRo = 2.24; % active materials density (graphite), g/cc
NegCBRo = 0; % Carbon black density, g/cc
NegBDRo = 1.1; % Binder mass density (CMC), g/cc
NegPoro = 0.34; % Porosity
NegSpCap = 360; % Specific capacity (Graphite), mAh/g
NP = 1.2; % NP ratio
NegCCRo = 8.92; % Negative current collector foil density (Cu), g/cc
NegCCh = 0.01; % Negative current collector foil thickness (Cu), mm

%%%%%%%% Other components %%%%%%
ElyRo = 1.2; % Electrolyte density, g/cc
SepaRo = 0.46; % Separator density
PouRo = 2.2; % Cell pouch film, g/cc
Sepah = 0.015; % Separator thickness, mm
Pouh = 0.15; % Cell pouch film thickness, mm
SepaPoro = 0.5; % Separator porosity
Termh = 1; % Terminal thickness, mm

%%%%%%%% Cell design dimensions %%%%%
PosEtdW = 102; % Postive electrode width, mm
PosEtdAsr = 3; % Postive electrode aspect ratio
EtdtoTerm = 15; % Top of the electrode to top of the terminal, mm
NegExEtdL = 2; % Excess length of negative  electrode, mm
NegExEtdW = 2; % Excess width of negative  electrode, mm
SepaExL = 6; % Excess length of separator, mm
SepaExW = 4; % Excess width of separator, mm
PouMarg = 1; % Pouch sealing margin, mm
Cellbilayer = 63; % Cell-bilayer design

%%%%%%%% Output Results %%%%%

%%%%%%%% Positive electrode %%%%%
PosAcVol = (1-PosPoro)*(PosAcWt/PosAcRo)/(PosAcWt/PosAcRo+PosCBWt/PosCBRo+PosBDWt/PosBDRo); % active materials volume composition
PosCBVol = (1-PosPoro)*(PosCBWt/PosCBRo)/(PosAcWt/PosAcRo+PosCBWt/PosCBRo+PosBDWt/PosBDRo); % Carbon black volume composition
PosBDVol = (1-PosPoro)*(PosBDWt/PosBDRo)/(PosAcWt/PosAcRo+PosCBWt/PosCBRo+PosBDWt/PosBDRo); % Carbon black volume composition
PosTabRo = PosAcRo*PosAcVol+PosCBRo*PosCBVol+PosBDRo*PosBDVol; % Tab density (volume-averaged density) of positive electrode materials, g/cc
PosEtdL = PosEtdW*PosEtdAsr; % Positiv electrode length, mm
PosEtdh = 10*PosArCap/(PosAcRo*PosAcVol*PosSpCap); % Positive electrode thickness, mm

%%%%%%%% Negative electrode %%%%%
NegAcVol = (1-NegPoro)*(NegAcWt/NegAcRo)/(NegAcWt/NegAcRo+NegBDWt/NegBDRo); % active materials volume composition
NegCBVol = 0; % Carbon black volume composition
NegBDVol = (1-NegPoro)*(NegBDWt/NegBDRo)/(NegAcWt/NegAcRo+NegBDWt/NegBDRo); % Binder volume composition (CMC)
NegTabRo = NegAcRo*NegAcVol+NegCBRo*NegCBVol+NegBDRo*NegBDVol; % Tab density (volume-averaged density) of negative electrode materials, g/cc
NegEtdL = PosEtdL+NegExEtdL; % Negative electrode length, mm
NegEtdW = PosEtdW+NegExEtdW; % Negative electrode Width, mm
NegExArea = ((NegEtdL*NegEtdW)-(PosEtdL*PosEtdW))/(PosEtdL*PosEtdW); % Excessive Negative electrode area
NegEtdh = PosArCap*NP/(NegAcRo*NegAcVol*NegSpCap)*10; % Negative electrode thickness, mm

%%%%%%%% Cell dimensions %%%%%
CellL = PosEtdL+2*EtdtoTerm; % Cell length, mm
CellW = PosEtdW+2*PouMarg; % Cell width, mm
Cellh = 1.03*(Cellbilayer*(PosCCh+NegCCh+2*(PosEtdh+NegEtdh+Sepah))+2*Pouh+NegCCh); % Cell thickness, mm
CellVol = CellL*CellW*Cellh; % Cell volume, mm

%%%%%%%% Current Collectors %%%%%
PosCCMarg = Cellh+8; % Positive foil margin, mm
NegCCMarg = PosCCMarg; % Negative foil margin, mm
PosCCL = PosEtdL+PosCCMarg; % Positive foil length, mm
PosCCW = PosEtdW; % Positive foil width, mm
NegCCL = NegEtdL+NegCCMarg; % Negative foil length, mm
NegCCW = NegEtdW; % Negative foil width, mm

%%%%%%%% Separator %%%%%
SepaL = PosEtdL+SepaExL; % Separator length, mm
SepaW = PosEtdW+SepaExW; % Separator width, mm

%%%%%%%% Terminals %%%%%
TermL = 2*Cellh+10; % Terminal length, mm
TermW = PosEtdW-8; % Terminal width, mm

%%%%%%%% Pouch film %%%%%
PouL = CellL-6; % Pouch film length, mm
PouW = CellW+2*Cellh+6; % Pouch film width, mm

%%%%%%%% Other cell dimensions %%%%%
PosEtdTotDim = Cellbilayer*PosEtdL*PosEtdW*2; % total dimension of positive electrode, mm2
NegEtdTotDim = Cellbilayer*NegEtdL*NegEtdW*2; % total dimension of negative electrode, mm2
PosCCTotDim = Cellbilayer*PosCCL*PosCCW; % total dimension of positive foil, mm2
NegCCTotDim = Cellbilayer*NegCCL*NegCCW+NegCCL*NegCCW; % total dimension of negative  foil, mm2
SepaTotDim = Cellbilayer*SepaL*SepaW*2; % total dimension of separator, mm2
ElyVol = (PosEtdTotDim*PosEtdh*PosPoro+NegEtdTotDim*NegEtdh*NegPoro+SepaTotDim*Sepah*SepaPoro+0.02*CellVol)/1000; % Electrolyte volume, cc
PouTotDim = 2*PouL*PouW; % total dimension of pouch film, mm2

%%%%%%%% Cell mass composition %%%%%
PosAcMass = (PosEtdTotDim*PosEtdh*PosTabRo*PosAcWt)/1000; % Cathode active materials, g
NegAcMass = (NegEtdTotDim*NegEtdh*NegTabRo*NegAcWt)/1000; % Anode active materials, g
PosCBMass = (PosEtdTotDim*PosEtdh*PosTabRo*PosCBWt)/1000; % Carbon black, g
PosBDMass = (PosEtdTotDim*PosEtdh*PosTabRo*PosBDWt)/1000; % Cathode binder, g
NegBDMass = (NegEtdTotDim*NegEtdh*NegTabRo*NegBDWt)/1000; % Anode binder, g
PosCCMass = PosCCTotDim*PosCCh*PosCCRo/1000; % Positive foil, g
NegCCMass = NegCCTotDim*NegCCh*NegCCRo/1000; % Negative foil, g
SepaMass = SepaTotDim*Sepah/1000*SepaRo; % Separator, g
ElyMass = ElyVol*ElyRo; % Electrolyte, g
PosTermMass = PosCCRo*TermL*TermW*Termh/1000; % Positive terminals, g
NegTermMass = (Termh*TermL*TermW)*NegCCRo/1000; % Negative terminals, g
PouMass = 2*Pouh*PouL*PouW*PouRo/1000; % Pouch film mass, g
CellTotMass = PosAcMass+NegAcMass+PosCBMass+PosBDMass+NegBDMass+PosCCMass+NegCCMass+SepaMass+ElyMass+PosTermMass+NegTermMass+PouMass; % Total mass, g

% %%%%%%%% Cell energy %%%%%
% CellCap = PosAcMass*PosSpCap/1000; % Cell Capacity, Ah
% CellEnerSp = 3.75*CellCap/CellTotMass; % Cell Energy density, Wh/g
% CellVolSp = 1000*3.75*CellCap/CellVol; % Cell Volume density, Wh/L
