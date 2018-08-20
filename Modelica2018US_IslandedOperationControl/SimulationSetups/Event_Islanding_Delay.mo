within Modelica2018US_IslandedOperationControl.SimulationSetups;
model Event_Islanding_Delay
  parameter Real L1 = 0.5 "frequency upper limit";
  parameter Real L2 = -3 "frequency lower limit";
  parameter Real dt = 2 "time interval";
  Modelica.Blocks.Sources.BooleanConstant booleanConstant(k = true) annotation (
    Placement(transformation(extent={{-92,-26},{-72,-6}})));
  Essentials.FrequencyCalculationBlock
    f_DN annotation (Placement(transformation(extent={{-134,48},{-110,72}})));
  Modelica.Blocks.Interfaces.BooleanOutput y annotation (
    Placement(transformation(rotation = 0, extent={{52,84},{80,108}}),
        iconTransformation(extent={{52,84},{80,108}})));
  Modelica.Blocks.Interfaces.RealOutput y1 annotation (
    Placement(transformation(rotation = 0, extent={{102,-6},{130,18}}),
        iconTransformation(extent={{102,-6},{130,18}})));
  Modelica.Blocks.Interfaces.BooleanOutput startIslanding annotation (
    Placement(transformation(rotation = 0, extent={{68,-88},{96,-64}}),         iconTransformation(extent={{68,-88},
            {96,-64}})));
  Modelica.Blocks.Interfaces.BooleanOutput Trip_Breaker_To_Island annotation (
    Placement(transformation(rotation = 0, extent={{90,34},{118,58}}),       iconTransformation(extent={{90,34},
            {118,58}})));
  Modelica.Blocks.Math.Add add(k2 = -1) annotation (
    Placement(transformation(extent={{-88,-58},{-68,-38}})));
  Essentials.LimitCheckTriggered
    f_limit_check(
    dt=2,
    upperLim=0.5,
    lowerLim=-3)
    annotation (Placement(transformation(extent={{-10,-78},{10,-58}})));
  Modelica.Blocks.Logical.Nor or1 annotation (
    Placement(transformation(extent={{40,-46},{60,-26}})));
  Modelica.Blocks.Sources.BooleanConstant booleanConstant1(k = false) annotation (
    Placement(transformation(extent={{-12,-46},{8,-26}})));
  Modelica.Blocks.Sources.Constant const1(k = 0) annotation (
    Placement(transformation(extent = {{5, -5}, {-5, 5}}, rotation = 180, origin = {-131, -3})));
  Modelica.Blocks.Math.Gain unit_conv(k = 1 / (2 * 3.14)) annotation (
    Placement(transformation(extent = {{-6, -6}, {6, 6}}, rotation = 0, origin={-42,-48})));
  Modelica.Blocks.Discrete.ZeroOrderHold zeroOrderHold(samplePeriod=
        0.050)
    annotation (Placement(transformation(extent={{-98,50},{-78,70}})));
  Modelica.Blocks.Nonlinear.FixedDelay fixedDelay(delayTime=0)
    annotation (Placement(transformation(extent={{-62,50},{-42,70}})));
equation

  connect(booleanConstant1.y, or1.u1) annotation (
    Line(points={{9,-36},{9,-36},{38,-36}},           color = {255, 0, 255}));
  connect(f_limit_check.START, startIslanding) annotation (
    Line(points={{11,-68},{26,-68},{26,-76},{82,-76}},          color = {255, 0, 255}));
  connect(or1.y, Trip_Breaker_To_Island) annotation (
    Line(points={{61,-36},{74,-36},{74,46},{104,46}},          color = {255, 0, 255}));
  connect(const1.y, add.u2) annotation (
    Line(points={{-125.5,-3},{-118,-3},{-118,-54},{-90,-54}},          color = {0, 0, 127}));
  connect(add.y, unit_conv.u) annotation (
    Line(points={{-67,-48},{-60,-48},{-49.2,-48}},
                                              color = {0, 0, 127}));
  connect(unit_conv.y, f_limit_check.u) annotation (
    Line(points={{-35.4,-48},{-22,-48},{-22,-68},{-10,-68}},
                                              color = {0, 0, 127}));
  connect(f_DN.y, zeroOrderHold.u) annotation (Line(points={{-108.8,59.52},{
          -108.5,59.52},{-108.5,60},{-100,60}}, color={0,0,127}));
  connect(zeroOrderHold.y, fixedDelay.u)
    annotation (Line(points={{-77,60},{-64,60}}, color={0,0,127}));
  connect(booleanConstant.y, y) annotation (Line(points={{-71,-16},{-71,-8},{
          -62,-8},{22,-8},{22,96},{66,96}}, color={255,0,255}));
  connect(or1.u2, startIslanding) annotation (Line(points={{38,-44},{30,-44},
          {26,-44},{26,-76},{82,-76}}, color={255,0,255}));
  connect(f_limit_check.start_synch, y) annotation (Line(points={{-0.2,-78},{
          -0.2,-100},{-56,-100},{-56,-8},{22,-8},{22,96},{66,96}}, color={255,
          0,255}));
  connect(y, y) annotation (Line(points={{66,96},{64,96},{64,96},{66,96}},
        color={255,0,255}));
  connect(fixedDelay.y, y1) annotation (Line(points={{-41,60},{-8,60},{-8,8},
          {116,8},{116,6}}, color={0,0,127}));
  connect(add.u1, y1) annotation (Line(points={{-90,-42},{-102,-42},{-102,8},
          {116,8},{116,6}}, color={0,0,127}));
  annotation (
    Diagram(coordinateSystem(extent = {{-140, -120}, {140, 120}})),
    Icon(coordinateSystem(extent = {{-140, -120}, {140, 120}}), graphics={                                                                                                                                            Text(extent = {{-90, 64}, {26, -36}}, lineColor = {28, 108, 200}, textString = "Event_Islanding"), Ellipse(
            extent={{-114,110},{106,-110}}, lineColor={28,108,200})}));
end Event_Islanding_Delay;
