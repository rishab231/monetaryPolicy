function [residual, g1, g2, g3] = US_DNGS15SWpi_dynamic(y, x, params, steady_state, it_)
%
% Status : Computes dynamic model for Dynare
%
% Inputs :
%   y         [#dynamic variables by 1] double    vector of endogenous variables in the order stored
%                                                 in M_.lead_lag_incidence; see the Manual
%   x         [nperiods by M_.exo_nbr] double     matrix of exogenous variables (in declaration order)
%                                                 for all simulation periods
%   steady_state  [M_.endo_nbr by 1] double       vector of steady state values
%   params    [M_.param_nbr by 1] double          vector of parameter values in declaration order
%   it_       scalar double                       time period for exogenous variables for which to evaluate the model
%
% Outputs:
%   residual  [M_.endo_nbr by 1] double    vector of residuals of the dynamic model equations in order of 
%                                          declaration of the equations.
%                                          Dynare may prepend auxiliary equations, see M_.aux_vars
%   g1        [M_.endo_nbr by #dynamic variables] double    Jacobian matrix of the dynamic model equations;
%                                                           rows: equations in order of declaration
%                                                           columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g2        [M_.endo_nbr by (#dynamic variables)^2] double   Hessian matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%   g3        [M_.endo_nbr by (#dynamic variables)^3] double   Third order derivative matrix of the dynamic model equations;
%                                                              rows: equations in order of declaration
%                                                              columns: variables in order stored in M_.lead_lag_incidence followed by the ones in M_.exo_names
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

%
% Model equations
%

residual = zeros(64, 1);
T179 = (-(1-params(41)*exp((-params(67)))))/(params(50)*(1+params(41)*exp((-params(67)))));
T185 = params(41)*exp((-params(67)))/(1+params(41)*exp((-params(67))));
T191 = 1/(1+params(41)*exp((-params(67))));
T195 = 1/(1-params(35));
T207 = (params(50)-1)*params(69)/(params(50)*(1+params(41)*exp((-params(67)))));
T225 = params(40)*exp(2*params(67))*(1+params(46)*exp(params(67)*(1-params(50))));
T227 = 1/(1+params(46)*exp(params(67)*(1-params(50))));
T232 = params(46)*exp(params(67)*(1-params(50)))/(1+params(46)*exp(params(67)*(1-params(50))));
T247 = params(75)/params(74);
T257 = (1+params(46)*exp(params(67)*(1-params(50))))*exp(2*params(67))*params(40)*params(75)/params(74);
T258 = y(52)*T257;
T329 = (1-exp(params(67)*(1-params(50)))*params(46)*params(36))*(1-params(36))/(params(36)*(1+(params(39)-1)*params(52)))/(1+exp(params(67)*(1-params(50)))*params(46)*params(37));
T334 = params(46)*exp(params(67)*(1-params(50)))/(1+exp(params(67)*(1-params(50)))*params(46)*params(37));
T353 = (1-exp(params(67)*(1-params(50)))*params(46)*params(44))*(1-params(44))/(params(44)*(1+0.5*params(53)))/(1+params(46)*exp(params(67)*(1-params(50))));
T361 = (1+exp(params(67)*(1-params(50)))*params(46)*params(45))/(1+params(46)*exp(params(67)*(1-params(50))));
T378 = 1/(1-params(41)*exp((-params(67))));
T396 = (1-params(38))/(1+params(68)-params(38));
T403 = params(50)*(1+params(41)*exp((-params(67))))/(1-params(41)*exp((-params(67))));
T404 = y(57)*T403;
lhs =y(70);
rhs =y(36)*4;
residual(1)= lhs-rhs;
lhs =y(71);
rhs =y(37)+y(2)+y(21)+y(22);
residual(2)= lhs-rhs;
lhs =y(72);
rhs =4*y(37);
residual(3)= lhs-rhs;
lhs =y(73);
rhs =y(44)-y(64);
residual(4)= lhs-rhs;
lhs =y(74);
rhs =y(44);
residual(5)= lhs-rhs;
lhs =y(75);
rhs =y(69);
residual(6)= lhs-rhs;
lhs =y(70);
rhs =params(32)*x(it_, 7)+params(31)*y(121)+params(30)*y(120)+params(29)*y(119)+params(28)*y(112)+params(27)*y(25)+params(26)*y(24)+params(25)*y(23)+params(24)*y(20)+y(74)*params(23)+params(22)*y(118)+params(21)*y(117)+params(20)*y(116)+params(19)*y(111)+params(18)*y(28)+params(17)*y(27)+params(16)*y(26)+params(15)*y(19)+y(73)*params(14)+params(13)*y(115)+params(12)*y(114)+params(11)*y(113)+params(10)*y(110)+params(6)*y(18)+y(72)*params(5)+params(1)*y(17)+params(2)*y(29)+params(3)*y(30)+params(4)*y(31)+params(7)*y(32)+params(8)*y(33)+params(9)*y(34);
residual(7)= lhs-rhs;
lhs =y(75);
rhs =params(34)*x(it_, 8);
residual(8)= lhs-rhs;
lhs =y(35);
rhs =T179*(y(36)-y(100))+y(57)+T185*(y(1)-y(50))+T191*(y(99)+T195*(params(58)-1)*y(51))+T207*(y(38)-y(101));
residual(9)= lhs-rhs;
lhs =y(39);
rhs =T225*(y(40)-T227*(y(4)-y(50))-T232*y(102)-y(51)*(params(58)-1)*T195*T232-y(52));
residual(10)= lhs-rhs;
lhs =y(43);
rhs =(1-T247)*(y(5)-y(50))+y(40)*T247+T258;
residual(11)= lhs-rhs;
lhs =y(45);
rhs =y(5)+y(46)-y(50);
residual(12)= lhs-rhs;
lhs =y(46);
rhs =(1-params(42))/params(42)*y(42);
residual(13)= lhs-rhs;
lhs =y(47);
rhs =y(48)+params(35)*y(38)-params(35)*y(45);
residual(14)= lhs-rhs;
lhs =y(45);
rhs =y(38)+y(48)-y(42);
residual(15)= lhs-rhs;
lhs =y(44);
rhs =y(45)*params(35)*params(39)+y(38)*(1-params(35))*params(39)+y(51)*(params(39)-1)/(1-params(35));
residual(16)= lhs-rhs;
lhs =y(44);
rhs =params(78)*y(56)+y(35)*params(70)/params(77)+y(40)*params(75)/params(77)+y(46)*params(68)*params(73)/params(77)-y(51)*T195*params(78);
residual(17)= lhs-rhs;
lhs =y(37);
rhs =y(47)*T329+y(2)*params(37)/(1+exp(params(67)*(1-params(50)))*params(46)*params(37))+y(100)*T334+y(54);
residual(18)= lhs-rhs;
lhs =y(48);
rhs =T353*(y(49)-y(48))-y(37)*T361+T227*(y(6)-y(50)+y(2)*params(45))+T232*(y(100)+T195*(params(58)-1)*y(51)+y(104))+y(55);
residual(19)= lhs-rhs;
lhs =y(49);
rhs =T378*(y(35)-params(41)*exp((-params(67)))*y(1)+params(41)*exp((-params(67)))*y(50))+y(38)*params(43);
residual(20)= lhs-rhs;
lhs =y(41);
rhs =y(37)+y(42)*params(68)/(1+params(68)-params(38))+y(39)*T396-y(3);
residual(21)= lhs-rhs;
lhs =y(103);
rhs =y(36)-T404+y(53);
residual(22)= lhs-rhs;
lhs =y(50);
rhs =T195*(params(58)-1)*y(7)+T195*x(it_, 3);
residual(23)= lhs-rhs;
lhs =y(51);
rhs =x(it_, 3)+params(58)*y(7);
residual(24)= lhs-rhs;
lhs =y(56);
rhs =y(69)+params(55)*y(12)+x(it_, 3)*params(64);
residual(25)= lhs-rhs;
lhs =y(57);
rhs =params(56)*y(13)+x(it_, 1);
residual(26)= lhs-rhs;
lhs =y(52);
rhs =params(57)*y(8)+x(it_, 2);
residual(27)= lhs-rhs;
lhs =y(54);
rhs =params(59)*y(10)+x(it_, 4)-params(65)*x(it_-1, 4);
residual(28)= lhs-rhs;
lhs =y(55);
rhs =params(60)*y(11)+x(it_, 5)-params(66)*x(it_-1, 5);
residual(29)= lhs-rhs;
lhs =y(53);
rhs =params(62)*y(9)+x(it_, 6);
residual(30)= lhs-rhs;
lhs =y(58);
rhs =y(57)+T179*y(59)+T185*(y(14)-y(50))+T191*(T195*(params(58)-1)*y(51)+y(105))+T207*(y(60)-y(106));
residual(31)= lhs-rhs;
lhs =y(61);
rhs =T225*(y(62)-T227*(y(15)-y(50))-T232*y(108)-y(51)*(params(58)-1)*T195*T232-y(52));
residual(32)= lhs-rhs;
lhs =y(67);
rhs =T258+(1-T247)*(y(16)-y(50))+T247*y(62);
residual(33)= lhs-rhs;
lhs =y(65);
rhs =y(16)+y(66)-y(50);
residual(34)= lhs-rhs;
lhs =y(66);
rhs =(1-params(42))/params(42)*y(63);
residual(35)= lhs-rhs;
lhs =y(68);
rhs =y(60)*(-params(35))+params(35)*y(65);
residual(36)= lhs-rhs;
lhs =y(65);
rhs =y(60)+y(68)-y(63);
residual(37)= lhs-rhs;
lhs =y(64);
rhs =y(51)*(params(39)-1)/(1-params(35))+params(35)*params(39)*y(65)+(1-params(35))*params(39)*y(60);
residual(38)= lhs-rhs;
lhs =y(64);
rhs =params(78)*y(56)+params(70)/params(77)*y(58)+params(75)/params(77)*y(62)+params(68)*params(73)/params(77)*y(66)-y(51)*T195*params(78);
residual(39)= lhs-rhs;
lhs =y(68);
rhs =T378*(params(41)*exp((-params(67)))*y(50)+y(58)-params(41)*exp((-params(67)))*y(14))+params(43)*y(60);
residual(40)= lhs-rhs;
lhs =y(61);
rhs =T404+params(68)/(1+params(68)-params(38))*y(109)+T396*y(107)-y(59);
residual(41)= lhs-rhs;
lhs =y(76);
rhs =y(110);
residual(42)= lhs-rhs;
lhs =y(77);
rhs =y(113);
residual(43)= lhs-rhs;
lhs =y(78);
rhs =y(114);
residual(44)= lhs-rhs;
lhs =y(79);
rhs =y(111);
residual(45)= lhs-rhs;
lhs =y(80);
rhs =y(116);
residual(46)= lhs-rhs;
lhs =y(81);
rhs =y(117);
residual(47)= lhs-rhs;
lhs =y(82);
rhs =y(112);
residual(48)= lhs-rhs;
lhs =y(83);
rhs =y(119);
residual(49)= lhs-rhs;
lhs =y(84);
rhs =y(120);
residual(50)= lhs-rhs;
lhs =y(85);
rhs =y(2);
residual(51)= lhs-rhs;
lhs =y(86);
rhs =y(21);
residual(52)= lhs-rhs;
lhs =y(87);
rhs =y(20);
residual(53)= lhs-rhs;
lhs =y(88);
rhs =y(23);
residual(54)= lhs-rhs;
lhs =y(89);
rhs =y(24);
residual(55)= lhs-rhs;
lhs =y(90);
rhs =y(19);
residual(56)= lhs-rhs;
lhs =y(91);
rhs =y(26);
residual(57)= lhs-rhs;
lhs =y(92);
rhs =y(27);
residual(58)= lhs-rhs;
lhs =y(93);
rhs =y(17);
residual(59)= lhs-rhs;
lhs =y(94);
rhs =y(29);
residual(60)= lhs-rhs;
lhs =y(95);
rhs =y(30);
residual(61)= lhs-rhs;
lhs =y(96);
rhs =y(18);
residual(62)= lhs-rhs;
lhs =y(97);
rhs =y(32);
residual(63)= lhs-rhs;
lhs =y(98);
rhs =y(33);
residual(64)= lhs-rhs;
if nargout >= 2,
  g1 = zeros(64, 129);

  %
  % Jacobian matrix
  %

T3 = (-1);
  g1(1,36)=(-4);
  g1(1,70)=1;
  g1(2,2)=T3;
  g1(2,37)=T3;
  g1(2,71)=1;
  g1(2,21)=T3;
  g1(2,22)=T3;
  g1(3,37)=(-4);
  g1(3,72)=1;
  g1(4,44)=T3;
  g1(4,64)=1;
  g1(4,73)=1;
  g1(5,44)=T3;
  g1(5,74)=1;
  g1(6,69)=T3;
  g1(6,75)=1;
  g1(7,17)=(-params(1));
  g1(7,70)=1;
  g1(7,18)=(-params(6));
  g1(7,72)=(-params(5));
  g1(7,110)=(-params(10));
  g1(7,19)=(-params(15));
  g1(7,73)=(-params(14));
  g1(7,111)=(-params(19));
  g1(7,20)=(-params(24));
  g1(7,74)=(-params(23));
  g1(7,112)=(-params(28));
  g1(7,128)=(-params(32));
  g1(7,113)=(-params(11));
  g1(7,114)=(-params(12));
  g1(7,115)=(-params(13));
  g1(7,116)=(-params(20));
  g1(7,117)=(-params(21));
  g1(7,118)=(-params(22));
  g1(7,119)=(-params(29));
  g1(7,120)=(-params(30));
  g1(7,121)=(-params(31));
  g1(7,23)=(-params(25));
  g1(7,24)=(-params(26));
  g1(7,25)=(-params(27));
  g1(7,26)=(-params(16));
  g1(7,27)=(-params(17));
  g1(7,28)=(-params(18));
  g1(7,29)=(-params(2));
  g1(7,30)=(-params(3));
  g1(7,31)=(-params(4));
  g1(7,32)=(-params(7));
  g1(7,33)=(-params(8));
  g1(7,34)=(-params(9));
  g1(8,75)=1;
  g1(8,129)=(-params(34));
  g1(9,1)=(-T185);
  g1(9,35)=1;
  g1(9,99)=(-T191);
  g1(9,36)=(-T179);
  g1(9,100)=T179;
  g1(9,38)=(-T207);
  g1(9,101)=T207;
  g1(9,50)=T185;
  g1(9,51)=(-(T191*T195*(params(58)-1)));
  g1(9,57)=T3;
  g1(10,39)=1;
  g1(10,4)=(-(T225*(-T227)));
  g1(10,40)=(-T225);
  g1(10,102)=(-(T225*(-T232)));
  g1(10,50)=(-(T225*T227));
  g1(10,51)=(-(T225*(-((params(58)-1)*T195*T232))));
  g1(10,52)=T225;
  g1(11,40)=(-T247);
  g1(11,5)=(-(1-T247));
  g1(11,43)=1;
  g1(11,50)=1-T247;
  g1(11,52)=(-T257);
  g1(12,5)=T3;
  g1(12,45)=1;
  g1(12,46)=T3;
  g1(12,50)=1;
  g1(13,42)=(-((1-params(42))/params(42)));
  g1(13,46)=1;
  g1(14,38)=(-params(35));
  g1(14,45)=params(35);
  g1(14,47)=1;
  g1(14,48)=T3;
  g1(15,38)=T3;
  g1(15,42)=1;
  g1(15,45)=1;
  g1(15,48)=T3;
  g1(16,38)=(-((1-params(35))*params(39)));
  g1(16,44)=1;
  g1(16,45)=(-(params(35)*params(39)));
  g1(16,51)=(-((params(39)-1)/(1-params(35))));
  g1(17,35)=(-(params(70)/params(77)));
  g1(17,40)=(-(params(75)/params(77)));
  g1(17,44)=1;
  g1(17,46)=(-(params(68)*params(73)/params(77)));
  g1(17,51)=T195*params(78);
  g1(17,56)=(-params(78));
  g1(18,2)=(-(params(37)/(1+exp(params(67)*(1-params(50)))*params(46)*params(37))));
  g1(18,37)=1;
  g1(18,100)=(-T334);
  g1(18,47)=(-T329);
  g1(18,54)=T3;
  g1(19,2)=(-(T227*params(45)));
  g1(19,37)=T361;
  g1(19,100)=(-T232);
  g1(19,6)=(-T227);
  g1(19,48)=1-(-T353);
  g1(19,104)=(-T232);
  g1(19,49)=(-T353);
  g1(19,50)=T227;
  g1(19,51)=(-(T195*(params(58)-1)*T232));
  g1(19,55)=T3;
  g1(20,1)=(-(T378*(-(params(41)*exp((-params(67)))))));
  g1(20,35)=(-T378);
  g1(20,38)=(-params(43));
  g1(20,49)=1;
  g1(20,50)=(-(params(41)*exp((-params(67)))*T378));
  g1(21,37)=T3;
  g1(21,3)=1;
  g1(21,39)=(-T396);
  g1(21,41)=1;
  g1(21,42)=(-(params(68)/(1+params(68)-params(38))));
  g1(22,36)=T3;
  g1(22,103)=1;
  g1(22,53)=T3;
  g1(22,57)=T403;
  g1(23,50)=1;
  g1(23,7)=(-(T195*(params(58)-1)));
  g1(23,124)=(-T195);
  g1(24,7)=(-params(58));
  g1(24,51)=1;
  g1(24,124)=T3;
  g1(25,12)=(-params(55));
  g1(25,56)=1;
  g1(25,69)=T3;
  g1(25,124)=(-params(64));
  g1(26,13)=(-params(56));
  g1(26,57)=1;
  g1(26,122)=T3;
  g1(27,8)=(-params(57));
  g1(27,52)=1;
  g1(27,123)=T3;
  g1(28,10)=(-params(59));
  g1(28,54)=1;
  g1(28,125)=params(65);
  g1(28,125)=T3;
  g1(29,11)=(-params(60));
  g1(29,55)=1;
  g1(29,126)=params(66);
  g1(29,126)=T3;
  g1(30,9)=(-params(62));
  g1(30,53)=1;
  g1(30,127)=T3;
  g1(31,50)=T185;
  g1(31,51)=(-(T191*T195*(params(58)-1)));
  g1(31,57)=T3;
  g1(31,14)=(-T185);
  g1(31,58)=1;
  g1(31,105)=(-T191);
  g1(31,59)=(-T179);
  g1(31,60)=(-T207);
  g1(31,106)=T207;
  g1(32,50)=(-(T225*T227));
  g1(32,51)=(-(T225*(-((params(58)-1)*T195*T232))));
  g1(32,52)=T225;
  g1(32,61)=1;
  g1(32,15)=(-(T225*(-T227)));
  g1(32,62)=(-T225);
  g1(32,108)=(-(T225*(-T232)));
  g1(33,50)=1-T247;
  g1(33,52)=(-T257);
  g1(33,62)=(-T247);
  g1(33,16)=(-(1-T247));
  g1(33,67)=1;
  g1(34,50)=1;
  g1(34,65)=1;
  g1(34,66)=T3;
  g1(34,16)=T3;
  g1(35,63)=(-((1-params(42))/params(42)));
  g1(35,66)=1;
  g1(36,60)=params(35);
  g1(36,65)=(-params(35));
  g1(36,68)=1;
  g1(37,60)=T3;
  g1(37,63)=1;
  g1(37,65)=1;
  g1(37,68)=T3;
  g1(38,51)=(-((params(39)-1)/(1-params(35))));
  g1(38,60)=(-((1-params(35))*params(39)));
  g1(38,64)=1;
  g1(38,65)=(-(params(35)*params(39)));
  g1(39,51)=T195*params(78);
  g1(39,56)=(-params(78));
  g1(39,58)=(-(params(70)/params(77)));
  g1(39,62)=(-(params(75)/params(77)));
  g1(39,64)=1;
  g1(39,66)=(-(params(68)*params(73)/params(77)));
  g1(40,50)=(-(params(41)*exp((-params(67)))*T378));
  g1(40,14)=(-(T378*(-(params(41)*exp((-params(67)))))));
  g1(40,58)=(-T378);
  g1(40,60)=(-params(43));
  g1(40,68)=1;
  g1(41,57)=(-T403);
  g1(41,59)=1;
  g1(41,61)=1;
  g1(41,107)=(-T396);
  g1(41,109)=(-(params(68)/(1+params(68)-params(38))));
  g1(42,110)=T3;
  g1(42,76)=1;
  g1(43,113)=T3;
  g1(43,77)=1;
  g1(44,114)=T3;
  g1(44,78)=1;
  g1(45,111)=T3;
  g1(45,79)=1;
  g1(46,116)=T3;
  g1(46,80)=1;
  g1(47,117)=T3;
  g1(47,81)=1;
  g1(48,112)=T3;
  g1(48,82)=1;
  g1(49,119)=T3;
  g1(49,83)=1;
  g1(50,120)=T3;
  g1(50,84)=1;
  g1(51,2)=T3;
  g1(51,85)=1;
  g1(52,21)=T3;
  g1(52,86)=1;
  g1(53,20)=T3;
  g1(53,87)=1;
  g1(54,23)=T3;
  g1(54,88)=1;
  g1(55,24)=T3;
  g1(55,89)=1;
  g1(56,19)=T3;
  g1(56,90)=1;
  g1(57,26)=T3;
  g1(57,91)=1;
  g1(58,27)=T3;
  g1(58,92)=1;
  g1(59,17)=T3;
  g1(59,93)=1;
  g1(60,29)=T3;
  g1(60,94)=1;
  g1(61,30)=T3;
  g1(61,95)=1;
  g1(62,18)=T3;
  g1(62,96)=1;
  g1(63,32)=T3;
  g1(63,97)=1;
  g1(64,33)=T3;
  g1(64,98)=1;

if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],64,16641);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],64,2146689);
end
end
end
end
