within Modelica2018US_IslandedOperationControl.Generators;
model G22_CD
  outer OpenIPSL.Electrical.SystemBase SysData;
  extends OpenIPSL.Electrical.Essentials.pfComponent;
  OpenIPSL.Interfaces.PwPin conn annotation (
    Placement(transformation(extent={{100,-10},{120,10}}),    iconTransformation(extent={{100,-10},
            {120,10}})));
  OpenIPSL.Electrical.Machines.PSSE.GENSAL gENROE(M_b = 100, Tpd0 = 5, Tppd0 = 0.07, Tppq0 = 0.09, H = 4.28, D = 0, Xd = 1.84, Xq = 1.75, Xpd = 0.41, Xppd = 0.2, Xl = 0.12, S10 = 0.11, S12 = 0.39, Xppq = 0.2, R_a = 0, V_b = V_b, V_0 = V_0, angle_0 = angle_0, P_0 = P_0, Q_0 = Q_0) annotation (
    Placement(transformation(extent={{30,-28},{70,12}})));
  OpenIPSL.Electrical.Controls.PSSE.TG.IEESGO iEESGO(P_MAX = 1.5, P_MIN = 0) annotation (
    Placement(transformation(extent={{-22,-4},{10,10}})));
  OpenIPSL.Electrical.Controls.PSSE.ES.SEXS sEXS(T_AT_B = 0.2, K = 50, E_MIN = 0, E_MAX = 5, T_E = 0.01, T_B = 10) annotation (
    Placement(transformation(extent={{-26,-34},{-4,-14}})));
  Modelica.Blocks.Interfaces.RealInput f_DN annotation (
    Placement(transformation(extent={{-110,52},{-90,72}}),      iconTransformation(extent={{-110,52},
            {-90,72}})));
  Modelica.Blocks.Sources.Constant const1(k = 0) annotation (
    Placement(transformation(extent={{7,-7},{-7,7}},      rotation = 180, origin={-77,-17})));
  Modelica.Blocks.Logical.Switch switch1 annotation (
    Placement(transformation(extent={{0,46},{18,64}})));
  Modelica.Blocks.Interfaces.BooleanInput start_islanding annotation (
    Placement(transformation(extent = {{-12, -12}, {12, 12}}, rotation = 0, origin={-100,20}),     iconTransformation(extent = {{-12, -12}, {12, 12}}, rotation = 90, origin = {-2, -104})));
  Modelica.Blocks.Math.Add add2(k1 = +1) annotation (
    Placement(transformation(extent={{-6,28},{-18,40}})));
  Modelica.Blocks.Continuous.PI PI(T=0.00025, k=0.0000001)     annotation (
    Placement(transformation(extent={{32,48},{46,62}})));
  Modelica.Blocks.Math.Gain gain(k=0)
    annotation (Placement(transformation(extent={{56,50},{66,60}})));
equation
  connect(add2.u2, gENROE.SPEED) annotation (
    Line(points={{-4.8,30.4},{86,30.4},{86,6},{72,6}},            color = {0, 0, 127}));
  connect(iEESGO.PMECH, gENROE.PMECH) annotation (
    Line(points={{11,4},{26,4},{26,2}},           color = {0, 0, 127}));
  connect(sEXS.EFD, gENROE.EFD) annotation (
    Line(points={{-3.45,-22.8889},{12.275,-22.8889},{12.275,-18},{26,-18}},    color = {0, 0, 127}));
  connect(gENROE.ETERM, sEXS.ECOMP) annotation (
    Line(points={{72,-14},{88,-14},{88,-58},{-44,-58},{-44,-22.8889},{-26,
          -22.8889}},                                                                          color = {0, 0, 127}));
  connect(gENROE.p, conn) annotation (
    Line(points={{70,-8},{88,-8},{88,0},{110,0}},            color = {0, 0, 255}));
  connect(switch1.y, PI.u) annotation (
    Line(points={{18.9,55},{24,55},{30.6,55}},
                                            color = {0, 0, 127}));
  connect(const1.y, switch1.u3) annotation (
    Line(points={{-69.3,-17},{-51.75,-17},{-51.75,47.8},{-1.8,47.8}},        color = {0, 0, 127}));
  connect(f_DN, switch1.u1) annotation (
    Line(points={{-100,62},{-52,62},{-52,62.2},{-1.8,62.2}},          color = {0, 0, 127}));
  connect(iEESGO.SPEED, add2.y) annotation (Line(points={{-21.2,7},{-42,
          7},{-42,34},{-18.6,34}},      color={0,0,127}));
  connect(gENROE.PMECH0, iEESGO.PMECH0) annotation (Line(points={{72,2},
          {78,2},{78,20},{-32,20},{-32,0},{-21.2,0}}, color={0,0,127}));
  connect(gENROE.EFD0, sEXS.EFD0) annotation (Line(points={{72,-18},{76,-18},{
          76,-48},{-36,-48},{-36,-30.1111},{-26,-30.1111}},       color=
         {0,0,127}));
  connect(sEXS.VOTHSG, switch1.u3) annotation (Line(points={{-26,-17.8889},{-52,
          -17.8889},{-52,47.8},{-1.8,47.8}},     color={0,0,127}));
  connect(sEXS.VUEL, switch1.u3) annotation (Line(points={{-22.15,-34},{-22,
          -34},{-22,-70},{-52,-70},{-52,-18},{-51.75,-17},{-51.75,47.8},{-1.8,
          47.8}}, color={0,0,127}));
  connect(sEXS.VOEL, switch1.u3) annotation (Line(points={{-18.85,-34},{-18,
          -34},{-18,-70},{-52,-70},{-52,-18},{-51.75,-17},{-51.75,47.8},{-1.8,
          47.8}}, color={0,0,127}));
  connect(start_islanding, switch1.u2) annotation (Line(points={{-100,20},{
          -88,20},{-78,20},{-78,55},{-1.8,55}}, color={255,0,255}));
  connect(PI.y, gain.u)
    annotation (Line(points={{46.7,55},{49.35,55},{55,55}}, color={0,0,127}));
  connect(add2.u1, gain.y) annotation (Line(points={{-4.8,37.6},{76,37.6},{76,
          55},{66.5,55}}, color={0,0,127}));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio = false, extent={{-100,
            -100},{100,100}}),                                                               graphics={  Ellipse(extent = {{-100, 100}, {100, -100}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                                                                                               FillPattern.Solid), Line(points = {{-48, 2}, {-20, 56}, {2, 4}, {24, -28}, {48, 22}}, color = {0, 0, 0}, smooth = Smooth.Bezier), Text(extent = {{-52, -18}, {56, -66}}, lineColor = {0, 0, 0}, fillColor = {255, 255, 255},
            fillPattern =                                                                                                                                                                                                        FillPattern.Solid, textString = "%name")}),
    Diagram(coordinateSystem(preserveAspectRatio = false, extent={{-100,
            -100},{100,100}})));
end G22_CD;
