# Optimization of Well Drawdown Under Geomechanical Effects for Enhanced Production from Unconventional Reservoirs

This repository contains the code and resources for the paper:  
📄 [**Optimization of Well Drawdown Under Geomechanical Effects for Enhanced Production from Unconventional Reservoirs**](https://onepetro.org/URTECONF/proceedings-abstract/25URTC/25URTC/D031S054R004/694042)  
Presented at the 2025 Unconventional Resources Technology Conference (URTeC).

## 📌 Summary

Optimizing well drawdown strategies is important for maximizing oil recovery from unconventional reservoirs, where geomechanical effects can significantly influence reservoir performance. This study introduces a novel methodology for determining optimal drawdown management by integrating field-scale, fully coupled flow-geomechanics simulations with an advanced numerical optimization framework. We develop a realistic reservoir model of an unconventional formation with a multi-stage hydraulically fractured horizontal well, capturing the effect of depletion-induced stress changes on the matrix, hydraulic fractures, and enhanced permeability zones—each exhibiting distinct stress sensitivity behavior. To determine time-varying bottomhole pressure trajectories that maximize cumulative oil production, we employ an efficient, ensemble-based gradient descent optimization algorithm, which is well-suited for the computational demands of coupled multiphysics simulations and adheres to relevant field and operational constraints. Through comparative analysis of optimization runs with and without geomechanical coupling, we demonstrate the critical role of stress-dependent rock and fracture properties in shaping optimal production strategies. The results show that accounting for geomechanical effects can yield substantial improvements in oil recovery, particularly in reservoirs with moderate to low stress sensitivity and over longer production periods. The proposed optimization scheme consistently outperforms conventional drawdown strategies and proves robust across a range of initialization scenarios. This study presents a rigorous, automated workflow for drawdown optimization in unconventional reservoirs. By combining realistic field-scale simulation with flexible numerical optimization, the framework provides an effective and scalable tool for designing stress-aware production strategies tailored to specific reservoir characteristics and development goals. The presented workflow offers an automated and rigorous solution to the drawdown optimization problem in unconventional oil reservoirs. It integrates a representative field-scale simulation model with a flexible numerical optimization scheme for efficient determination of optimal drawdown strategies. The study provides practical insights for developing effective drawdown management strategies in unconventional oil fields by considering varying production periods and stress sensitivity levels. The automated drawdown optimization workflow for unconventional reservoir management offers significant improvement over the existing approaches that only consider a finite set of predetermined drawdown scenarios.

## 💡 Motivation

![image](https://github.com/user-attachments/assets/6b694ce3-db4d-4f38-84ef-ce357111954b)

![image](https://github.com/user-attachments/assets/30198e96-5d2f-4733-b75a-48d475e61517)

## 🛠️ Modeling Approach and Workflow

![image](https://github.com/user-attachments/assets/31e67220-ec02-44d6-affa-453cc47480b3)
![image](https://github.com/user-attachments/assets/73142908-ba71-40b1-9de8-34a3d068e055)




