function [residual, g1, g2, g3] = US_DNGS15SWSP_static(y, x, params)
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

residual = zeros( 65, 1);

%
% Model equations
%

T167 = (-(1-params(41)*exp((-params(67)))))/(params(50)*(1+params(41)*exp((-params(67)))));
T172 = params(41)*exp((-params(67)))/(1+params(41)*exp((-params(67))));
T177 = 1/(1+params(41)*exp((-params(67))));
T180 = 1/(1-params(35));
T185 = T180*(params(58)-1)*y(18);
T206 = params(40)*exp(2*params(67))*(1+params(46)*exp(params(67)*(1-params(50))));
T208 = 1/(1+params(46)*exp(params(67)*(1-params(50))));
T212 = params(46)*exp(params(67)*(1-params(50)))/(1+params(46)*exp(params(67)*(1-params(50))));
T226 = params(75)/params(74);
T235 = (1+params(46)*exp(params(67)*(1-params(50))))*exp(2*params(67))*params(40)*params(75)/params(74);
T236 = y(19)*T235;
T307 = (1-exp(params(67)*(1-params(50)))*params(46)*params(36))*(1-params(36))/(params(36)*(1+(params(39)-1)*params(52)))/(1+exp(params(67)*(1-params(50)))*params(46)*params(37));
T312 = params(46)*exp(params(67)*(1-params(50)))/(1+exp(params(67)*(1-params(50)))*params(46)*params(37));
T330 = (1-exp(params(67)*(1-params(50)))*params(46)*params(44))*(1-params(44))/(params(44)*(1+0.5*params(53)))/(1+params(46)*exp(params(67)*(1-params(50))));
T338 = (1+exp(params(67)*(1-params(50)))*params(46)*params(45))/(1+params(46)*exp(params(67)*(1-params(50))));
T353 = 1/(1-params(41)*exp((-params(67))));
T371 = (1-params(38))/(1+params(68)-params(38));
T376 = params(50)*(1+params(41)*exp((-params(67))))/(1-params(41)*exp((-params(67))));
T377 = y(24)*T376;
lhs =y(37);
rhs =y(2)*4;
residual(1)= lhs-rhs;
lhs =y(38);
rhs =y(3)+y(3)+y(3)+y(3);
residual(2)= lhs-rhs;
lhs =y(39);
rhs =4*y(3);
residual(3)= lhs-rhs;
lhs =y(40);
rhs =y(11)-y(31);
residual(4)= lhs-rhs;
lhs =y(41);
rhs =y(11);
residual(5)= lhs-rhs;
lhs =y(42);
rhs =y(36);
residual(6)= lhs-rhs;
lhs =y(37);
rhs =params(32)*x(7)+y(41)*params(31)+y(41)*params(30)+y(41)*params(29)+y(41)*params(28)+y(41)*params(27)+y(41)*params(26)+y(41)*params(25)+y(41)*params(24)+y(41)*params(23)+y(40)*params(22)+y(40)*params(21)+y(40)*params(20)+y(40)*params(19)+y(40)*params(18)+y(40)*params(17)+y(40)*params(16)+y(40)*params(15)+y(40)*params(14)+y(39)*params(13)+y(39)*params(12)+y(39)*params(11)+y(39)*params(10)+y(39)*params(6)+y(39)*params(5)+y(37)*params(1)+y(37)*params(2)+y(37)*params(3)+y(37)*params(4)+y(39)*params(7)+y(39)*params(8)+y(39)*params(9);
residual(7)= lhs-rhs;
lhs =y(42);
rhs =params(34)*x(8);
residual(8)= lhs-rhs;
lhs =y(1);
rhs =T167*(y(2)-y(3))+y(24)+T172*(y(1)-y(17))+T177*(y(1)+T185);
residual(9)= lhs-rhs;
lhs =y(5);
rhs =T206*(y(6)-T208*(y(6)-y(17))-y(6)*T212-y(18)*(params(58)-1)*T180*T212-y(19));
residual(10)= lhs-rhs;
lhs =y(9);
rhs =(1-T226)*(y(9)-y(17))+y(6)*T226+T236;
residual(11)= lhs-rhs;
lhs =y(12);
rhs =y(9)+y(13)-y(17);
residual(12)= lhs-rhs;
lhs =y(13);
rhs =(1-params(42))/params(42)*y(8);
residual(13)= lhs-rhs;
lhs =y(14);
rhs =y(15)+params(35)*y(4)-params(35)*y(12);
residual(14)= lhs-rhs;
lhs =y(12);
rhs =y(4)+y(15)-y(8);
residual(15)= lhs-rhs;
lhs =y(11);
rhs =y(12)*params(35)*params(39)+y(4)*(1-params(35))*params(39)+y(18)*(params(39)-1)/(1-params(35));
residual(16)= lhs-rhs;
lhs =y(11);
rhs =params(88)*y(23)+y(1)*params(70)/params(77)+y(6)*params(75)/params(77)+y(13)*params(68)*params(73)/params(77)-y(18)*T180*params(88);
residual(17)= lhs-rhs;
lhs =y(3);
rhs =y(14)*T307+y(3)*params(37)/(1+exp(params(67)*(1-params(50)))*params(46)*params(37))+y(3)*T312+y(21);
residual(18)= lhs-rhs;
lhs =y(15);
rhs =T330*(y(16)-y(15))-y(3)*T338+T208*(y(15)-y(17)+y(3)*params(45))+T212*(y(3)+T185+y(15))+y(22);
residual(19)= lhs-rhs;
lhs =y(16);
rhs =T353*(y(1)-y(1)*params(41)*exp((-params(67)))+params(41)*exp((-params(67)))*y(17))+y(4)*params(43);
residual(20)= lhs-rhs;
lhs =y(7);
rhs =y(3)+y(8)*params(68)/(1+params(68)-params(38))+y(5)*T371-y(5);
residual(21)= lhs-rhs;
lhs =y(7);
rhs =y(2)-T377+params(78)*(y(5)+y(9)-y(10))+y(20);
residual(22)= lhs-rhs;
lhs =y(10);
rhs =params(82)*(y(7)-y(3))-(y(2)-y(3))*params(83)+(y(5)+y(9))*params(86)+y(10)*params(87)-y(20)*params(84)/params(85)-y(17)*params(79)*params(80)/params(81);
residual(23)= lhs-rhs;
lhs =y(17);
rhs =T185+T180*x(3);
residual(24)= lhs-rhs;
lhs =y(18);
rhs =x(3)+params(58)*y(18);
residual(25)= lhs-rhs;
lhs =y(23);
rhs =y(36)+y(23)*params(55)+x(3)*params(64);
residual(26)= lhs-rhs;
lhs =y(24);
rhs =y(24)*params(56)+x(1);
residual(27)= lhs-rhs;
lhs =y(19);
rhs =y(19)*params(57)+x(2);
residual(28)= lhs-rhs;
lhs =y(21);
rhs =y(21)*params(59)+x(4)-x(4)*params(65);
residual(29)= lhs-rhs;
lhs =y(22);
rhs =y(22)*params(60)+x(5)-x(5)*params(66);
residual(30)= lhs-rhs;
lhs =y(20);
rhs =y(20)*params(62)+x(6);
residual(31)= lhs-rhs;
lhs =y(25);
rhs =y(24)+T167*y(26)+T172*(y(25)-y(17))+T177*(T185+y(25));
residual(32)= lhs-rhs;
lhs =y(28);
rhs =T206*(y(29)-T208*(y(29)-y(17))-T212*y(29)-y(18)*(params(58)-1)*T180*T212-y(19));
residual(33)= lhs-rhs;
lhs =y(34);
rhs =T236+(1-T226)*(y(34)-y(17))+T226*y(29);
residual(34)= lhs-rhs;
lhs =y(32);
rhs =y(34)+y(33)-y(17);
residual(35)= lhs-rhs;
lhs =y(33);
rhs =(1-params(42))/params(42)*y(30);
residual(36)= lhs-rhs;
lhs =y(35);
rhs =y(27)*(-params(35))+params(35)*y(32);
residual(37)= lhs-rhs;
lhs =y(32);
rhs =y(27)+y(35)-y(30);
residual(38)= lhs-rhs;
lhs =y(31);
rhs =y(18)*(params(39)-1)/(1-params(35))+params(35)*params(39)*y(32)+(1-params(35))*params(39)*y(27);
residual(39)= lhs-rhs;
lhs =y(31);
rhs =params(88)*y(23)+params(70)/params(77)*y(25)+params(75)/params(77)*y(29)+params(68)*params(73)/params(77)*y(33)-y(18)*T180*params(88);
residual(40)= lhs-rhs;
lhs =y(35);
rhs =T353*(params(41)*exp((-params(67)))*y(17)+y(25)-params(41)*exp((-params(67)))*y(25))+params(43)*y(27);
residual(41)= lhs-rhs;
lhs =y(28);
rhs =T377+params(68)/(1+params(68)-params(38))*y(30)+T371*y(28)-y(26);
residual(42)= lhs-rhs;
lhs =y(43);
rhs =y(39);
residual(43)= lhs-rhs;
lhs =y(44);
rhs =y(39);
residual(44)= lhs-rhs;
lhs =y(45);
rhs =y(39);
residual(45)= lhs-rhs;
lhs =y(46);
rhs =y(40);
residual(46)= lhs-rhs;
lhs =y(47);
rhs =y(40);
residual(47)= lhs-rhs;
lhs =y(48);
rhs =y(40);
residual(48)= lhs-rhs;
lhs =y(49);
rhs =y(41);
residual(49)= lhs-rhs;
lhs =y(50);
rhs =y(41);
residual(50)= lhs-rhs;
lhs =y(51);
rhs =y(41);
residual(51)= lhs-rhs;
lhs =y(52);
rhs =y(3);
residual(52)= lhs-rhs;
lhs =y(53);
rhs =y(3);
residual(53)= lhs-rhs;
lhs =y(54);
rhs =y(41);
residual(54)= lhs-rhs;
lhs =y(55);
rhs =y(41);
residual(55)= lhs-rhs;
lhs =y(56);
rhs =y(41);
residual(56)= lhs-rhs;
lhs =y(57);
rhs =y(40);
residual(57)= lhs-rhs;
lhs =y(58);
rhs =y(40);
residual(58)= lhs-rhs;
lhs =y(59);
rhs =y(40);
residual(59)= lhs-rhs;
lhs =y(60);
rhs =y(37);
residual(60)= lhs-rhs;
lhs =y(61);
rhs =y(37);
residual(61)= lhs-rhs;
lhs =y(62);
rhs =y(37);
residual(62)= lhs-rhs;
lhs =y(63);
rhs =y(39);
residual(63)= lhs-rhs;
lhs =y(64);
rhs =y(39);
residual(64)= lhs-rhs;
lhs =y(65);
rhs =y(39);
residual(65)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(65, 65);

  %
  % Jacobian matrix
  %

  g1(1,2)=(-4);
  g1(1,37)=1;
  g1(2,3)=(-4);
  g1(2,38)=1;
  g1(3,3)=(-4);
  g1(3,39)=1;
  g1(4,11)=(-1);
  g1(4,31)=1;
  g1(4,40)=1;
  g1(5,11)=(-1);
  g1(5,41)=1;
  g1(6,36)=(-1);
  g1(6,42)=1;
  g1(7,37)=1-(params(4)+params(3)+params(1)+params(2));
  g1(7,39)=(-(params(13)+params(12)+params(11)+params(10)+params(9)+params(8)+params(7)+params(6)+params(5)));
  g1(7,40)=(-(params(22)+params(21)+params(20)+params(19)+params(18)+params(17)+params(16)+params(15)+params(14)));
  g1(7,41)=(-(params(31)+params(30)+params(29)+params(28)+params(27)+params(26)+params(25)+params(24)+params(23)));
  g1(8,42)=1;
  g1(9,1)=1-(T172+T177);
  g1(9,2)=(-T167);
  g1(9,3)=T167;
  g1(9,17)=T172;
  g1(9,18)=(-(T177*T180*(params(58)-1)));
  g1(9,24)=(-1);
  g1(10,5)=1;
  g1(10,6)=(-(T206*(1-T208-T212)));
  g1(10,17)=(-(T206*T208));
  g1(10,18)=(-(T206*(-((params(58)-1)*T180*T212))));
  g1(10,19)=T206;
  g1(11,6)=(-T226);
  g1(11,9)=1-(1-T226);
  g1(11,17)=1-T226;
  g1(11,19)=(-T235);
  g1(12,9)=(-1);
  g1(12,12)=1;
  g1(12,13)=(-1);
  g1(12,17)=1;
  g1(13,8)=(-((1-params(42))/params(42)));
  g1(13,13)=1;
  g1(14,4)=(-params(35));
  g1(14,12)=params(35);
  g1(14,14)=1;
  g1(14,15)=(-1);
  g1(15,4)=(-1);
  g1(15,8)=1;
  g1(15,12)=1;
  g1(15,15)=(-1);
  g1(16,4)=(-((1-params(35))*params(39)));
  g1(16,11)=1;
  g1(16,12)=(-(params(35)*params(39)));
  g1(16,18)=(-((params(39)-1)/(1-params(35))));
  g1(17,1)=(-(params(70)/params(77)));
  g1(17,6)=(-(params(75)/params(77)));
  g1(17,11)=1;
  g1(17,13)=(-(params(68)*params(73)/params(77)));
  g1(17,18)=T180*params(88);
  g1(17,23)=(-params(88));
  g1(18,3)=1-(params(37)/(1+exp(params(67)*(1-params(50)))*params(46)*params(37))+T312);
  g1(18,14)=(-T307);
  g1(18,21)=(-1);
  g1(19,3)=(-(T212+(-T338)+T208*params(45)));
  g1(19,15)=1-(T212+T208+(-T330));
  g1(19,16)=(-T330);
  g1(19,17)=T208;
  g1(19,18)=(-(T180*(params(58)-1)*T212));
  g1(19,22)=(-1);
  g1(20,1)=(-((1-params(41)*exp((-params(67))))*T353));
  g1(20,4)=(-params(43));
  g1(20,16)=1;
  g1(20,17)=(-(params(41)*exp((-params(67)))*T353));
  g1(21,3)=(-1);
  g1(21,5)=(-(T371-1));
  g1(21,7)=1;
  g1(21,8)=(-(params(68)/(1+params(68)-params(38))));
  g1(22,2)=(-1);
  g1(22,5)=(-params(78));
  g1(22,7)=1;
  g1(22,9)=(-params(78));
  g1(22,10)=params(78);
  g1(22,20)=(-1);
  g1(22,24)=T376;
  g1(23,2)=params(83);
  g1(23,3)=(-((-params(82))-(-params(83))));
  g1(23,5)=(-params(86));
  g1(23,7)=(-params(82));
  g1(23,9)=(-params(86));
  g1(23,10)=1-params(87);
  g1(23,17)=params(79)*params(80)/params(81);
  g1(23,20)=params(84)/params(85);
  g1(24,17)=1;
  g1(24,18)=(-(T180*(params(58)-1)));
  g1(25,18)=1-params(58);
  g1(26,23)=1-params(55);
  g1(26,36)=(-1);
  g1(27,24)=1-params(56);
  g1(28,19)=1-params(57);
  g1(29,21)=1-params(59);
  g1(30,22)=1-params(60);
  g1(31,20)=1-params(62);
  g1(32,17)=T172;
  g1(32,18)=(-(T177*T180*(params(58)-1)));
  g1(32,24)=(-1);
  g1(32,25)=1-(T172+T177);
  g1(32,26)=(-T167);
  g1(33,17)=(-(T206*T208));
  g1(33,18)=(-(T206*(-((params(58)-1)*T180*T212))));
  g1(33,19)=T206;
  g1(33,28)=1;
  g1(33,29)=(-(T206*(1-T208-T212)));
  g1(34,17)=1-T226;
  g1(34,19)=(-T235);
  g1(34,29)=(-T226);
  g1(34,34)=1-(1-T226);
  g1(35,17)=1;
  g1(35,32)=1;
  g1(35,33)=(-1);
  g1(35,34)=(-1);
  g1(36,30)=(-((1-params(42))/params(42)));
  g1(36,33)=1;
  g1(37,27)=params(35);
  g1(37,32)=(-params(35));
  g1(37,35)=1;
  g1(38,27)=(-1);
  g1(38,30)=1;
  g1(38,32)=1;
  g1(38,35)=(-1);
  g1(39,18)=(-((params(39)-1)/(1-params(35))));
  g1(39,27)=(-((1-params(35))*params(39)));
  g1(39,31)=1;
  g1(39,32)=(-(params(35)*params(39)));
  g1(40,18)=T180*params(88);
  g1(40,23)=(-params(88));
  g1(40,25)=(-(params(70)/params(77)));
  g1(40,29)=(-(params(75)/params(77)));
  g1(40,31)=1;
  g1(40,33)=(-(params(68)*params(73)/params(77)));
  g1(41,17)=(-(params(41)*exp((-params(67)))*T353));
  g1(41,25)=(-((1-params(41)*exp((-params(67))))*T353));
  g1(41,27)=(-params(43));
  g1(41,35)=1;
  g1(42,24)=(-T376);
  g1(42,26)=1;
  g1(42,28)=1-T371;
  g1(42,30)=(-(params(68)/(1+params(68)-params(38))));
  g1(43,39)=(-1);
  g1(43,43)=1;
  g1(44,39)=(-1);
  g1(44,44)=1;
  g1(45,39)=(-1);
  g1(45,45)=1;
  g1(46,40)=(-1);
  g1(46,46)=1;
  g1(47,40)=(-1);
  g1(47,47)=1;
  g1(48,40)=(-1);
  g1(48,48)=1;
  g1(49,41)=(-1);
  g1(49,49)=1;
  g1(50,41)=(-1);
  g1(50,50)=1;
  g1(51,41)=(-1);
  g1(51,51)=1;
  g1(52,3)=(-1);
  g1(52,52)=1;
  g1(53,3)=(-1);
  g1(53,53)=1;
  g1(54,41)=(-1);
  g1(54,54)=1;
  g1(55,41)=(-1);
  g1(55,55)=1;
  g1(56,41)=(-1);
  g1(56,56)=1;
  g1(57,40)=(-1);
  g1(57,57)=1;
  g1(58,40)=(-1);
  g1(58,58)=1;
  g1(59,40)=(-1);
  g1(59,59)=1;
  g1(60,37)=(-1);
  g1(60,60)=1;
  g1(61,37)=(-1);
  g1(61,61)=1;
  g1(62,37)=(-1);
  g1(62,62)=1;
  g1(63,39)=(-1);
  g1(63,63)=1;
  g1(64,39)=(-1);
  g1(64,64)=1;
  g1(65,39)=(-1);
  g1(65,65)=1;
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],65,4225);
if nargout >= 4,
  %
  % Third order derivatives
  %

  g3 = sparse([],[],[],65,274625);
end
end
end
end
