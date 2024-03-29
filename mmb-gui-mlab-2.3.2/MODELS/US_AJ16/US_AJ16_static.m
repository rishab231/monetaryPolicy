function [residual, g1, g2, g3] = US_AJ16_static(y, x, params)
%
% Status : Computes static model for Dynare
%
% Inputs : 
%   y         [M_.endo_nbr by 1] double    vector of endogenous variables in declaration order
%   x         [M_.exo_nbr by 1] double     vector of exogenous variables in declaration order
%   params    [M_.param_nbr by 1] double   vector of parameter values in declaration order
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the static model equations 
%                                          in order of declaration of the equations.
%                                          Dynare may prepend or append auxiliary equations, see M_.aux_vars
%   g1        [M_.endo_nbr by M_.endo_nbr] double    Jacobian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%   g2        [M_.endo_nbr by (M_.endo_nbr)^2] double   Hessian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%   g3        [M_.endo_nbr by (M_.endo_nbr)^3] double   Third derivatives matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

residual = zeros( 126, 1);

%
% Model equations
%

pi_ss__ = params(56)/100;
gam__ = params(35)/100;
bet__ = 1/(1+params(36)/100);
tau_q_ss__ = params(54)/100;
kp__ = (1-params(43)*bet__)*(1-params(43))/(params(43)*(1+bet__*params(44)));
phi_ss__ = (y(69));
rho_tau_trans__ = params(64)*params(65);
T3 = (-1);
T226 = exp(gam__)/(exp(gam__)-params(39));
T296 = exp(y(22))*exp(y(59))*(exp(y(77))+exp(y(69))*exp(y(21))*(1-params(37)))+(1-params(37))*exp(y(22))*exp(y(40))*(1-exp(y(69)))+exp(y(77))*exp(y(22))*exp(y(5))+(1-params(37))*exp(y(22))*exp(y(39));
T335 = (log(exp(y(20))/exp(y(22)))-params(48))/(1.414213562373095*y(80));
T338 = 0.5+0.5*erf(T335);
T347 = log(exp(y(20))/exp(y(21)));
T352 = 0.5+0.5*erf((T347-params(48))/(1.414213562373095*y(80)));
T358 = y(80)^2;
T361 = exp(params(48)+T358/2);
T362 = exp(y(21))*T361;
T367 = exp(y(21))*2*exp(y(20))*(T3+params(51));
T372 = exp(y(20))*params(51)*erf((params(48)-T347)/(1.414213562373095*y(80)));
T377 = erf((params(48)+T358-T347)/(1.414213562373095*y(80)));
T394 = 2*exp(y(20))*(T3+params(51));
T398 = (-T361)/T394-T361*T377/T394;
T402 = exp(y(85));
T403 = exp(y(77))*exp(y(19))/T402;
T407 = exp(y(76))*exp(y(6))/T402;
T414 = T403+T407+exp(y(9))-exp(y(35));
T416 = exp(y(69))*exp(y(21))*(1-params(37))*exp(y(19))/T402;
T417 = T414+T416;
T433 = (params(48)+T358-log(exp(y(20))/exp(y(22))))/y(80);
T437 = normcdf(T433,0,1)-normcdf((params(48)+T358-T347)/y(80),0,1);
T438 = exp(params(48)+0.5*T358)*T437;
T479 = exp(y(19))*exp(y(40))*exp(y(69))*(1-params(37))/T402;
T508 = T402^2;
T509 = y(34)*exp(y(79))*exp(y(20))*T508;
T530 = exp(y(6))/exp(y(84))/T402;
T545 = exp(y(84))*(1-1/exp(y(56)));
T596 = 1/((1-params(41))^(1-params(41))*params(41)^params(41));
T598 = T596*exp(y(77))^(1-params(41));
T599 = exp(y(82))^params(41);
T607 = (1-params(41))*exp(y(82))/exp(y(77))/params(41);
T627 = (exp(y(17))/T402)^(1-params(41));
T628 = exp(y(63))^params(41);
T634 = T545+exp(y(16))+exp(y(38));
T661 = (1-bet__*params(46))*(1-params(46))/(1+bet__);
T830 = (exp(y(77))+exp(y(21))*(1-params(37)))*exp(y(71))/exp(y(21));
T838 = exp(y(6))*exp(y(76))*exp(y(41))/T402;
T839 = exp(y(21))*exp(y(10))+T838;
T912 = exp(y(6))*exp(y(76))*(exp(y(40))+exp(y(39)))/T402;
T914 = exp(y(16))*exp(y(11));
lhs =y(88);
rhs =4*(y(58)-(y(58)));
residual(1)= lhs-rhs;
lhs =y(89);
rhs =y(71)+y(72)+y(73)+y(74)-params(56)*4/100;
residual(2)= lhs-rhs;
lhs =y(90);
rhs =4*(y(71)-params(56)/100);
residual(3)= lhs-rhs;
lhs =y(91);
rhs =y(83);
residual(4)= lhs-rhs;
lhs =y(92);
rhs =y(15)-(y(15));
residual(5)= lhs-rhs;
lhs =y(88);
rhs =params(32)*x(9)+y(92)*params(31)+y(92)*params(30)+y(92)*params(29)+y(92)*params(28)+y(92)*params(27)+y(92)*params(26)+y(92)*params(25)+y(92)*params(24)+y(92)*params(23)+y(91)*params(22)+y(91)*params(21)+y(91)*params(20)+y(91)*params(19)+y(91)*params(18)+y(91)*params(17)+y(91)*params(16)+y(91)*params(15)+y(91)*params(14)+y(90)*params(13)+y(90)*params(12)+y(90)*params(11)+y(90)*params(10)+y(90)*params(6)+y(90)*params(5)+y(88)*params(1)+y(88)*params(2)+y(88)*params(3)+y(88)*params(4)+y(90)*params(7)+y(90)*params(8)+y(90)*params(9);
residual(6)= lhs-rhs;
lhs =y(93);
rhs =params(34)*x(10);
residual(7)= lhs-rhs;
lhs =y(93);
rhs =y(87);
residual(8)= lhs-rhs;
lhs =y(69);
rhs =phi_ss__;
residual(9)= lhs-rhs;
residual(10) = y(37)-bet__*exp(y(52));
residual(11) = y(66)-(y(66))-(exp(gam__)/(exp(gam__)-bet__*params(39))*(y(85)-gam__-T226*(y(85)-gam__+y(38)-(y(38)))+(y(38)-(y(38)))*params(39)/(exp(gam__)-params(39)))+bet__*params(39)/(exp(gam__)-bet__*params(39))*(T226*(y(85)-gam__+y(38)-(y(38)))-(y(38)-(y(38)))*params(39)/(exp(gam__)-params(39)))+y(52)*(exp(gam__)-bet__*params(39)*params(66))/(exp(gam__)-bet__*params(39)));
residual(12) = y(79)-(y(79))-(-(y(85)-gam__));
residual(13) = y(78)-(y(78))-((-(y(85)-gam__))-(y(71)-pi_ss__));
residual(14) = exp(y(22))-exp(y(79))*(T296+exp(y(42))*(exp(y(77))+exp(y(22))*(1-params(37))));
residual(15) = 1/exp(y(76))-exp(y(79))*(exp(y(42))+exp(y(22))*exp(y(59))+exp(y(22))*exp(y(5)));
residual(16) = 1/exp(y(58))-(exp(y(42))+exp(y(22))*exp(y(59))+exp(y(22))*exp(y(5)))*exp(y(78));
residual(17) = exp(y(22))-exp(y(21))*exp(y(81));
residual(18) = exp(y(42))-T338;
residual(19) = exp(y(41))-(exp(y(40))+exp(y(39)));
residual(20) = exp(y(40))-(1-T352);
residual(21) = exp(y(59))-((exp(y(20))*params(51)-T362)/T367-((-T372)+T362*T377)/T367);
residual(22) = exp(y(24))-exp(y(40))/(exp(y(20))*(1-params(51)));
residual(23) = exp(y(3))-T398*T417;
residual(24) = exp(y(61))-exp(y(24))*T417;
residual(25) = exp(y(39))-(T352-T338);
residual(26) = exp(y(5))-T438/exp(y(20));
residual(27) = exp(y(23))-exp(y(39))/exp(y(20));
residual(28) = exp(y(2))-exp(y(5))*T414;
residual(29) = exp(y(60))-T414*exp(y(23));
residual(30) = exp(y(1))-exp(y(2))-exp(y(3));
residual(31) = exp(y(62))-(exp(y(24))*T417+T414*exp(y(23)));
residual(32) = exp(y(19))-(exp(y(1))+(1-params(37))*exp(y(19))/T402);
residual(33) = exp(y(10))-(exp(y(61))*exp(y(20))*params(51)/exp(y(21))+T479);
residual(34) = exp(y(19))-exp(y(17));
residual(35) = exp(y(4))-exp(y(1))/exp(y(62));
residual(36) = y(25)-0.5*params(55)*(T402-exp(gam__))^2;
residual(37) = y(34)-params(55)*(T402-exp(gam__));
residual(38) = exp(y(20))-(1-T509)/(1-(y(25)+T402*y(34)));
residual(39) = exp(y(62))-exp(y(16))*(1-y(25));
lhs =exp(y(36));
rhs =exp(y(35))/exp(y(84));
residual(40)= lhs-rhs;
lhs =exp(y(7));
rhs =T530;
residual(41)= lhs-rhs;
lhs =exp(y(36))/exp((y(36)));
rhs =(exp(y(7))/exp((y(7))))^params(61);
residual(42)= lhs-rhs;
residual(43) = T407+T545-exp(y(35))-exp(y(6));
lhs =exp(y(86));
rhs =1-1/exp(y(56));
residual(44)= lhs-rhs;
lhs =y(83)+1600*(y(83)+y(83)*6+y(83)-4*y(83)-4*y(83));
rhs =1600*(y(84)+y(84)*6+y(84)-4*y(84)-4*y(84));
residual(45)= lhs-rhs;
residual(46) = exp(y(9))-(exp(y(84))-T403-exp(y(82))*exp(y(63))+exp(y(16))*exp(y(20))*(1-y(25))-exp(y(16))+exp(y(10))*(exp(y(22))-exp(y(21))));
residual(47) = exp(y(68))-T598*T599;
residual(48) = exp(y(17))/(T402*exp(y(63)))-T607;
residual(49) = y(71)-pi_ss__-((y(71)-pi_ss__)*bet__/(1+bet__*params(44))+(y(71)-pi_ss__)*params(44)/(1+bet__*params(44))+kp__*(y(68)-(y(68)))+y(65)-params(42));
residual(50) = exp(y(84))-T627*T628;
residual(51) = exp(y(84))-T634;
residual(52) = y(82)-(y(82))-((y(82)-(y(82)))*1/(1+bet__)+(y(82)-(y(82)))*bet__/(1+bet__)+params(47)/(1+bet__)*(y(85)-gam__+y(71)-pi_ss__)-(y(85)-gam__+y(71)-pi_ss__)*(1+bet__*params(47))/(1+bet__)+bet__/(1+bet__)*(y(85)-gam__+y(71)-pi_ss__)+T661*(y(52)-(y(66)-(y(66)))+params(38)*(y(63)-params(40))-(y(82)-(y(82))))+y(67)-params(45));
residual(53) = exp(y(15))-T634;
residual(54) = y(75)-pi_ss__;
residual(55) = y(85)-(gam__*(1-params(62))+y(85)*params(62)+x(1)/100);
residual(56) = y(53)-((1-params(64))*tau_q_ss__+params(64)*y(53)+x(2)/100);
residual(57) = y(43)-(y(43)*rho_tau_trans__+x(3)/100);
residual(58) = y(81)-(y(53)+y(43));
residual(59) = y(56)-(y(87)+(1-params(63))*params(53)+y(56)*params(63));
residual(60) = y(52)-(y(52)*params(66)+x(4)/100);
residual(61) = y(65)-(params(42)*(1-params(67))+y(65)*params(67)+x(5)/100+params(69)*y(54)/100);
residual(62) = y(67)-(params(45)*(1-params(68))+y(67)*params(68)+x(6)/100+params(70)*y(55)/100);
residual(63) = y(54)-x(5);
residual(64) = y(55)-x(6);
residual(65) = y(80)-params(49);
residual(66) = y(50)-100*(y(85)-gam__);
residual(67) = y(49)-100*(y(85)-gam__);
residual(68) = y(45)-100*(y(85)-gam__);
residual(69) = y(51)-100*(y(85)-gam__);
residual(70) = y(70)-100*y(71);
residual(71) = y(57)-100*y(58);
residual(72) = y(64)-100*y(63);
residual(73) = y(13)-(y(11)+x(7));
residual(74) = y(31)-400*y(32)-x(8);
lhs =y(14)+1600*(y(14)+6*y(14)+y(14)-4*y(14)-4*y(14));
rhs =1600*(y(13)+6*y(13)+y(13)-4*y(13)-4*y(13));
residual(75)= lhs-rhs;
residual(76) = exp(y(32))-T830/exp(y(58));
residual(77) = exp(y(11))-T839/exp(y(16));
residual(78) = exp(y(12))-T839;
residual(79) = y(44)-100*(y(85)-gam__);
lhs =y(33)+1600*(y(33)+6*y(33)+y(33)-4*y(33)-4*y(33));
rhs =1600*(y(31)+6*y(31)+y(31)-4*y(31)-4*y(31));
residual(80)= lhs-rhs;
residual(81) = y(46)-y(45);
residual(82) = y(47)-y(46);
residual(83) = y(48)-y(47);
residual(84) = y(72)-y(71);
residual(85) = y(73)-y(72);
residual(86) = y(74)-y(73);
residual(87) = y(26)-100*(y(85)-gam__);
residual(88) = y(28)-y(26);
residual(89) = y(29)-y(28);
residual(90) = y(30)-y(29);
residual(91) = y(27)-(y(30)+y(29)+y(26)+y(28))/4;
residual(92) = exp(y(18))-(exp(y(21))*T479+T912)/T914;
residual(93) = exp(y(8))-T912/T914;
lhs =y(94);
rhs =y(90);
residual(94)= lhs-rhs;
lhs =y(95);
rhs =y(90);
residual(95)= lhs-rhs;
lhs =y(96);
rhs =y(90);
residual(96)= lhs-rhs;
lhs =y(97);
rhs =y(91);
residual(97)= lhs-rhs;
lhs =y(98);
rhs =y(91);
residual(98)= lhs-rhs;
lhs =y(99);
rhs =y(91);
residual(99)= lhs-rhs;
lhs =y(100);
rhs =y(92);
residual(100)= lhs-rhs;
lhs =y(101);
rhs =y(92);
residual(101)= lhs-rhs;
lhs =y(102);
rhs =y(92);
residual(102)= lhs-rhs;
lhs =y(103);
rhs =y(83);
residual(103)= lhs-rhs;
lhs =y(104);
rhs =y(84);
residual(104)= lhs-rhs;
lhs =y(105);
rhs =y(14);
residual(105)= lhs-rhs;
lhs =y(106);
rhs =y(13);
residual(106)= lhs-rhs;
lhs =y(107);
rhs =y(33);
residual(107)= lhs-rhs;
lhs =y(108);
rhs =y(31);
residual(108)= lhs-rhs;
lhs =y(109);
rhs =y(92);
residual(109)= lhs-rhs;
lhs =y(110);
rhs =y(92);
residual(110)= lhs-rhs;
lhs =y(111);
rhs =y(92);
residual(111)= lhs-rhs;
lhs =y(112);
rhs =y(91);
residual(112)= lhs-rhs;
lhs =y(113);
rhs =y(91);
residual(113)= lhs-rhs;
lhs =y(114);
rhs =y(91);
residual(114)= lhs-rhs;
lhs =y(115);
rhs =y(88);
residual(115)= lhs-rhs;
lhs =y(116);
rhs =y(88);
residual(116)= lhs-rhs;
lhs =y(117);
rhs =y(88);
residual(117)= lhs-rhs;
lhs =y(118);
rhs =y(90);
residual(118)= lhs-rhs;
lhs =y(119);
rhs =y(90);
residual(119)= lhs-rhs;
lhs =y(120);
rhs =y(90);
residual(120)= lhs-rhs;
lhs =y(121);
rhs =y(83);
residual(121)= lhs-rhs;
lhs =y(122);
rhs =y(84);
residual(122)= lhs-rhs;
lhs =y(123);
rhs =y(14);
residual(123)= lhs-rhs;
lhs =y(124);
rhs =y(13);
residual(124)= lhs-rhs;
lhs =y(125);
rhs =y(33);
residual(125)= lhs-rhs;
lhs =y(126);
rhs =y(31);
residual(126)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(126, 126);

  %
  % Jacobian matrix
  %

T1186 = (-(T838/exp(y(16))));
T1188 = (-(T912/T914));
T1209 = (-((-((exp(y(21))*T479+T912)*T914))/(T914*T914)));
T1225 = getPowerDeriv(exp(y(17))/T402,1-params(41),1);
T1244 = (-(exp(y(21))*T479/T914));
T1250 = 2/(exp(T335^2)*1.772453850905516);
T1257 = 2/(1.772453850905516*exp(((T347-params(48))/(1.414213562373095*y(80)))^2));
T1270 = 2/(1.772453850905516*exp(((params(48)-T347)/(1.414213562373095*y(80)))^2));
T1278 = 2/(1.772453850905516*exp(((params(48)+T358-T347)/(1.414213562373095*y(80)))^2));
T1314 = exp((-(T433*T433))/2)/2.506628274631;
T1320 = exp((-((params(48)+T358-T347)/y(80)*(params(48)+T358-T347)/y(80)))/2)/2.506628274631;
T1347 = (-(exp(y(21))*exp(y(20))))/(exp(y(21))*exp(y(21)))/(exp(y(20))/exp(y(21)));
T1412 = (-(exp(y(22))*exp(y(20))))/(exp(y(22))*exp(y(22)))/(exp(y(20))/exp(y(22)));
T1415 = 0.5*T1250*T1412/(1.414213562373095*y(80));
T1468 = (-(exp(y(6))*exp(y(39))*exp(y(76))/T402/T914));
T1500 = exp(y(84))*(-((-exp(y(56)))/(exp(y(56))*exp(y(56)))));
T1525 = (-(exp(y(17))*T402*exp(y(63))))/(T402*exp(y(63))*T402*exp(y(63)));
T1545 = (-(bet__/(1+bet__)+params(47)/(1+bet__)-(1+bet__*params(47))/(1+bet__)));
T1587 = 0.5*T1250*(-((log(exp(y(20))/exp(y(22)))-params(48))*1.414213562373095))/(1.414213562373095*y(80)*1.414213562373095*y(80));
T1611 = T1278*(1.414213562373095*y(80)*2*y(80)-1.414213562373095*(params(48)+T358-T347))/(1.414213562373095*y(80)*1.414213562373095*y(80));
T1676 = (-(exp(y(77))*exp(y(19))*T402))/(T402*T402)+(-(T402*exp(y(76))*exp(y(6))))/(T402*T402);
T1680 = T1676+(-(T402*exp(y(69))*exp(y(21))*(1-params(37))*exp(y(19))))/(T402*T402);
T1697 = (-(T402*exp(y(19))*exp(y(40))*exp(y(69))*(1-params(37))))/(T402*T402);
T1728 = (-(T402*exp(y(6))*exp(y(76))*exp(y(41))))/(T402*T402);
T1735 = (-(T402*exp(y(6))*exp(y(76))*(exp(y(40))+exp(y(39)))))/(T402*T402);
  g1(1,88)=1;
  g1(2,71)=T3;
  g1(2,72)=T3;
  g1(2,73)=T3;
  g1(2,74)=T3;
  g1(2,89)=1;
  g1(3,71)=(-4);
  g1(3,90)=1;
  g1(4,83)=T3;
  g1(4,91)=1;
  g1(5,92)=1;
  g1(6,88)=1-(params(4)+params(3)+params(1)+params(2));
  g1(6,90)=(-(params(13)+params(12)+params(11)+params(10)+params(9)+params(8)+params(7)+params(6)+params(5)));
  g1(6,91)=(-(params(22)+params(21)+params(20)+params(19)+params(18)+params(17)+params(16)+params(15)+params(14)));
  g1(6,92)=(-(params(31)+params(30)+params(29)+params(28)+params(27)+params(26)+params(25)+params(24)+params(23)));
  g1(7,93)=1;
  g1(8,87)=T3;
  g1(8,93)=1;
  g1(10,37)=1;
  g1(10,52)=(-(bet__*exp(y(52))));
  g1(11,52)=(-((exp(gam__)-bet__*params(39)*params(66))/(exp(gam__)-bet__*params(39))));
  g1(11,85)=(-(exp(gam__)/(exp(gam__)-bet__*params(39))*(1-T226)+T226*bet__*params(39)/(exp(gam__)-bet__*params(39))));
  g1(12,85)=1;
  g1(13,71)=1;
  g1(13,85)=1;
  g1(14,5)=(-(exp(y(79))*exp(y(77))*exp(y(22))*exp(y(5))));
  g1(14,21)=(-(exp(y(79))*exp(y(22))*exp(y(59))*exp(y(69))*exp(y(21))*(1-params(37))));
  g1(14,22)=exp(y(22))-exp(y(79))*(T296+exp(y(42))*exp(y(22))*(1-params(37)));
  g1(14,39)=(-(exp(y(79))*(1-params(37))*exp(y(22))*exp(y(39))));
  g1(14,40)=(-(exp(y(79))*(1-params(37))*exp(y(22))*exp(y(40))*(1-exp(y(69)))));
  g1(14,42)=(-(exp(y(79))*exp(y(42))*(exp(y(77))+exp(y(22))*(1-params(37)))));
  g1(14,59)=(-(exp(y(79))*exp(y(22))*exp(y(59))*(exp(y(77))+exp(y(69))*exp(y(21))*(1-params(37)))));
  g1(14,69)=(-(exp(y(79))*(exp(y(22))*exp(y(59))*exp(y(69))*exp(y(21))*(1-params(37))+(1-params(37))*exp(y(22))*exp(y(40))*(-exp(y(69))))));
  g1(14,77)=(-(exp(y(79))*(exp(y(77))*exp(y(22))*exp(y(5))+exp(y(22))*exp(y(59))*exp(y(77))+exp(y(77))*exp(y(42)))));
  g1(14,79)=(-(exp(y(79))*(T296+exp(y(42))*(exp(y(77))+exp(y(22))*(1-params(37))))));
  g1(15,5)=(-(exp(y(79))*exp(y(22))*exp(y(5))));
  g1(15,22)=(-(exp(y(79))*(exp(y(22))*exp(y(59))+exp(y(22))*exp(y(5)))));
  g1(15,42)=(-(exp(y(79))*exp(y(42))));
  g1(15,59)=(-(exp(y(79))*exp(y(22))*exp(y(59))));
  g1(15,76)=(-exp(y(76)))/(exp(y(76))*exp(y(76)));
  g1(15,79)=(-(exp(y(79))*(exp(y(42))+exp(y(22))*exp(y(59))+exp(y(22))*exp(y(5)))));
  g1(16,5)=(-(exp(y(22))*exp(y(5))*exp(y(78))));
  g1(16,22)=(-((exp(y(22))*exp(y(59))+exp(y(22))*exp(y(5)))*exp(y(78))));
  g1(16,42)=(-(exp(y(42))*exp(y(78))));
  g1(16,58)=(-exp(y(58)))/(exp(y(58))*exp(y(58)));
  g1(16,59)=(-(exp(y(22))*exp(y(59))*exp(y(78))));
  g1(16,78)=(-((exp(y(42))+exp(y(22))*exp(y(59))+exp(y(22))*exp(y(5)))*exp(y(78))));
  g1(17,21)=(-(exp(y(21))*exp(y(81))));
  g1(17,22)=exp(y(22));
  g1(17,81)=(-(exp(y(21))*exp(y(81))));
  g1(18,20)=(-(0.5*1/(1.414213562373095*y(80))*T1250));
  g1(18,22)=(-T1415);
  g1(18,42)=exp(y(42));
  g1(18,80)=(-T1587);
  g1(19,39)=(-exp(y(39)));
  g1(19,40)=(-exp(y(40)));
  g1(19,41)=exp(y(41));
  g1(20,20)=0.5*1/(1.414213562373095*y(80))*T1257;
  g1(20,21)=0.5*T1257*T1347/(1.414213562373095*y(80));
  g1(20,40)=exp(y(40));
  g1(20,80)=0.5*T1257*(-(1.414213562373095*(T347-params(48))))/(1.414213562373095*y(80)*1.414213562373095*y(80));
  g1(21,20)=(-((exp(y(20))*params(51)*T367-(exp(y(20))*params(51)-T362)*T367)/(T367*T367)-(T367*((-(T372+exp(y(20))*params(51)*T3/(1.414213562373095*y(80))*T1270))+T362*T3/(1.414213562373095*y(80))*T1278)-T367*((-T372)+T362*T377))/(T367*T367)));
  g1(21,21)=(-((T367*(-T362)-(exp(y(20))*params(51)-T362)*T367)/(T367*T367)-(T367*((-(exp(y(20))*params(51)*T1270*(-T1347)/(1.414213562373095*y(80))))+T362*T377+T362*T1278*(-T1347)/(1.414213562373095*y(80)))-T367*((-T372)+T362*T377))/(T367*T367)));
  g1(21,59)=exp(y(59));
  g1(21,80)=(-((-(exp(y(21))*T361*2*y(80)/2))/T367-((-(exp(y(20))*params(51)*T1270*(-(1.414213562373095*(params(48)-T347)))/(1.414213562373095*y(80)*1.414213562373095*y(80))))+T377*exp(y(21))*T361*2*y(80)/2+T362*T1611)/T367));
  g1(22,20)=(-((-(exp(y(40))*exp(y(20))*(1-params(51))))/(exp(y(20))*(1-params(51))*exp(y(20))*(1-params(51)))));
  g1(22,24)=exp(y(24));
  g1(22,40)=(-(exp(y(40))/(exp(y(20))*(1-params(51)))));
  g1(23,3)=exp(y(3));
  g1(23,6)=(-(T398*T407));
  g1(23,9)=(-(T398*exp(y(9))));
  g1(23,19)=(-(T398*(T403+T416)));
  g1(23,20)=(-(T417*((-((-T361)*T394))/(T394*T394)-(T394*T361*T3/(1.414213562373095*y(80))*T1278-T394*T361*T377)/(T394*T394))));
  g1(23,21)=(-(T417*(-(T361*T1278*(-T1347)/(1.414213562373095*y(80))/T394))+T398*T416));
  g1(23,35)=(-(T398*(-exp(y(35)))));
  g1(23,69)=(-(T398*T416));
  g1(23,76)=(-(T398*T407));
  g1(23,77)=(-(T398*T403));
  g1(23,80)=(-(T417*((-(T361*2*y(80)/2))/T394-(T377*T361*2*y(80)/2+T361*T1611)/T394)));
  g1(23,85)=(-(T398*T1680));
  g1(24,6)=(-(exp(y(24))*T407));
  g1(24,9)=(-(exp(y(24))*exp(y(9))));
  g1(24,19)=(-(exp(y(24))*(T403+T416)));
  g1(24,21)=(-(exp(y(24))*T416));
  g1(24,24)=(-(exp(y(24))*T417));
  g1(24,35)=(-(exp(y(24))*(-exp(y(35)))));
  g1(24,61)=exp(y(61));
  g1(24,69)=(-(exp(y(24))*T416));
  g1(24,76)=(-(exp(y(24))*T407));
  g1(24,77)=(-(exp(y(24))*T403));
  g1(24,85)=(-(exp(y(24))*T1680));
  g1(25,20)=(-(0.5*1/(1.414213562373095*y(80))*T1257-0.5*1/(1.414213562373095*y(80))*T1250));
  g1(25,21)=(-(0.5*T1257*T1347/(1.414213562373095*y(80))));
  g1(25,22)=T1415;
  g1(25,39)=exp(y(39));
  g1(25,80)=(-(0.5*T1257*(-(1.414213562373095*(T347-params(48))))/(1.414213562373095*y(80)*1.414213562373095*y(80))-T1587));
  g1(26,5)=exp(y(5));
  g1(26,20)=(-((exp(y(20))*exp(params(48)+0.5*T358)*(T3/y(80)*T1314-T3/y(80)*T1320)-exp(y(20))*T438)/(exp(y(20))*exp(y(20)))));
  g1(26,21)=(-(exp(params(48)+0.5*T358)*(-(T1320*(-T1347)/y(80)))/exp(y(20))));
  g1(26,22)=(-(exp(params(48)+0.5*T358)*T1314*(-T1412)/y(80)/exp(y(20))));
  g1(26,80)=(-((T437*exp(params(48)+0.5*T358)*0.5*2*y(80)+exp(params(48)+0.5*T358)*(T1314*(y(80)*2*y(80)-(params(48)+T358-log(exp(y(20))/exp(y(22)))))/(y(80)*y(80))-T1320*(y(80)*2*y(80)-(params(48)+T358-T347))/(y(80)*y(80))))/exp(y(20))));
  g1(27,20)=(-((-(exp(y(39))*exp(y(20))))/(exp(y(20))*exp(y(20)))));
  g1(27,23)=exp(y(23));
  g1(27,39)=(-(exp(y(39))/exp(y(20))));
  g1(28,2)=exp(y(2));
  g1(28,5)=(-(exp(y(5))*T414));
  g1(28,6)=(-(exp(y(5))*T407));
  g1(28,9)=(-(exp(y(5))*exp(y(9))));
  g1(28,19)=(-(exp(y(5))*T403));
  g1(28,35)=(-(exp(y(5))*(-exp(y(35)))));
  g1(28,76)=(-(exp(y(5))*T407));
  g1(28,77)=(-(exp(y(5))*T403));
  g1(28,85)=(-(exp(y(5))*T1676));
  g1(29,6)=(-(T407*exp(y(23))));
  g1(29,9)=(-(exp(y(9))*exp(y(23))));
  g1(29,19)=(-(T403*exp(y(23))));
  g1(29,23)=(-(T414*exp(y(23))));
  g1(29,35)=(-(exp(y(23))*(-exp(y(35)))));
  g1(29,60)=exp(y(60));
  g1(29,76)=(-(T407*exp(y(23))));
  g1(29,77)=(-(T403*exp(y(23))));
  g1(29,85)=(-(exp(y(23))*T1676));
  g1(30,1)=exp(y(1));
  g1(30,2)=(-exp(y(2)));
  g1(30,3)=(-exp(y(3)));
  g1(31,6)=(-(exp(y(24))*T407+T407*exp(y(23))));
  g1(31,9)=(-(exp(y(24))*exp(y(9))+exp(y(9))*exp(y(23))));
  g1(31,19)=(-(exp(y(24))*(T403+T416)+T403*exp(y(23))));
  g1(31,21)=(-(exp(y(24))*T416));
  g1(31,23)=(-(T414*exp(y(23))));
  g1(31,24)=(-(exp(y(24))*T417));
  g1(31,35)=(-(exp(y(24))*(-exp(y(35)))+exp(y(23))*(-exp(y(35)))));
  g1(31,62)=exp(y(62));
  g1(31,69)=(-(exp(y(24))*T416));
  g1(31,76)=(-(exp(y(24))*T407+T407*exp(y(23))));
  g1(31,77)=(-(T403*exp(y(23))+exp(y(24))*T403));
  g1(31,85)=(-(exp(y(24))*T1680+exp(y(23))*T1676));
  g1(32,1)=(-exp(y(1)));
  g1(32,19)=exp(y(19))-(1-params(37))*exp(y(19))/T402;
  g1(32,85)=(-((-(T402*(1-params(37))*exp(y(19))))/(T402*T402)));
  g1(33,10)=exp(y(10));
  g1(33,19)=(-T479);
  g1(33,20)=(-(exp(y(61))*exp(y(20))*params(51)/exp(y(21))));
  g1(33,21)=(-(exp(y(61))*(-(exp(y(21))*exp(y(20))*params(51)))/(exp(y(21))*exp(y(21)))));
  g1(33,40)=(-T479);
  g1(33,61)=(-(exp(y(61))*exp(y(20))*params(51)/exp(y(21))));
  g1(33,69)=(-T479);
  g1(33,85)=(-T1697);
  g1(34,17)=(-exp(y(17)));
  g1(34,19)=exp(y(19));
  g1(35,1)=(-(exp(y(1))/exp(y(62))));
  g1(35,4)=exp(y(4));
  g1(35,62)=(-((-(exp(y(1))*exp(y(62))))/(exp(y(62))*exp(y(62)))));
  g1(36,25)=1;
  g1(36,85)=(-(0.5*params(55)*T402*2*(T402-exp(gam__))));
  g1(37,34)=1;
  g1(37,85)=(-(T402*params(55)));
  g1(38,20)=exp(y(20))-(-T509)/(1-(y(25)+T402*y(34)));
  g1(38,25)=(-((1-T509)/((1-(y(25)+T402*y(34)))*(1-(y(25)+T402*y(34))))));
  g1(38,34)=(-(((1-(y(25)+T402*y(34)))*(-(exp(y(79))*exp(y(20))*T508))-(1-T509)*(-T402))/((1-(y(25)+T402*y(34)))*(1-(y(25)+T402*y(34))))));
  g1(38,79)=(-((-T509)/(1-(y(25)+T402*y(34)))));
  g1(38,85)=(-(((1-(y(25)+T402*y(34)))*(-(y(34)*exp(y(79))*exp(y(20))*T402*2*T402))-(1-T509)*(-(T402*y(34))))/((1-(y(25)+T402*y(34)))*(1-(y(25)+T402*y(34))))));
  g1(39,16)=(-(exp(y(16))*(1-y(25))));
  g1(39,25)=exp(y(16));
  g1(39,62)=exp(y(62));
  g1(40,35)=(-(exp(y(35))/exp(y(84))));
  g1(40,36)=exp(y(36));
  g1(40,84)=(-((-(exp(y(35))*exp(y(84))))/(exp(y(84))*exp(y(84)))));
  g1(41,6)=(-T530);
  g1(41,7)=exp(y(7));
  g1(41,84)=(-((-(exp(y(6))*exp(y(84))))/(exp(y(84))*exp(y(84)))/T402));
  g1(41,85)=(-((-(T402*exp(y(6))/exp(y(84))))/(T402*T402)));
  g1(43,6)=T407-exp(y(6));
  g1(43,35)=(-exp(y(35)));
  g1(43,56)=T1500;
  g1(43,76)=T407;
  g1(43,84)=T545;
  g1(43,85)=(-(T402*exp(y(76))*exp(y(6))))/(T402*T402);
  g1(44,56)=(-exp(y(56)))/(exp(y(56))*exp(y(56)));
  g1(44,86)=exp(y(86));
  g1(45,83)=1;
  g1(46,9)=exp(y(9));
  g1(46,10)=(-(exp(y(10))*(exp(y(22))-exp(y(21)))));
  g1(46,16)=(-(exp(y(16))*exp(y(20))*(1-y(25))-exp(y(16))));
  g1(46,19)=T403;
  g1(46,20)=(-(exp(y(16))*exp(y(20))*(1-y(25))));
  g1(46,21)=(-(exp(y(10))*(-exp(y(21)))));
  g1(46,22)=(-(exp(y(22))*exp(y(10))));
  g1(46,25)=(-(exp(y(16))*(-exp(y(20)))));
  g1(46,63)=exp(y(82))*exp(y(63));
  g1(46,77)=T403;
  g1(46,82)=exp(y(82))*exp(y(63));
  g1(46,84)=(-exp(y(84)));
  g1(46,85)=(-(exp(y(77))*exp(y(19))*T402))/(T402*T402);
  g1(47,68)=exp(y(68));
  g1(47,77)=(-(T599*T596*exp(y(77))*getPowerDeriv(exp(y(77)),1-params(41),1)));
  g1(47,82)=(-(T598*exp(y(82))*getPowerDeriv(exp(y(82)),params(41),1)));
  g1(48,17)=exp(y(17))/(T402*exp(y(63)));
  g1(48,63)=T1525;
  g1(48,77)=(-((1-params(41))*(-(exp(y(77))*exp(y(82))))/(exp(y(77))*exp(y(77)))/params(41)));
  g1(48,82)=(-T607);
  g1(48,85)=T1525;
  g1(49,65)=T3;
  g1(49,71)=1-(bet__/(1+bet__*params(44))+params(44)/(1+bet__*params(44)));
  g1(50,17)=(-(T628*exp(y(17))/T402*T1225));
  g1(50,63)=(-(T627*exp(y(63))*getPowerDeriv(exp(y(63)),params(41),1)));
  g1(50,84)=exp(y(84));
  g1(50,85)=(-(T628*T1225*(-(T402*exp(y(17))))/(T402*T402)));
  g1(51,16)=(-exp(y(16)));
  g1(51,38)=(-exp(y(38)));
  g1(51,56)=(-T1500);
  g1(51,84)=exp(y(84))-T545;
  g1(52,52)=(-T661);
  g1(52,63)=(-(params(38)*T661));
  g1(52,67)=T3;
  g1(52,71)=T1545;
  g1(52,85)=T1545;
  g1(53,15)=exp(y(15));
  g1(53,16)=(-exp(y(16)));
  g1(53,38)=(-exp(y(38)));
  g1(53,56)=(-T1500);
  g1(53,84)=(-T545);
  g1(54,75)=1;
  g1(55,85)=1-params(62);
  g1(56,53)=1-params(64);
  g1(57,43)=1-rho_tau_trans__;
  g1(58,43)=T3;
  g1(58,53)=T3;
  g1(58,81)=1;
  g1(59,56)=1-params(63);
  g1(59,87)=T3;
  g1(60,52)=1-params(66);
  g1(61,54)=(-(params(69)/100));
  g1(61,65)=1-params(67);
  g1(62,55)=(-(params(70)/100));
  g1(62,67)=1-params(68);
  g1(63,54)=1;
  g1(64,55)=1;
  g1(65,80)=1;
  g1(66,50)=1;
  g1(66,85)=(-100);
  g1(67,49)=1;
  g1(67,85)=(-100);
  g1(68,45)=1;
  g1(68,85)=(-100);
  g1(69,51)=1;
  g1(69,85)=(-100);
  g1(70,70)=1;
  g1(70,71)=(-100);
  g1(71,57)=1;
  g1(71,58)=(-100);
  g1(72,63)=(-100);
  g1(72,64)=1;
  g1(73,11)=T3;
  g1(73,13)=1;
  g1(74,31)=1;
  g1(74,32)=(-400);
  g1(75,14)=1;
  g1(76,21)=(-((exp(y(21))*exp(y(21))*(1-params(37))*exp(y(71))-exp(y(21))*(exp(y(77))+exp(y(21))*(1-params(37)))*exp(y(71)))/(exp(y(21))*exp(y(21)))/exp(y(58))));
  g1(76,32)=exp(y(32));
  g1(76,58)=(-((-(exp(y(58))*T830))/(exp(y(58))*exp(y(58)))));
  g1(76,71)=(-(T830/exp(y(58))));
  g1(76,77)=(-(exp(y(77))*exp(y(71))/exp(y(21))/exp(y(58))));
  g1(77,6)=T1186;
  g1(77,10)=(-(exp(y(21))*exp(y(10))/exp(y(16))));
  g1(77,11)=exp(y(11));
  g1(77,16)=(-((-(exp(y(16))*T839))/(exp(y(16))*exp(y(16)))));
  g1(77,21)=(-(exp(y(21))*exp(y(10))/exp(y(16))));
  g1(77,41)=T1186;
  g1(77,76)=T1186;
  g1(77,85)=(-(T1728/exp(y(16))));
  g1(78,6)=(-T838);
  g1(78,10)=(-(exp(y(21))*exp(y(10))));
  g1(78,12)=exp(y(12));
  g1(78,21)=(-(exp(y(21))*exp(y(10))));
  g1(78,41)=(-T838);
  g1(78,76)=(-T838);
  g1(78,85)=(-T1728);
  g1(79,44)=1;
  g1(79,85)=(-100);
  g1(80,33)=1;
  g1(81,45)=T3;
  g1(81,46)=1;
  g1(82,46)=T3;
  g1(82,47)=1;
  g1(83,47)=T3;
  g1(83,48)=1;
  g1(84,71)=T3;
  g1(84,72)=1;
  g1(85,72)=T3;
  g1(85,73)=1;
  g1(86,73)=T3;
  g1(86,74)=1;
  g1(87,26)=1;
  g1(87,85)=(-100);
  g1(88,26)=T3;
  g1(88,28)=1;
  g1(89,28)=T3;
  g1(89,29)=1;
  g1(90,29)=T3;
  g1(90,30)=1;
  g1(91,26)=(-0.25);
  g1(91,27)=1;
  g1(91,28)=(-0.25);
  g1(91,29)=(-0.25);
  g1(91,30)=(-0.25);
  g1(92,6)=T1188;
  g1(92,11)=T1209;
  g1(92,16)=T1209;
  g1(92,18)=exp(y(18));
  g1(92,19)=T1244;
  g1(92,21)=T1244;
  g1(92,39)=T1468;
  g1(92,40)=(-((exp(y(21))*T479+exp(y(6))*exp(y(40))*exp(y(76))/T402)/T914));
  g1(92,69)=T1244;
  g1(92,76)=T1188;
  g1(92,85)=(-((exp(y(21))*T1697+T1735)/T914));
  g1(93,6)=T1188;
  g1(93,8)=exp(y(8));
  g1(93,11)=(-((-(T912*T914))/(T914*T914)));
  g1(93,16)=(-((-(T912*T914))/(T914*T914)));
  g1(93,39)=T1468;
  g1(93,40)=(-(exp(y(6))*exp(y(40))*exp(y(76))/T402/T914));
  g1(93,76)=T1188;
  g1(93,85)=(-(T1735/T914));
  g1(94,90)=T3;
  g1(94,94)=1;
  g1(95,90)=T3;
  g1(95,95)=1;
  g1(96,90)=T3;
  g1(96,96)=1;
  g1(97,91)=T3;
  g1(97,97)=1;
  g1(98,91)=T3;
  g1(98,98)=1;
  g1(99,91)=T3;
  g1(99,99)=1;
  g1(100,92)=T3;
  g1(100,100)=1;
  g1(101,92)=T3;
  g1(101,101)=1;
  g1(102,92)=T3;
  g1(102,102)=1;
  g1(103,83)=T3;
  g1(103,103)=1;
  g1(104,84)=T3;
  g1(104,104)=1;
  g1(105,14)=T3;
  g1(105,105)=1;
  g1(106,13)=T3;
  g1(106,106)=1;
  g1(107,33)=T3;
  g1(107,107)=1;
  g1(108,31)=T3;
  g1(108,108)=1;
  g1(109,92)=T3;
  g1(109,109)=1;
  g1(110,92)=T3;
  g1(110,110)=1;
  g1(111,92)=T3;
  g1(111,111)=1;
  g1(112,91)=T3;
  g1(112,112)=1;
  g1(113,91)=T3;
  g1(113,113)=1;
  g1(114,91)=T3;
  g1(114,114)=1;
  g1(115,88)=T3;
  g1(115,115)=1;
  g1(116,88)=T3;
  g1(116,116)=1;
  g1(117,88)=T3;
  g1(117,117)=1;
  g1(118,90)=T3;
  g1(118,118)=1;
  g1(119,90)=T3;
  g1(119,119)=1;
  g1(120,90)=T3;
  g1(120,120)=1;
  g1(121,83)=T3;
  g1(121,121)=1;
  g1(122,84)=T3;
  g1(122,122)=1;
  g1(123,14)=T3;
  g1(123,123)=1;
  g1(124,13)=T3;
  g1(124,124)=1;
  g1(125,33)=T3;
  g1(125,125)=1;
  g1(126,31)=T3;
  g1(126,126)=1;
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],126,15876);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],126,2000376);
end
end
end
end
