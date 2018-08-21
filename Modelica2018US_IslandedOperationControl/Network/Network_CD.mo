within Modelica2018US_IslandedOperationControl.Network;
model Network_CD "islanded operation controller disabled"
  extends Modelica.Icons.Example;
  OpenIPSL.Electrical.Buses.Bus B1(                                                                                            displayPF = false,
    V_0=network_10_0_MW_voltages_WL.V1,
    angle_0=network_10_0_MW_voltages_WL.A1)                                                                                                       annotation (
    Placement(transformation(extent = {{-90, 30}, {-70, 50}})));
  OpenIPSL.Electrical.Buses.Bus B2(                                                                                            displayPF = false,
    V_0=network_10_0_MW_voltages_WL.V2,
    angle_0=network_10_0_MW_voltages_WL.A2)                                                                                                       annotation (
    Placement(transformation(extent = {{-50, 30}, {-30, 50}})));
  OpenIPSL.Electrical.Branches.PSSE.TwoWindingTransformer T1(R = 0.001, X = 0.2, G = 0, B = 0, VNOM1 = 220, VB1 = 220, VNOM2 = 24, VB2 = 24) annotation (
    Placement(transformation(extent = {{-6, -4}, {6, 4}}, rotation = 180, origin = {-60, 40})));
  Generators.G1 G1(
    V_b=24,
    V_0=network_10_0_MW_voltages_WL.V1,
    angle_0=network_10_0_MW_voltages_WL.A1,
    P_0=network_10_0_MW_machines_WL.P1_1,
    Q_0=network_10_0_MW_machines_WL.Q1_1)
    annotation (Placement(transformation(extent={{-110,30},{-90,50}})));
  OpenIPSL.Electrical.Branches.PwLine L1(G = 0, B = 0, R = 0.001, X = 0.2, displayPF = false) annotation (
    Placement(transformation(extent = {{-30, 36}, {-18, 44}})));
  OpenIPSL.Electrical.Buses.Bus B3(                                                                                            displayPF = false,
    V_0=network_10_0_MW_voltages_WL.V3,
    angle_0=network_10_0_MW_voltages_WL.A3)                                                                                                       annotation (
    Placement(transformation(extent = {{-12, 30}, {8, 50}})));
  OpenIPSL.Electrical.Buses.Bus B4(                                                                                            displayPF = false,
    V_0=network_10_0_MW_voltages_WL.V4,
    angle_0=network_10_0_MW_voltages_WL.A4)                                                                                                       annotation (
    Placement(transformation(extent = {{54, 30}, {74, 50}})));
  OpenIPSL.Electrical.Branches.PwLine L2_1(G = 0, B = 0, R = 0.0005, X = 0.1, displayPF = false) annotation (
    Placement(transformation(extent = {{24, 56}, {36, 64}})));
  OpenIPSL.Electrical.Branches.PwLine L2_2(G = 0, B = 0, R = 0.0005, X = 0.1, displayPF = false) annotation (
    Placement(transformation(extent = {{24, 16}, {36, 24}})));
  OpenIPSL.Electrical.Buses.Bus B6(                                                                                            displayPF = false,
    V_0=network_10_0_MW_voltages_WL.V6,
    angle_0=network_10_0_MW_voltages_WL.A6)                                                                                                       annotation (
    Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {80, -24})));
  OpenIPSL.Electrical.Branches.PwLine L3(X = 0.2, G = 0, B = 0, R = 0.01, displayPF = false) annotation (
    Placement(transformation(extent = {{-7.99999, -5.00005}, {7.99999, 5}}, rotation = -90, origin = {81, 9.99999})));
  OpenIPSL.Electrical.Buses.Bus B7(                                                                                            displayPF = false,
    V_0=network_10_0_MW_voltages_WL.V7,
    angle_0=network_10_0_MW_voltages_WL.A7)                                                                                                       annotation (
    Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {60, -60})));
  OpenIPSL.Electrical.Branches.PSSE.TwoWindingTransformer T2(G = 0, B = 0, VNOM1 = 220, VB1 = 220, VNOM2 = 24, VB2 = 24, R = 0.005, X = 0.1) annotation (
    Placement(transformation(extent = {{-6, -4}, {6, 4}}, rotation = 270, origin = {60, -40})));
  inner OpenIPSL.Electrical.SystemBase SysData(S_b = 100, fn = 50) annotation (
    Placement(transformation(extent = {{-140, 100}, {-80, 120}})));
  OpenIPSL.Electrical.Loads.PSSE.Load LD1(V_b = 220,
    V_0=network_10_0_MW_voltages_WL.V3,
    angle_0=network_10_0_MW_voltages_WL.A3,
    P_0=network_10_0_MW_loads_WL.PL3_1,
    Q_0=network_10_0_MW_loads_WL.QL3_1)                                                                                                                                                                                                  annotation (
    Placement(transformation(extent = {{-16, -14}, {-4, -2}})));
  Breakers.Breaker
    breaker1 annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={80,-16})));
public
  OpenIPSL.Electrical.Branches.PwLine L2(G = 0, B = 0, R = 0.05, X = 0.5, displayPF = false) annotation (
    Placement(transformation(extent = {{-8.00001, -5.00001}, {8, 5.00001}}, rotation = 0, origin = {96, 41})));
  Breakers.Breaker
    breaker2 annotation (Placement(transformation(
        extent={{-4,-4},{4,4}},
        rotation=90,
        origin={80,28})));
  OpenIPSL.Electrical.Buses.Bus B8(                                                                                            displayPF = false,
    V_0=network_10_0_MW_voltages_WL.V8,
    angle_0=network_10_0_MW_voltages_WL.A8)                                                                                                       annotation (
    Placement(transformation(extent = {{-10, -10}, {10, 10}}, rotation = 90, origin = {100, -58})));
  OpenIPSL.Electrical.Branches.PwLine L4(G = 0, B = 0, R = 0.05, X = 0.5) annotation (
    Placement(transformation(extent = {{-6, -4}, {6, 4}}, rotation = -90, origin = {100, -42})));
  OpenIPSL.Electrical.Buses.Bus B5(                                                                                            displayPF = false,
    V_0=network_10_0_MW_voltages_WL.V5,
    angle_0=network_10_0_MW_voltages_WL.A5)                                                                                                       annotation (
    Placement(transformation(extent = {{110, 30}, {130, 50}})));
  OpenIPSL.Electrical.Loads.PSSE.Load load(V_b = 220,
    V_0=network_10_0_MW_voltages_WL.V5,
    angle_0=network_10_0_MW_voltages_WL.A5,
    P_0=network_10_0_MW_loads_WL.PL5_1,
    Q_0=network_10_0_MW_loads_WL.QL5_1)                                                                                                                                                                                                   annotation (
    Placement(transformation(extent = {{122, -2}, {132, 8}})));
  Generators.G22_CD
                 g22_IslandedControl(
    V_0=network_10_0_MW_voltages_WL.V7,
    angle_0=network_10_0_MW_voltages_WL.A7,
    P_0=network_10_0_MW_machines_WL.P7_1,
    Q_0=network_10_0_MW_machines_WL.Q7_1)
    annotation (Placement(transformation(extent={{28,-92},{52,-70}})));
  OpenIPSL.Electrical.Loads.PSSE.Load LD2(V_b = 220,
    V_0=network_10_0_MW_voltages_WL.V8,
    angle_0=network_10_0_MW_voltages_WL.A8,
    P_0=network_10_0_MW_loads_WL.PL8_1,
    Q_0=network_10_0_MW_loads_WL.QL8_1)                                                                                                                                                                                                  annotation (
    Placement(transformation(extent={{94,-100},{106,-88}})));
  SimulationSetups.Event_Islanding event_Islanding( f_DN(u = B6.p.vi, u1 = B6.p.vr))
    annotation (Placement(transformation(extent={{-4,-50},{22,-28}})));
  PowerFlowData.case10_0MW.Network_10_0_MW_loads_WL network_10_0_MW_loads_WL
    annotation (Placement(transformation(extent={{-72,92},{-52,112}})));
  PowerFlowData.case10_0MW.Network_10_0_MW_machines_WL
    network_10_0_MW_machines_WL
    annotation (Placement(transformation(extent={{-38,92},{-18,112}})));
  PowerFlowData.case10_0MW.Network_10_0_MW_voltages_WL
    network_10_0_MW_voltages_WL
    annotation (Placement(transformation(extent={{-4,92},{16,112}})));
equation
  connect(T1.p, B2.p) annotation (
    Line(points = {{-53, 40}, {-40, 40}}, color = {0, 0, 255}));
  connect(B1.p, T1.n) annotation (
    Line(points = {{-80, 40}, {-67, 40}}, color = {0, 0, 255}));
  connect(G1.conn, B1.p) annotation (
    Line(points = {{-89, 40}, {-89, 40}, {-80, 40}}, color = {0, 0, 255}));
  connect(L1.n, B3.p) annotation (
    Line(points = {{-18.6, 40}, {-2, 40}}, color = {0, 0, 255}));
  connect(L1.p, B2.p) annotation (
    Line(points = {{-29.4, 40}, {-40, 40}}, color = {0, 0, 255}));
  connect(L2_2.n, B4.p) annotation (
    Line(points = {{35.4, 20}, {56, 20}, {56, 40}, {64, 40}}, color = {0, 0, 255}));
  connect(L2_1.n, B4.p) annotation (
    Line(points = {{35.4, 60}, {56, 60}, {56, 40}, {64, 40}}, color = {0, 0, 255}));
  connect(L2_1.p, B3.p) annotation (
    Line(points = {{24.6, 60}, {24.6, 60}, {4, 60}, {4, 40}, {-2, 40}}, color = {0, 0, 255}));
  connect(L2_2.p, B3.p) annotation (
    Line(points = {{24.6, 20}, {4, 20}, {4, 40}, {-2, 40}}, color = {0, 0, 255}));
  connect(T2.p, B6.p) annotation (
    Line(points = {{60, -33}, {60, -28}, {80, -28}, {80, -24}}, color = {0, 0, 255}));
  connect(T2.n, B7.p) annotation (
    Line(points = {{60, -47}, {60, -60}}, color = {0, 0, 255}));
  connect(LD1.p, B3.p) annotation (
    Line(points = {{-10, -2}, {-10, 40}, {-2, 40}}, color = {0, 0, 255}));
  connect(B6.p, breaker1.p) annotation (
    Line(points = {{80, -24}, {80, -20.5}}, color = {0, 0, 255}));
  connect(L2.p, B4.p) annotation (
    Line(points = {{88.8, 41}, {88.8, 40}, {64, 40}}, color = {0, 0, 255}));
  connect(breaker2.n, B4.p) annotation (
    Line(points = {{80, 32.5}, {80, 40}, {64, 40}}, color = {0, 0, 255}));
  connect(L3.p, breaker2.p) annotation (
    Line(points={{81,17.2},{80,17.2},{80,23.5}},        color = {0, 0, 255}));
  connect(breaker1.n, L3.n) annotation (
    Line(points={{80,-11.5},{80,2.8},{81,2.8}},        color = {0, 0, 255}));
  connect(L4.p, B6.p) annotation (
    Line(points = {{100, -36.6}, {100, -28}, {80, -28}, {80, -24}}, color = {0, 0, 255}));
  connect(B5.p, L2.n) annotation (
    Line(points = {{120, 40}, {112, 40}, {112, 41}, {103.2, 41}}, color = {0, 0, 255}));
  connect(L4.n, B8.p) annotation (
    Line(points = {{100, -47.4}, {100, -47.4}, {100, -58}}, color = {0, 0, 255}));
  connect(B5.p, load.p) annotation (
    Line(points = {{120, 40}, {128, 40}, {128, 8}, {127, 8}}, color = {0, 0, 255}));
  connect(g22_IslandedControl.conn, B7.p) annotation (
    Line(points={{53.2,-81},{53.2,-82.27},{60,-82.27},{60,-60}},             color = {0, 0, 255}));
  connect(B8.p, LD2.p) annotation (Line(points={{100,-58},{100,-58},{
          100,-88}}, color={0,0,255}));
  connect(event_Islanding.startIslanding, g22_IslandedControl.start_islanding)
    annotation (Line(points={{9,-50.6},{9,-98},{39.76,-98},{39.76,-92.44}},
        color={255,0,255}));
  connect(event_Islanding.y1, g22_IslandedControl.f_DN) annotation (Line(points=
         {{20.6,-42.4},{26,-42.4},{26,-74.18},{28,-74.18}}, color={0,0,127}));
  connect(event_Islanding.Trip_Breaker_To_Island, breaker1.TRIGGER) annotation (
     Line(points={{20.6,-35.8},{26,-35.8},{26,-16},{75.5,-16}}, color={255,0,255}));
  connect(event_Islanding.y, breaker2.TRIGGER) annotation (Line(points={{8.8,-27.6},
          {8.8,-6},{72,-6},{72,28},{75.5,28}}, color={255,0,255}));
  annotation (
    Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-140, -120}, {140, 120}})),
    Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-140, -120}, {140, 120}})),
    experiment(
      StopTime=70,
      Interval=0.02,
      __Dymola_fixedstepsize=0.02,
      __Dymola_Algorithm="Rkfix4"),
    __Dymola_experimentFlags(
      Advanced(GenerateVariableDependencies=false, OutputModelicaCode=false),
      Evaluate=true,
      OutputCPUtime=false,
      OutputFlatModelica=false));
end Network_CD;
