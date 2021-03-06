[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.3539664.svg)](https://doi.org/10.5281/zenodo.3539664)

# PMU Based Islanded-Operation Controller Model Implementation in Modelica

![alt text](https://github.com/ALSETLab/2018_AmericanModelicaConf_PMUBasedIslanding/blob/master/Example_Results/Dymola2018/IslandedOperationController/GenModelwithIslandedOperationController.png)

This repository contains an Islanded Operation Controller Model Implementation. These Modelica-compliant models are briefly described in the following paper of the American Modelica Conference 2018:

> Biswarup Mukherjee and Luigi Vanfretti, "Modeling of PMU-Based Islanded Operation Controls for 
  Power Distribution Networks using Modelica and OpenIPSL," Proceedings of The American Modelica Conference, Oct. 9-10, 2018 in Cambridge, MA, USA. [http://www.ep.liu.se/ecp/article.asp?issue=154&article=012&volume=](http://www.ep.liu.se/ecp/article.asp?issue=154&article=012&volume=)

Please see the full paper for the documentation of the models.
Download the paper from the [American Modelica Conference 2018](https://www.modelica.org/events/modelica2018Americas) website.
A pre-print is available under `./Doc/`; is the final version of the paper, which you can obtain in the website cited above.

## How to Simulate it?

In your favorite Modelica tool, e.g. Open Modelica, follow the steps below:
- File/Open `./package.mo`
- Under the main package `Modelica2018US_IslandedOperationControl`, Seven subpackages should appear as: (1) `Breakers`, (2) `Generators`, (3) `StochasticLoadModels`, (4) `SimulationSetups`, (5) `PowerFlowData`, (6) `Essentials`, (7) `Network`. It is recommended to use the distributed version of OpenIPSL library package (version: 1.0.0) from this repository.
- Under the `Network` subpackage, go to the model `Network_DL`; the figure shown on top of this repository is the Generator model used in the distribution network of the `Network_DL` including the Islanded operation controller.
- Go to the `Simulation` tab of your tool, and click the `Simulate` button.
- The simulaiton results of distribution network frequency should be similar to the one shown next when the islanded controller remains active or inactive :
![alt text](https://github.com/ALSETLab/2018_AmericanModelicaConf_PMUBasedIslanding/blob/master/Example_Results/Dymola2018/IslandedOperationController/Plots_ControllerEffect.png)


- You can perform similar simulations of the power system model by making your own changes using other components from the distributed package 'Modelica2018US_IslandedOperationControl.mo'.


## Development and contribution

The library is developed by [Biswarup Mukherjee](https://github.com/BiswarupM) and [Luigi Vanfretti](https://github.com/lvanfretti).

Contributions are welcome via pull requests.

## License - No Warranty

This Modelica package is free software and the use is completely at your own risk; it can be redistributed and/or modified under the terms of the GNU Public License version 3.

Copyright (C) 2018, [Biswarup Mukherjee](https://github.com/BiswarupM) and [Luigi Vanfretti](https://github.com/lvanfretti).
