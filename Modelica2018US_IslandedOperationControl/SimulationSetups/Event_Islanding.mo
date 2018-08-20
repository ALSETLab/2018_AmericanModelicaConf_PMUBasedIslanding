within Modelica2018US_IslandedOperationControl.SimulationSetups;
model Event_Islanding
  parameter Real L1 = 0.5 "frequency upper limit";
  parameter Real L2 = -3 "frequency lower limit";
  parameter Real dt = 2 "time interval";
  Modelica.Blocks.Sources.BooleanConstant booleanConstant(k = true) annotation (
    Placement(transformation(extent={{-64,18},{-44,38}})));
  Essentials.FrequencyCalculationBlock
    f_DN annotation (Placement(transformation(extent={{-76,-18},{-98,4}})));
  Modelica.Blocks.Interfaces.BooleanOutput y annotation (
    Placement(transformation(rotation=90,  extent={{-14,-12},{14,12}},
        origin={60,94}), iconTransformation(
        extent={{-14,-12},{14,12}},
        rotation=90,
        origin={8,104})));
  Modelica.Blocks.Interfaces.RealOutput y1 annotation (
    Placement(transformation(rotation = 0, extent={{112,-56},{140,-32}}),
        iconTransformation(extent={{112,-56},{140,-32}})));
  Modelica.Blocks.Interfaces.BooleanOutput startIslanding annotation (
    Placement(transformation(rotation=270, extent={{-14,-12},{14,12}},
        origin={66,-84}),                                                       iconTransformation(extent={{-14,-12},
            {14,12}},
        rotation=270,
        origin={10,-126})));
  Modelica.Blocks.Interfaces.BooleanOutput Trip_Breaker_To_Island annotation (
    Placement(transformation(rotation = 0, extent={{112,10},{140,34}}),      iconTransformation(extent={{112,10},
            {140,34}})));
  Modelica.Blocks.Math.Add add(k2 = -1) annotation (
    Placement(transformation(extent={{-98,-56},{-78,-36}})));
  Essentials.LimitCheckTriggered
    f_limit_check(
    dt=2,
    upperLim=0.5,
    lowerLim=-3)
    annotation (Placement(transformation(extent={{-14,-74},{8,-50}})));
  Modelica.Blocks.Logical.Nor or1 annotation (
    Placement(transformation(extent={{16,-18},{36,2}})));
  Modelica.Blocks.Sources.BooleanConstant booleanConstant1(k = false) annotation (
    Placement(transformation(extent={{-64,-18},{-42,4}})));
  Modelica.Blocks.Sources.Constant const1(k = 0) annotation (
    Placement(transformation(extent={{-9,-9},{9,9}},      rotation = 180, origin={-55,-83})));
  Modelica.Blocks.Math.Gain unit_conv(k = 1 / (2 * 3.14)) annotation (
    Placement(transformation(extent={{-10,-10},{10,10}},  rotation = 0, origin={-52,-46})));
equation
  connect(booleanConstant.y, y) annotation (
    Line(points={{-43,28},{-43,28},{60,28},{60,94}},                                    color = {255, 0, 255}));
  connect(booleanConstant1.y, or1.u1) annotation (
    Line(points={{-40.9,-7},{-40.9,-8},{14,-8}},      color = {255, 0, 255}));
  connect(or1.y, Trip_Breaker_To_Island) annotation (
    Line(points={{37,-8},{78,-8},{78,22},{126,22}},            color = {255, 0, 255}));
  connect(const1.y, add.u2) annotation (
    Line(points={{-64.9,-83},{-108,-83},{-108,-52},{-100,-52}},        color = {0, 0, 127}));
  connect(add.y, unit_conv.u) annotation (
    Line(points={{-77,-46},{-64,-46}},        color = {0, 0, 127}));
  connect(or1.u2, startIslanding) annotation (Line(points={{14,-16},{8,
          -16},{8,-44},{66,-44},{66,-84}}, color={255,0,255}));
  connect(Trip_Breaker_To_Island, Trip_Breaker_To_Island) annotation (
      Line(points={{126,22},{118,22},{118,22},{126,22}}, color={255,0,
          255}));
  connect(unit_conv.y, f_limit_check.u) annotation (Line(points={{-41,
          -46},{-41,-46},{-24,-46},{-24,-62},{-14,-62}}, color={0,0,127}));
  connect(f_DN.y, add.u1) annotation (Line(points={{-99.1,-7.44},{-108,-7.44},{
          -108,-40},{-100,-40}},         color={0,0,127}));
  connect(f_limit_check.start_synch, y) annotation (Line(points={{-3.22,
          -74},{-3.22,-84},{-30,-84},{-30,28},{60,28},{60,94}}, color={
          255,0,255}));
  connect(f_limit_check.START, startIslanding) annotation (Line(points=
          {{9.1,-62},{66,-62},{66,-84}}, color={255,0,255}));
  connect(y1, add.u1) annotation (Line(points={{126,-44},{84,-44},{84,
          -28},{-108,-28},{-108,-40},{-100,-40}}, color={0,0,127}));
  annotation (
    Diagram(coordinateSystem(extent={{-120,-120},{140,100}})),
    Icon(coordinateSystem(extent={{-120,-120},{140,100}}),      graphics={Ellipse(
          extent={{-106,100},{124,-120}},
          lineColor={28,108,200},
          fillColor={85,170,255},
          fillPattern=FillPattern.Solid)}));
end Event_Islanding;
