
%%%%%%%% Pack design %%%%%

%%%%%%%% Input parameters %%%%%

%%%%%%%% Module arranagement %%%%%
PacComph = 1.5; % Thickness of module compression plates (steel), mm
PacCoolExt = 0; % Length of pack extensions for air cooled packs, mm
PacCoolSpa = 0; % Coolant space above and below modules, mm
PacBMSVol = 4; % BMS space volume, litre
% PacModR = 5; % Number of Modules in a row
% PacR = 4; % Number of rows in the Pack
Pacjach = 0; % Initial Pack jacket thickness, mm
PacjacRo = 0; % battery jacket material density, g/cc
% PacModPara = 1; % Number of modules in parallel
if strcmp("EV",Mode)
    PacModR = 5; 
    PacR = 4;
    PacModPara = 1;
    PacCoolExt = 50;
    PacCoolSpa = 3;
    Pacjach = 10;
    PacjacRo = 1.11;
elseif strcmp("ESS1",Mode)
    PacModR = 5;
    PacR = 4;
    if SOH2==1
        PacModPara = 9;
    elseif SOH2==0.9
        PacModPara = 10;
    elseif SOH2==0.8
        PacModPara = 11;
    elseif SOH2==0.7
        PacModPara = 13;
    end
elseif strcmp("ESS2",Mode)
    PacModR = 5;
    PacR = 4;
    if SOH2==1
        PacModPara = 9;
    elseif SOH2==0.9
        PacModPara = 10;
    elseif SOH2==0.8
        PacModPara = 11;
    elseif SOH2==0.7
        PacModPara = 13;
    end
elseif strcmp("ESS3",Mode)
    PacModR = 5;
    PacR = 4;
    if SOH2==1
        PacModPara = 9;
    elseif SOH2==0.9
        PacModPara = 10;
    elseif SOH2==0.8
        PacModPara = 11;
    elseif SOH2==0.7
        PacModPara = 13;
    end
elseif strcmp("CBS1",Mode)
    PacModR = 1;
    PacR = 1;
    if SOH2==1
        PacModPara = 30;
    elseif SOH2==0.9
        PacModPara = 30;
    elseif SOH2==0.8
        PacModPara = 35;
    elseif SOH2==0.7
        PacModPara = 40;
    end
elseif strcmp("CBS2",Mode)
    PacModR = 1;
    PacR = 1;
    if SOH2==1
        PacModPara = 30;
    elseif SOH2==0.9
        PacModPara = 35;
    elseif SOH2==0.8
        PacModPara = 40;
    elseif SOH2==0.7
        PacModPara = 45;
    end
elseif strcmp("CBS3",Mode)
    PacModR = 1;
    PacR = 1;
    if SOH2==1
        PacModPara = 25;
    elseif SOH2==0.9
        PacModPara = 30;
    elseif SOH2==0.8
        PacModPara = 35;
    elseif SOH2==0.7
        PacModPara = 40;
    end
elseif strcmp("CBS4",Mode)
    PacModR = 1;
    PacR = 1;
    if SOH2==1
        PacModPara = 5;
    elseif SOH2==0.9
        PacModPara = 6;
    elseif SOH2==0.8
        PacModPara = 7;
    elseif SOH2==0.7
        PacModPara = 8;
    end
elseif strcmp("LSV",Mode)    
    if SOH2==1
        PacModR = 7;
        PacR = 1;
    elseif SOH2==0.9
        PacModR = 4;
        PacR = 2;    
    elseif SOH2==0.8
        PacModR = 4;
        PacR = 2;         
    elseif SOH2==0.7
        PacModR = 9;
        PacR = 1;          
    end
    PacModPara = 1;
end
%%%%%%%% Output Results %%%%%

%%%%%%%% Pack dimensions %%%%%
PacTotMod = PacModR*PacR*PacModPara; % Module total number in a pack
PacTotModVol = PacTotMod*ModVol; % Total module volume, litre
if (PacTotModVol<20) % Modified pack jacket thickness, mm
    Pacjach1 = Pacjach+2*1;
elseif (PacTotModVol<40)
    Pacjach1 = Pacjach+2*1.5;
else
    Pacjach1 = Pacjach+2*2;
end
PacL = PacModR*ModW+2*Pacjach1+2*PacComph+PacCoolSpa; % Pack length, mm
if(PacR==1) % Pack width, mm
    PacW = ModL*PacR+2*Pacjach1+8;
elseif(PacR==2)
    PacW = ModL*PacR+2*Pacjach1+10;
else
    PacW = ModL*PacR+2*Pacjach1+20;
end
PacH = ModH+2*PacCoolSpa+2*Pacjach1; % Pack height, mm
PacVol = PacL*PacW*PacH/1000000+PacBMSVol; % Battery volume, litre
PacjacDim = 2*((PacL-Pacjach1)*(PacW-Pacjach1)+(PacL-Pacjach1)*(PacH-Pacjach1)+(PacW-Pacjach1)*(PacH-Pacjach1)); % Battery jacket area, mm2

% %%%%%%%% Pack components %%%%%
% PacModMass = PacTotMod*ModTotMass/1000; % Battery module mass, kg
% PacBMSMass = PacModMass*0.03; % BMS mass, kg
% PacjacMass = PacjacDim*PacjacRo/100000; % Battery jacket insulation mass, kg
% PacCompMass = 2*PacComph*(PacW-2*Pacjach1)*(PacH-2*Pacjach1)*7.8/1000000; % Mass of `module compression plates and steel straps, kg
% PacCoolMass = 9.81; % Battery coolant requirement, kg
% PacConnMass = (PacTotMod+1)*109.7/PacModPara/1000; % Battery interconnection mass (5-cm long each), kg
% PacTotMass = PacModMass+PacBMSMass+PacjacMass+PacCompMass+PacCoolMass+PacConnMass; % Battery pack mass, kg
