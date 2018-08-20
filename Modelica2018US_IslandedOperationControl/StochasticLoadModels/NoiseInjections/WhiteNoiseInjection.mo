within Modelica2018US_IslandedOperationControl.StochasticLoadModels.NoiseInjections;
model WhiteNoiseInjection
  extends BaseClass(noise_gen(startTime = 5, useGlobalSeed = false));
  inner Modelica.Blocks.Noise.GlobalSeed globalSeed(fixedSeed = 30000) annotation (
    Placement(transformation(extent = {{-42, 48}, {-22, 68}})));
equation
  y = noise_gen.y;
end WhiteNoiseInjection;
