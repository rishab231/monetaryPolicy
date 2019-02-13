function [residual, g1, g2] = EA_SR07_static(y, x, params)
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
%                                          in order of declaration of the equations
%   g1        [M_.endo_nbr by M_.endo_nbr] double    Jacobian matrix of the static model equations;
%                                                     columns: variables in declaration order
%                                                     rows: equations in order of declaration
%   g2        [M_.endo_nbr by (M_.endo_nbr)^2] double   Hessian matrix of the static model equations;
%                                                       columns: variables in declaration order
%                                                       rows: equations in order of declaration
%
%
% Warning : this file is generated automatically by Dynare
%           from model file (.mod)

residual = zeros( 147, 1);

%
% Model equations
%

T3 = (-1);
T214 = params(45)*params(125)/(1+params(45)*params(125)-params(45));
T312 = (-(1/params(113)));
T359 = (-(1/(params(73)^2+params(35)*params(70)^2)));
T397 = params(73)^2*params(69);
T400 = 1/(T397*(1+params(35)));
T429 = params(75)/(1-params(75));
T446 = (params(73)-params(35)*(1-params(41)))/params(73);
T450 = T429*(params(73)-params(35)*(1-params(41)))/params(73);
T451 = y(27)*T450;
T474 = (1-params(44))*params(130)^params(37)*params(144)/params(146);
T486 = (1-params(43))*params(129)^params(71)*params(152)/params(146);
T496 = params(155)/params(146);
T518 = (1-params(75))*params(136)*params(151)/(params(73)*params(146));
T524 = (1-params(41))/params(73);
T535 = 1/params(54);
T561 = params(39)*params(149)/(params(73)*params(124));
T590 = (1-params(44))*(-params(37))*params(130)^(-(1-params(37)));
T599 = (1-params(43))*(-params(71))*params(129)^(-(1-params(71)));
T627 = params(44)*params(132)^(1-params(37));
T632 = params(43)*params(135)^(1-params(71));
T637 = (1-params(44))*params(131)^(1-params(37));
T647 = (-params(44))*params(133)^(-(1-params(37)));
T664 = (1-params(60))*(1-params(35)*params(60))/((1+params(35))*params(60));
T671 = 1/params(38);
T674 = params(75)*T671/(1-params(75));
T675 = y(27)*T674;
lhs =y(98);
rhs =4*y(22);
residual(1)= lhs-rhs;
lhs =y(99);
rhs =y(48)+y(48)+y(113)+y(114);
residual(2)= lhs-rhs;
lhs =y(100);
rhs =4*y(48);
residual(3)= lhs-rhs;
lhs =y(101);
rhs =y(49)-y(87);
residual(4)= lhs-rhs;
lhs =y(102);
rhs =y(49);
residual(5)= lhs-rhs;
lhs =y(103);
rhs =y(97);
residual(6)= lhs-rhs;
lhs =y(98);
rhs =params(32)*x(20)+params(31)*y(112)+params(30)*y(111)+params(29)*y(110)+y(102)*params(28)+params(27)*y(117)+params(26)*y(116)+params(25)*y(115)+y(102)*params(24)+y(102)*params(23)+params(22)*y(109)+params(21)*y(108)+params(20)*y(107)+y(101)*params(19)+params(18)*y(120)+params(17)*y(119)+params(16)*y(118)+y(101)*params(15)+y(101)*params(14)+params(13)*y(106)+params(12)*y(105)+params(11)*y(104)+y(100)*params(10)+y(100)*params(6)+y(100)*params(5)+y(98)*params(1)+params(2)*y(121)+params(3)*y(122)+params(4)*y(123)+params(7)*y(124)+params(8)*y(125)+params(9)*y(126);
residual(7)= lhs-rhs;
lhs =y(103);
rhs =params(34)*x(21);
residual(8)= lhs-rhs;
lhs =y(1)-y(43);
rhs =params(35)/(1+params(35)*params(62))*(y(1)-y(43)*params(48))+(y(1)-y(43))*params(62)/(1+params(35)*params(62))-y(43)*params(35)*params(62)*(1-params(48))/(1+params(35)*params(62))+(1-params(55))*(1-params(35)*params(55))/((1+params(35)*params(62))*params(55))*y(44)+y(36);
residual(9)= lhs-rhs;
lhs =y(44);
rhs =params(36)*(y(33)+y(11)-y(13))+y(5)+y(51)-y(32);
residual(10)= lhs-rhs;
lhs =y(45);
rhs =y(11)+y(51)+y(33)+y(5)-y(13);
residual(11)= lhs-rhs;
lhs =y(51);
rhs =y(22)*T214;
residual(12)= lhs-rhs;
lhs =y(2)-y(43);
rhs =params(35)/(1+params(35)*params(63))*(y(2)-y(43)*params(48))+(y(2)-y(43))*params(63)/(1+params(35)*params(63))-y(43)*(1-params(48))*params(35)*params(63)/(1+params(35)*params(63))+(1-params(56))*(1-params(35)*params(56))/((1+params(35)*params(63))*params(56))*y(46)+y(37);
residual(13)= lhs-rhs;
lhs =y(46);
rhs =(-y(21))-y(20)-y(18);
residual(14)= lhs-rhs;
lhs =y(3)-y(43);
rhs =params(35)/(1+params(35)*params(64))*(y(3)-y(43)*params(48))+(y(3)-y(43))*params(64)/(1+params(35)*params(64))-y(43)*(1-params(48))*params(35)*params(64)/(1+params(35)*params(64))+(1-params(57))*(1-params(35)*params(57))/((1+params(35)*params(64))*params(57))*y(47)+y(38);
residual(15)= lhs-rhs;
lhs =y(47);
rhs =(-y(21))-y(20)-y(19);
residual(16)= lhs-rhs;
lhs =y(4)-y(43);
rhs =params(35)/(1+params(35)*params(65))*(y(4)-y(43)*params(48))+(y(4)-y(43))*params(65)/(1+params(35)*params(65))-y(43)*(1-params(48))*params(35)*params(65)/(1+params(35)*params(65))+y(21)*(1-params(58))*(1-params(35)*params(58))/((1+params(35)*params(65))*params(58))+y(42);
residual(17)= lhs-rhs;
lhs =y(5);
rhs =T312*(y(5)*params(112)+y(5)*params(114)+(y(1)-y(43))*params(115)+(y(1)-y(43)*params(48))*params(116)+params(117)*(y(48)-y(43))+params(118)*(y(48)-y(43)*params(48))+params(119)*y(8)+y(11)*params(120)+params(121)*y(28)+params(122)*y(30))+y(35);
residual(18)= lhs-rhs;
lhs =y(6);
rhs =y(34)+T359*(y(6)*params(73)*params(35)*(-params(70))-y(6)*params(73)*params(70)+params(73)*params(70)*(y(33)-params(35)*y(33))+y(8)*(params(73)-params(35)*params(70))*(params(73)-params(70))+(params(73)-params(70))*(params(73)-params(35)*params(70))*params(47)/(1+params(47))*y(29)+(params(73)-params(35)*params(70))*(params(73)-params(70))*y(54)-(params(73)-params(70))*params(35)*(-params(70))*y(34));
residual(19)= lhs-rhs;
lhs =y(7);
rhs =T400*(T397*(params(35)*y(33)+y(7)+params(35)*y(7)-y(33))+y(9)-y(55))+y(40);
residual(20)= lhs-rhs;
residual(21) = y(8)*(-params(39))+y(8)*params(39)-y(33)*params(39)+y(22)*(params(39)-params(35)*params(75))-y(1)*params(39)+T429*(params(35)-params(39))*y(27);
residual(22) = y(9)+y(33)+y(8)-y(8)-y(9)*params(35)*(1-params(41))/params(73)-y(45)*T446+T451;
residual(23) = y(10)-(y(22)-y(26))-params(76)*y(17)+y(39);
lhs =T474*(y(6)+y(54)*params(37))+T486*(y(7)+y(55)*params(71))+params(49)*y(31)+T496*(y(25)-y(20)*params(72)+y(41));
rhs =params(66)*(y(32)+params(36)*(y(13)-y(33))+y(11)*(1-params(36)))-T518*(y(13)-y(12));
residual(24)= lhs-rhs;
lhs =y(12);
rhs =y(40)+y(12)*T524-y(33)*T524+y(7)*(1-T524);
residual(25)= lhs-rhs;
lhs =y(14);
rhs =T535*(T429*y(27)-y(8)-y(22)*params(125)/(params(125)-1));
residual(26)= lhs-rhs;
residual(27) = y(15)+y(16)-y(15)-y(33)-y(1);
lhs =params(45)*params(137)*params(143)*(y(11)+y(5));
rhs =T561*(y(16)+y(15)-y(1)-y(33))-y(14)*params(148);
residual(28)= lhs-rhs;
lhs =y(17);
rhs =y(21)*(-params(155))-y(20)*params(155)*params(72)+params(155)*y(25)+params(155)*y(41)+(params(153)+params(154))*y(53)-(params(153)*(y(6)+y(18)*T590)+params(154)*(y(7)+y(19)*T599))+y(17)*params(125)/(params(73)*params(124));
residual(29)= lhs-rhs;
lhs =y(18);
rhs =y(2)+y(18)-y(1);
residual(30)= lhs-rhs;
lhs =y(19);
rhs =y(3)+y(19)-y(1);
residual(31)= lhs-rhs;
lhs =y(20);
rhs =y(20)+y(4)-y(24);
residual(32)= lhs-rhs;
lhs =y(21);
rhs =y(1)+y(21)-y(4)-y(10);
residual(33)= lhs-rhs;
lhs =y(53);
rhs =y(21)+y(20);
residual(34)= lhs-rhs;
lhs =y(54);
rhs =y(18)*T627;
residual(35)= lhs-rhs;
lhs =y(55);
rhs =y(19)*T632;
residual(36)= lhs-rhs;
lhs =y(48);
rhs =y(1)*T637+y(2)*T627;
residual(37)= lhs-rhs;
lhs =y(49);
rhs =params(66)*(y(32)+params(36)*(y(13)-y(33))+y(11)*(1-params(36)));
residual(38)= lhs-rhs;
lhs =y(50);
rhs =y(18)*T647-y(20)-y(21);
residual(39)= lhs-rhs;
lhs =y(23);
rhs =y(23)*params(35)/(1+params(35))+y(23)*1/(1+params(35))+T664*(y(11)-y(23));
residual(40)= lhs-rhs;
lhs =y(52);
rhs =y(45)*T671-T675;
residual(41)= lhs-rhs;
lhs =y(52);
rhs =y(13)-y(12);
residual(42)= lhs-rhs;
residual(43) = y(56);
residual(44) = y(82);
residual(45) = y(84);
residual(46) = y(85);
residual(47) = y(76);
lhs =y(82);
rhs =params(36)*(y(33)+y(66)-y(68))+y(60)+y(89)-y(32);
residual(48)= lhs-rhs;
lhs =y(83);
rhs =y(66)+y(89)+y(33)+y(60)-y(68);
residual(49)= lhs-rhs;
lhs =y(89);
rhs =T214*y(77);
residual(50)= lhs-rhs;
lhs =y(84);
rhs =(-y(76))-y(75)-y(73);
residual(51)= lhs-rhs;
lhs =y(85);
rhs =(-y(76))-y(75)-y(74);
residual(52)= lhs-rhs;
lhs =y(60)+y(28)*(-params(46))/(1-params(46))+y(63)-y(30)*params(74)/(1+params(74));
rhs =y(35)+y(66)*params(40);
residual(53)= lhs-rhs;
lhs =y(61);
rhs =y(34)+T359*((params(73)-params(70))*(params(73)-params(35)*params(70))*params(47)/(1+params(47))*y(29)+params(73)*params(70)*(y(33)-params(35)*y(33))+params(73)*params(35)*(-params(70))*y(61)-params(73)*params(70)*y(61)+(params(73)-params(35)*params(70))*(params(73)-params(70))*y(63)+(params(73)-params(35)*params(70))*(params(73)-params(70))*y(92)-(params(73)-params(70))*params(35)*(-params(70))*y(34));
residual(54)= lhs-rhs;
lhs =y(62);
rhs =y(40)+T400*(T397*(params(35)*y(33)+y(62)+params(35)*y(62)-y(33))+y(64)-y(93));
residual(55)= lhs-rhs;
residual(56) = T429*(params(35)-params(39))*y(27)+(-params(39))*y(63)+params(39)*y(63)-y(33)*params(39)+(params(39)-params(35)*params(75))*y(77)-params(39)*y(56);
residual(57) = T451+y(64)+y(33)+y(63)-y(63)-params(35)*(1-params(41))/params(73)*y(64)-T446*y(83);
residual(58) = y(39)+y(65)-(y(77)-y(96))-params(76)*y(72);
lhs =params(49)*y(31)+T474*(y(61)+params(37)*y(92))+T486*(y(62)+params(71)*y(93))+T496*(y(41)+y(95)-params(72)*y(75));
rhs =params(66)*(y(32)+params(36)*(y(68)-y(33))+(1-params(36))*y(66))-T518*(y(68)-y(67));
residual(59)= lhs-rhs;
lhs =y(67);
rhs =y(40)+T524*y(67)-y(33)*T524+(1-T524)*y(62);
residual(60)= lhs-rhs;
lhs =y(69);
rhs =T535*(T429*y(27)-y(63)-params(125)/(params(125)-1)*y(77));
residual(61)= lhs-rhs;
residual(62) = y(70)+y(71)-y(70)-y(33)-y(56);
lhs =params(45)*params(137)*params(143)*(y(66)+y(60));
rhs =T561*(y(71)+y(70)-y(56)-y(33))-params(148)*y(69);
residual(63)= lhs-rhs;
lhs =y(72);
rhs =params(155)*y(41)+(-params(155))*y(76)-params(155)*params(72)*y(75)+params(155)*y(95)+(params(153)+params(154))*y(91)-(params(153)*(y(61)+T590*y(73))+params(154)*(y(62)+T599*y(74)))+params(125)/(params(73)*params(124))*y(72);
residual(64)= lhs-rhs;
lhs =y(73);
rhs =y(73)+y(57)-y(56);
residual(65)= lhs-rhs;
lhs =y(74);
rhs =y(74)+y(58)-y(56);
residual(66)= lhs-rhs;
lhs =y(75);
rhs =y(75)+y(59)-y(94);
residual(67)= lhs-rhs;
lhs =y(76);
rhs =y(56)+y(76)-y(59)-y(65);
residual(68)= lhs-rhs;
lhs =y(91);
rhs =y(76)+y(75);
residual(69)= lhs-rhs;
lhs =y(92);
rhs =T627*y(73);
residual(70)= lhs-rhs;
lhs =y(93);
rhs =T632*y(74);
residual(71)= lhs-rhs;
lhs =y(86);
rhs =T637*y(56)+T627*y(57);
residual(72)= lhs-rhs;
lhs =y(87);
rhs =params(66)*(y(32)+params(36)*(y(68)-y(33))+(1-params(36))*y(66));
residual(73)= lhs-rhs;
lhs =y(88);
rhs =T647*y(73)-y(75)-y(76);
residual(74)= lhs-rhs;
lhs =y(90);
rhs =T671*y(83)-T675;
residual(75)= lhs-rhs;
lhs =y(90);
rhs =y(68)-y(67);
residual(76)= lhs-rhs;
lhs =y(27);
rhs =y(27)*params(52)+params(250)*x(1);
residual(77)= lhs-rhs;
lhs =y(30);
rhs =y(30)*params(53)+params(251)*x(2);
residual(78)= lhs-rhs;
lhs =y(28);
rhs =y(97)*params(234)+params(232)*x(3)+params(231)*x(4)+y(28)*params(207)+y(29)*params(208)+y(31)*params(209)+params(216)*y(127)+params(217)*y(128)+params(218)*y(129);
residual(79)= lhs-rhs;
lhs =y(29);
rhs =y(97)*params(239)+x(3)*params(237)+x(4)*params(236)+y(28)*params(210)+y(29)*params(211)+y(31)*params(212)+y(127)*params(219)+y(128)*params(220)+y(129)*params(221);
residual(80)= lhs-rhs;
lhs =y(31);
rhs =y(97)*params(249)+x(3)*params(247)+x(4)*params(246)+y(28)*params(213)+y(29)*params(214)+y(31)*params(215)+y(127)*params(222)+y(128)*params(223)+y(129)*params(224);
residual(81)= lhs-rhs;
lhs =y(24);
rhs =params(200)*x(19)+params(199)*x(18)+params(198)*x(17)+y(24)*params(162)+y(25)*params(163)+y(26)*params(164)+params(171)*y(130)+params(172)*y(131)+params(173)*y(132)+params(180)*y(133)+params(181)*y(134)+params(182)*y(135)+params(189)*y(136)+params(190)*y(137)+params(191)*y(138);
residual(82)= lhs-rhs;
lhs =y(25);
rhs =x(19)*params(203)+x(18)*params(202)+x(17)*params(201)+y(24)*params(165)+y(25)*params(166)+y(26)*params(167)+y(130)*params(174)+y(131)*params(175)+y(132)*params(176)+y(133)*params(183)+y(134)*params(184)+y(135)*params(185)+y(136)*params(192)+y(137)*params(193)+y(138)*params(194);
residual(83)= lhs-rhs;
lhs =y(26);
rhs =x(19)*params(206)+x(18)*params(205)+x(17)*params(204)+y(24)*params(168)+y(25)*params(169)+y(26)*params(170)+y(130)*params(177)+y(131)*params(178)+y(132)*params(179)+y(133)*params(186)+y(134)*params(187)+y(135)*params(188)+y(136)*params(195)+y(137)*params(196)+y(138)*params(197);
residual(84)= lhs-rhs;
residual(85) = y(94);
lhs =y(95);
rhs =x(19)*params(203)+x(18)*params(202)+y(94)*params(165)+y(95)*params(166)+y(96)*params(167)+params(174)*y(139)+params(175)*y(140)+params(176)*y(141)+params(183)*y(142)+params(184)*y(143)+params(185)*y(144)+params(192)*y(145)+params(193)*y(146)+params(194)*y(147);
residual(86)= lhs-rhs;
lhs =y(96);
rhs =x(19)*params(206)+x(18)*params(205)+y(94)*params(168)+y(95)*params(169)+y(96)*params(170)+params(177)*y(139)+params(178)*y(140)+params(179)*y(141)+params(186)*y(142)+params(187)*y(143)+params(188)*y(144)+params(195)*y(145)+params(196)*y(146)+params(197)*y(147);
residual(87)= lhs-rhs;
lhs =y(36);
rhs =x(5);
residual(88)= lhs-rhs;
lhs =y(37);
rhs =y(37)*params(84)+x(6);
residual(89)= lhs-rhs;
lhs =y(38);
rhs =y(38)*params(85)+x(7);
residual(90)= lhs-rhs;
lhs =y(42);
rhs =y(42)*params(86)+x(8);
residual(91)= lhs-rhs;
residual(92) = y(78);
residual(93) = y(79);
residual(94) = y(80);
residual(95) = y(81);
lhs =y(33);
rhs =y(33)*params(77)+x(9);
residual(96)= lhs-rhs;
lhs =y(32);
rhs =y(32)*params(78)+x(10);
residual(97)= lhs-rhs;
lhs =y(40);
rhs =y(40)*params(79)+x(11);
residual(98)= lhs-rhs;
lhs =y(41);
rhs =y(41)*params(80)+x(12);
residual(99)= lhs-rhs;
lhs =y(34);
rhs =y(34)*params(81)+x(13);
residual(100)= lhs-rhs;
lhs =y(35);
rhs =y(35)*params(82)+x(14);
residual(101)= lhs-rhs;
lhs =y(39);
rhs =y(39)*params(83)+x(15);
residual(102)= lhs-rhs;
lhs =y(43);
rhs =y(43)*params(48)+x(16);
residual(103)= lhs-rhs;
lhs =y(104);
rhs =y(100);
residual(104)= lhs-rhs;
lhs =y(105);
rhs =y(104);
residual(105)= lhs-rhs;
lhs =y(106);
rhs =y(105);
residual(106)= lhs-rhs;
lhs =y(107);
rhs =y(101);
residual(107)= lhs-rhs;
lhs =y(108);
rhs =y(107);
residual(108)= lhs-rhs;
lhs =y(109);
rhs =y(108);
residual(109)= lhs-rhs;
lhs =y(110);
rhs =y(102);
residual(110)= lhs-rhs;
lhs =y(111);
rhs =y(110);
residual(111)= lhs-rhs;
lhs =y(112);
rhs =y(111);
residual(112)= lhs-rhs;
lhs =y(113);
rhs =y(48);
residual(113)= lhs-rhs;
lhs =y(114);
rhs =y(113);
residual(114)= lhs-rhs;
lhs =y(115);
rhs =y(102);
residual(115)= lhs-rhs;
lhs =y(116);
rhs =y(115);
residual(116)= lhs-rhs;
lhs =y(117);
rhs =y(116);
residual(117)= lhs-rhs;
lhs =y(118);
rhs =y(101);
residual(118)= lhs-rhs;
lhs =y(119);
rhs =y(118);
residual(119)= lhs-rhs;
lhs =y(120);
rhs =y(119);
residual(120)= lhs-rhs;
lhs =y(121);
rhs =y(98);
residual(121)= lhs-rhs;
lhs =y(122);
rhs =y(121);
residual(122)= lhs-rhs;
lhs =y(123);
rhs =y(122);
residual(123)= lhs-rhs;
lhs =y(124);
rhs =y(100);
residual(124)= lhs-rhs;
lhs =y(125);
rhs =y(124);
residual(125)= lhs-rhs;
lhs =y(126);
rhs =y(125);
residual(126)= lhs-rhs;
lhs =y(127);
rhs =y(28);
residual(127)= lhs-rhs;
lhs =y(128);
rhs =y(29);
residual(128)= lhs-rhs;
lhs =y(129);
rhs =y(31);
residual(129)= lhs-rhs;
lhs =y(130);
rhs =y(24);
residual(130)= lhs-rhs;
lhs =y(131);
rhs =y(25);
residual(131)= lhs-rhs;
lhs =y(132);
rhs =y(26);
residual(132)= lhs-rhs;
lhs =y(133);
rhs =y(130);
residual(133)= lhs-rhs;
lhs =y(134);
rhs =y(131);
residual(134)= lhs-rhs;
lhs =y(135);
rhs =y(132);
residual(135)= lhs-rhs;
lhs =y(136);
rhs =y(133);
residual(136)= lhs-rhs;
lhs =y(137);
rhs =y(134);
residual(137)= lhs-rhs;
lhs =y(138);
rhs =y(135);
residual(138)= lhs-rhs;
lhs =y(139);
rhs =y(94);
residual(139)= lhs-rhs;
lhs =y(140);
rhs =y(95);
residual(140)= lhs-rhs;
lhs =y(141);
rhs =y(96);
residual(141)= lhs-rhs;
lhs =y(142);
rhs =y(139);
residual(142)= lhs-rhs;
lhs =y(143);
rhs =y(140);
residual(143)= lhs-rhs;
lhs =y(144);
rhs =y(141);
residual(144)= lhs-rhs;
lhs =y(145);
rhs =y(142);
residual(145)= lhs-rhs;
lhs =y(146);
rhs =y(143);
residual(146)= lhs-rhs;
lhs =y(147);
rhs =y(144);
residual(147)= lhs-rhs;
if ~isreal(residual)
  residual = real(residual)+imag(residual).^2;
end
if nargout >= 2,
  g1 = zeros(147, 147);

  %
  % Jacobian matrix
  %

  g1(1,22)=(-4);
  g1(1,98)=1;
  g1(2,48)=(-2);
  g1(2,99)=1;
  g1(2,113)=T3;
  g1(2,114)=T3;
  g1(3,48)=(-4);
  g1(3,100)=1;
  g1(4,49)=T3;
  g1(4,87)=1;
  g1(4,101)=1;
  g1(5,49)=T3;
  g1(5,102)=1;
  g1(6,97)=T3;
  g1(6,103)=1;
  g1(7,98)=1-params(1);
  g1(7,100)=(-(params(10)+params(6)+params(5)));
  g1(7,101)=(-(params(19)+params(15)+params(14)));
  g1(7,102)=(-(params(28)+params(24)+params(23)));
  g1(7,104)=(-params(11));
  g1(7,105)=(-params(12));
  g1(7,106)=(-params(13));
  g1(7,107)=(-params(20));
  g1(7,108)=(-params(21));
  g1(7,109)=(-params(22));
  g1(7,110)=(-params(29));
  g1(7,111)=(-params(30));
  g1(7,112)=(-params(31));
  g1(7,115)=(-params(25));
  g1(7,116)=(-params(26));
  g1(7,117)=(-params(27));
  g1(7,118)=(-params(16));
  g1(7,119)=(-params(17));
  g1(7,120)=(-params(18));
  g1(7,121)=(-params(2));
  g1(7,122)=(-params(3));
  g1(7,123)=(-params(4));
  g1(7,124)=(-params(7));
  g1(7,125)=(-params(8));
  g1(7,126)=(-params(9));
  g1(8,103)=1;
  g1(9,1)=1-(params(35)/(1+params(35)*params(62))+params(62)/(1+params(35)*params(62)));
  g1(9,36)=T3;
  g1(9,43)=T3-(params(35)/(1+params(35)*params(62))*(-params(48))-params(62)/(1+params(35)*params(62))-params(35)*params(62)*(1-params(48))/(1+params(35)*params(62)));
  g1(9,44)=(-((1-params(55))*(1-params(35)*params(55))/((1+params(35)*params(62))*params(55))));
  g1(10,5)=T3;
  g1(10,11)=(-params(36));
  g1(10,13)=params(36);
  g1(10,32)=1;
  g1(10,33)=(-params(36));
  g1(10,44)=1;
  g1(10,51)=T3;
  g1(11,5)=T3;
  g1(11,11)=T3;
  g1(11,13)=1;
  g1(11,33)=T3;
  g1(11,45)=1;
  g1(11,51)=T3;
  g1(12,22)=(-T214);
  g1(12,51)=1;
  g1(13,2)=1-(params(35)/(1+params(35)*params(63))+params(63)/(1+params(35)*params(63)));
  g1(13,37)=T3;
  g1(13,43)=T3-(params(35)/(1+params(35)*params(63))*(-params(48))-params(63)/(1+params(35)*params(63))-(1-params(48))*params(35)*params(63)/(1+params(35)*params(63)));
  g1(13,46)=(-((1-params(56))*(1-params(35)*params(56))/((1+params(35)*params(63))*params(56))));
  g1(14,18)=1;
  g1(14,20)=1;
  g1(14,21)=1;
  g1(14,46)=1;
  g1(15,3)=1-(params(35)/(1+params(35)*params(64))+params(64)/(1+params(35)*params(64)));
  g1(15,38)=T3;
  g1(15,43)=T3-(params(35)/(1+params(35)*params(64))*(-params(48))-params(64)/(1+params(35)*params(64))-(1-params(48))*params(35)*params(64)/(1+params(35)*params(64)));
  g1(15,47)=(-((1-params(57))*(1-params(35)*params(57))/((1+params(35)*params(64))*params(57))));
  g1(16,19)=1;
  g1(16,20)=1;
  g1(16,21)=1;
  g1(16,47)=1;
  g1(17,4)=1-(params(35)/(1+params(35)*params(65))+params(65)/(1+params(35)*params(65)));
  g1(17,21)=(-((1-params(58))*(1-params(35)*params(58))/((1+params(35)*params(65))*params(58))));
  g1(17,42)=T3;
  g1(17,43)=T3-(params(35)/(1+params(35)*params(65))*(-params(48))-params(65)/(1+params(35)*params(65))-(1-params(48))*params(35)*params(65)/(1+params(35)*params(65)));
  g1(18,1)=(-(T312*(params(115)+params(116))));
  g1(18,5)=1-T312*(params(112)+params(114));
  g1(18,8)=(-(T312*params(119)));
  g1(18,11)=(-(T312*params(120)));
  g1(18,28)=(-(T312*params(121)));
  g1(18,30)=(-(T312*params(122)));
  g1(18,35)=T3;
  g1(18,43)=(-(T312*((-params(115))+params(116)*(-params(48))-params(117)+params(118)*(-params(48)))));
  g1(18,48)=(-(T312*(params(117)+params(118))));
  g1(19,6)=1-T359*(params(73)*params(35)*(-params(70))-params(73)*params(70));
  g1(19,8)=(-(T359*(params(73)-params(35)*params(70))*(params(73)-params(70))));
  g1(19,29)=(-(T359*(params(73)-params(70))*(params(73)-params(35)*params(70))*params(47)/(1+params(47))));
  g1(19,33)=(-(T359*params(73)*params(70)*(1-params(35))));
  g1(19,34)=(-(1+T359*(-(params(35)*(-params(70))*(params(73)-params(70))))));
  g1(19,54)=(-(T359*(params(73)-params(35)*params(70))*(params(73)-params(70))));
  g1(20,7)=1-T397*(1+params(35))*T400;
  g1(20,9)=(-T400);
  g1(20,33)=(-(T400*T397*(params(35)-1)));
  g1(20,40)=T3;
  g1(20,55)=T400;
  g1(21,1)=(-params(39));
  g1(21,8)=params(39)+(-params(39));
  g1(21,22)=params(39)-params(35)*params(75);
  g1(21,27)=T429*(params(35)-params(39));
  g1(21,33)=(-params(39));
  g1(22,9)=1-params(35)*(1-params(41))/params(73);
  g1(22,27)=T450;
  g1(22,33)=1;
  g1(22,45)=(-T446);
  g1(23,10)=1;
  g1(23,17)=(-params(76));
  g1(23,22)=T3;
  g1(23,26)=1;
  g1(23,39)=1;
  g1(24,6)=T474;
  g1(24,7)=T486;
  g1(24,11)=(-(params(66)*(1-params(36))));
  g1(24,12)=(-T518);
  g1(24,13)=(-(params(36)*params(66)-T518));
  g1(24,20)=T496*(-params(72));
  g1(24,25)=T496;
  g1(24,31)=params(49);
  g1(24,32)=(-params(66));
  g1(24,33)=(-(params(66)*(-params(36))));
  g1(24,41)=T496;
  g1(24,54)=params(37)*T474;
  g1(24,55)=params(71)*T486;
  g1(25,7)=(-(1-T524));
  g1(25,12)=1-T524;
  g1(25,33)=T524;
  g1(25,40)=T3;
  g1(26,8)=T535;
  g1(26,14)=1;
  g1(26,22)=(-(T535*(-(params(125)/(params(125)-1)))));
  g1(26,27)=(-(T429*T535));
  g1(27,1)=T3;
  g1(27,16)=1;
  g1(27,33)=T3;
  g1(28,1)=T561;
  g1(28,5)=params(45)*params(137)*params(143);
  g1(28,11)=params(45)*params(137)*params(143);
  g1(28,14)=params(148);
  g1(28,15)=(-T561);
  g1(28,16)=(-T561);
  g1(28,33)=T561;
  g1(29,6)=params(153);
  g1(29,7)=params(154);
  g1(29,17)=1-params(125)/(params(73)*params(124));
  g1(29,18)=params(153)*T590;
  g1(29,19)=params(154)*T599;
  g1(29,20)=params(155)*params(72);
  g1(29,21)=params(155);
  g1(29,25)=(-params(155));
  g1(29,41)=(-params(155));
  g1(29,53)=(-(params(153)+params(154)));
  g1(30,1)=1;
  g1(30,2)=T3;
  g1(31,1)=1;
  g1(31,3)=T3;
  g1(32,4)=T3;
  g1(32,24)=1;
  g1(33,1)=T3;
  g1(33,4)=1;
  g1(33,10)=1;
  g1(34,20)=T3;
  g1(34,21)=T3;
  g1(34,53)=1;
  g1(35,18)=(-T627);
  g1(35,54)=1;
  g1(36,19)=(-T632);
  g1(36,55)=1;
  g1(37,1)=(-T637);
  g1(37,2)=(-T627);
  g1(37,48)=1;
  g1(38,11)=(-(params(66)*(1-params(36))));
  g1(38,13)=(-(params(36)*params(66)));
  g1(38,32)=(-params(66));
  g1(38,33)=(-(params(66)*(-params(36))));
  g1(38,49)=1;
  g1(39,18)=(-T647);
  g1(39,20)=1;
  g1(39,21)=1;
  g1(39,50)=1;
  g1(40,11)=(-T664);
  g1(40,23)=1-(params(35)/(1+params(35))+1/(1+params(35))-T664);
  g1(41,27)=T674;
  g1(41,45)=(-T671);
  g1(41,52)=1;
  g1(42,12)=1;
  g1(42,13)=T3;
  g1(42,52)=1;
  g1(43,56)=1;
  g1(44,82)=1;
  g1(45,84)=1;
  g1(46,85)=1;
  g1(47,76)=1;
  g1(48,32)=1;
  g1(48,33)=(-params(36));
  g1(48,60)=T3;
  g1(48,66)=(-params(36));
  g1(48,68)=params(36);
  g1(48,82)=1;
  g1(48,89)=T3;
  g1(49,33)=T3;
  g1(49,60)=T3;
  g1(49,66)=T3;
  g1(49,68)=1;
  g1(49,83)=1;
  g1(49,89)=T3;
  g1(50,77)=(-T214);
  g1(50,89)=1;
  g1(51,73)=1;
  g1(51,75)=1;
  g1(51,76)=1;
  g1(51,84)=1;
  g1(52,74)=1;
  g1(52,75)=1;
  g1(52,76)=1;
  g1(52,85)=1;
  g1(53,28)=(-params(46))/(1-params(46));
  g1(53,30)=(-(params(74)/(1+params(74))));
  g1(53,35)=T3;
  g1(53,60)=1;
  g1(53,63)=1;
  g1(53,66)=(-params(40));
  g1(54,29)=(-(T359*(params(73)-params(70))*(params(73)-params(35)*params(70))*params(47)/(1+params(47))));
  g1(54,33)=(-(T359*params(73)*params(70)*(1-params(35))));
  g1(54,34)=(-(1+T359*(-(params(35)*(-params(70))*(params(73)-params(70))))));
  g1(54,61)=1-T359*(params(73)*params(35)*(-params(70))-params(73)*params(70));
  g1(54,63)=(-(T359*(params(73)-params(35)*params(70))*(params(73)-params(70))));
  g1(54,92)=(-(T359*(params(73)-params(35)*params(70))*(params(73)-params(70))));
  g1(55,33)=(-(T400*T397*(params(35)-1)));
  g1(55,40)=T3;
  g1(55,62)=1-T397*(1+params(35))*T400;
  g1(55,64)=(-T400);
  g1(55,93)=T400;
  g1(56,27)=T429*(params(35)-params(39));
  g1(56,33)=(-params(39));
  g1(56,56)=(-params(39));
  g1(56,63)=params(39)+(-params(39));
  g1(56,77)=params(39)-params(35)*params(75);
  g1(57,27)=T450;
  g1(57,33)=1;
  g1(57,64)=1-params(35)*(1-params(41))/params(73);
  g1(57,83)=(-T446);
  g1(58,39)=1;
  g1(58,65)=1;
  g1(58,72)=(-params(76));
  g1(58,77)=T3;
  g1(58,96)=1;
  g1(59,31)=params(49);
  g1(59,32)=(-params(66));
  g1(59,33)=(-(params(66)*(-params(36))));
  g1(59,41)=T496;
  g1(59,61)=T474;
  g1(59,62)=T486;
  g1(59,66)=(-(params(66)*(1-params(36))));
  g1(59,67)=(-T518);
  g1(59,68)=(-(params(36)*params(66)-T518));
  g1(59,75)=T496*(-params(72));
  g1(59,92)=params(37)*T474;
  g1(59,93)=params(71)*T486;
  g1(59,95)=T496;
  g1(60,33)=T524;
  g1(60,40)=T3;
  g1(60,62)=(-(1-T524));
  g1(60,67)=1-T524;
  g1(61,27)=(-(T429*T535));
  g1(61,63)=T535;
  g1(61,69)=1;
  g1(61,77)=(-(T535*(-(params(125)/(params(125)-1)))));
  g1(62,33)=T3;
  g1(62,56)=T3;
  g1(62,71)=1;
  g1(63,33)=T561;
  g1(63,56)=T561;
  g1(63,60)=params(45)*params(137)*params(143);
  g1(63,66)=params(45)*params(137)*params(143);
  g1(63,69)=params(148);
  g1(63,70)=(-T561);
  g1(63,71)=(-T561);
  g1(64,41)=(-params(155));
  g1(64,61)=params(153);
  g1(64,62)=params(154);
  g1(64,72)=1-params(125)/(params(73)*params(124));
  g1(64,73)=params(153)*T590;
  g1(64,74)=params(154)*T599;
  g1(64,75)=params(155)*params(72);
  g1(64,76)=params(155);
  g1(64,91)=(-(params(153)+params(154)));
  g1(64,95)=(-params(155));
  g1(65,56)=1;
  g1(65,57)=T3;
  g1(66,56)=1;
  g1(66,58)=T3;
  g1(67,59)=T3;
  g1(67,94)=1;
  g1(68,56)=T3;
  g1(68,59)=1;
  g1(68,65)=1;
  g1(69,75)=T3;
  g1(69,76)=T3;
  g1(69,91)=1;
  g1(70,73)=(-T627);
  g1(70,92)=1;
  g1(71,74)=(-T632);
  g1(71,93)=1;
  g1(72,56)=(-T637);
  g1(72,57)=(-T627);
  g1(72,86)=1;
  g1(73,32)=(-params(66));
  g1(73,33)=(-(params(66)*(-params(36))));
  g1(73,66)=(-(params(66)*(1-params(36))));
  g1(73,68)=(-(params(36)*params(66)));
  g1(73,87)=1;
  g1(74,73)=(-T647);
  g1(74,75)=1;
  g1(74,76)=1;
  g1(74,88)=1;
  g1(75,27)=T674;
  g1(75,83)=(-T671);
  g1(75,90)=1;
  g1(76,67)=1;
  g1(76,68)=T3;
  g1(76,90)=1;
  g1(77,27)=1-params(52);
  g1(78,30)=1-params(53);
  g1(79,28)=1-params(207);
  g1(79,29)=(-params(208));
  g1(79,31)=(-params(209));
  g1(79,97)=(-params(234));
  g1(79,127)=(-params(216));
  g1(79,128)=(-params(217));
  g1(79,129)=(-params(218));
  g1(80,28)=(-params(210));
  g1(80,29)=1-params(211);
  g1(80,31)=(-params(212));
  g1(80,97)=(-params(239));
  g1(80,127)=(-params(219));
  g1(80,128)=(-params(220));
  g1(80,129)=(-params(221));
  g1(81,28)=(-params(213));
  g1(81,29)=(-params(214));
  g1(81,31)=1-params(215);
  g1(81,97)=(-params(249));
  g1(81,127)=(-params(222));
  g1(81,128)=(-params(223));
  g1(81,129)=(-params(224));
  g1(82,24)=1-params(162);
  g1(82,25)=(-params(163));
  g1(82,26)=(-params(164));
  g1(82,130)=(-params(171));
  g1(82,131)=(-params(172));
  g1(82,132)=(-params(173));
  g1(82,133)=(-params(180));
  g1(82,134)=(-params(181));
  g1(82,135)=(-params(182));
  g1(82,136)=(-params(189));
  g1(82,137)=(-params(190));
  g1(82,138)=(-params(191));
  g1(83,24)=(-params(165));
  g1(83,25)=1-params(166);
  g1(83,26)=(-params(167));
  g1(83,130)=(-params(174));
  g1(83,131)=(-params(175));
  g1(83,132)=(-params(176));
  g1(83,133)=(-params(183));
  g1(83,134)=(-params(184));
  g1(83,135)=(-params(185));
  g1(83,136)=(-params(192));
  g1(83,137)=(-params(193));
  g1(83,138)=(-params(194));
  g1(84,24)=(-params(168));
  g1(84,25)=(-params(169));
  g1(84,26)=1-params(170);
  g1(84,130)=(-params(177));
  g1(84,131)=(-params(178));
  g1(84,132)=(-params(179));
  g1(84,133)=(-params(186));
  g1(84,134)=(-params(187));
  g1(84,135)=(-params(188));
  g1(84,136)=(-params(195));
  g1(84,137)=(-params(196));
  g1(84,138)=(-params(197));
  g1(85,94)=1;
  g1(86,94)=(-params(165));
  g1(86,95)=1-params(166);
  g1(86,96)=(-params(167));
  g1(86,139)=(-params(174));
  g1(86,140)=(-params(175));
  g1(86,141)=(-params(176));
  g1(86,142)=(-params(183));
  g1(86,143)=(-params(184));
  g1(86,144)=(-params(185));
  g1(86,145)=(-params(192));
  g1(86,146)=(-params(193));
  g1(86,147)=(-params(194));
  g1(87,94)=(-params(168));
  g1(87,95)=(-params(169));
  g1(87,96)=1-params(170);
  g1(87,139)=(-params(177));
  g1(87,140)=(-params(178));
  g1(87,141)=(-params(179));
  g1(87,142)=(-params(186));
  g1(87,143)=(-params(187));
  g1(87,144)=(-params(188));
  g1(87,145)=(-params(195));
  g1(87,146)=(-params(196));
  g1(87,147)=(-params(197));
  g1(88,36)=1;
  g1(89,37)=1-params(84);
  g1(90,38)=1-params(85);
  g1(91,42)=1-params(86);
  g1(92,78)=1;
  g1(93,79)=1;
  g1(94,80)=1;
  g1(95,81)=1;
  g1(96,33)=1-params(77);
  g1(97,32)=1-params(78);
  g1(98,40)=1-params(79);
  g1(99,41)=1-params(80);
  g1(100,34)=1-params(81);
  g1(101,35)=1-params(82);
  g1(102,39)=1-params(83);
  g1(103,43)=1-params(48);
  g1(104,100)=T3;
  g1(104,104)=1;
  g1(105,104)=T3;
  g1(105,105)=1;
  g1(106,105)=T3;
  g1(106,106)=1;
  g1(107,101)=T3;
  g1(107,107)=1;
  g1(108,107)=T3;
  g1(108,108)=1;
  g1(109,108)=T3;
  g1(109,109)=1;
  g1(110,102)=T3;
  g1(110,110)=1;
  g1(111,110)=T3;
  g1(111,111)=1;
  g1(112,111)=T3;
  g1(112,112)=1;
  g1(113,48)=T3;
  g1(113,113)=1;
  g1(114,113)=T3;
  g1(114,114)=1;
  g1(115,102)=T3;
  g1(115,115)=1;
  g1(116,115)=T3;
  g1(116,116)=1;
  g1(117,116)=T3;
  g1(117,117)=1;
  g1(118,101)=T3;
  g1(118,118)=1;
  g1(119,118)=T3;
  g1(119,119)=1;
  g1(120,119)=T3;
  g1(120,120)=1;
  g1(121,98)=T3;
  g1(121,121)=1;
  g1(122,121)=T3;
  g1(122,122)=1;
  g1(123,122)=T3;
  g1(123,123)=1;
  g1(124,100)=T3;
  g1(124,124)=1;
  g1(125,124)=T3;
  g1(125,125)=1;
  g1(126,125)=T3;
  g1(126,126)=1;
  g1(127,28)=T3;
  g1(127,127)=1;
  g1(128,29)=T3;
  g1(128,128)=1;
  g1(129,31)=T3;
  g1(129,129)=1;
  g1(130,24)=T3;
  g1(130,130)=1;
  g1(131,25)=T3;
  g1(131,131)=1;
  g1(132,26)=T3;
  g1(132,132)=1;
  g1(133,130)=T3;
  g1(133,133)=1;
  g1(134,131)=T3;
  g1(134,134)=1;
  g1(135,132)=T3;
  g1(135,135)=1;
  g1(136,133)=T3;
  g1(136,136)=1;
  g1(137,134)=T3;
  g1(137,137)=1;
  g1(138,135)=T3;
  g1(138,138)=1;
  g1(139,94)=T3;
  g1(139,139)=1;
  g1(140,95)=T3;
  g1(140,140)=1;
  g1(141,96)=T3;
  g1(141,141)=1;
  g1(142,139)=T3;
  g1(142,142)=1;
  g1(143,140)=T3;
  g1(143,143)=1;
  g1(144,141)=T3;
  g1(144,144)=1;
  g1(145,142)=T3;
  g1(145,145)=1;
  g1(146,143)=T3;
  g1(146,146)=1;
  g1(147,144)=T3;
  g1(147,147)=1;
  if ~isreal(g1)
    g1 = real(g1)+2*imag(g1);
  end
end
if nargout >= 3,
  %
  % Hessian matrix
  %

  g2 = sparse([],[],[],147,21609);
end
end