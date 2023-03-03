Model and data analysis scripts for "Sr/Ca in foraminiferal calcite as a proxy for calcifying fluid composition".
 
This directory includes:
- Data analyses of environmental parameters.
   (1) Core-top data from Yu et al. (2014) for C.wuellerstorfi and C.mundulus.  Files: s1data.mat
   (2) Script for analysing the importance of different environmental parameters.  Files: figureS1.m

-Model input data from this study.
   (1) Core-top data from Yu et al. (2014) for C.wuellerstorfi and C.mundulus. Files: carbonate_parameters.mat, carbonate_parameters_Cm.mat
   (2) Script for calculating thermodynamic parameters. File: thermodynamic_parameters.m

-Box model scripts for C.mundulus.
   (1) Script for calculating stable calcifying fluid  composition at varying seawater depths in the Atlantic ocean. File: function_Cm_A.m
   (2) Calculation of model output. Includes the solution chemistry of seawater in the Atlantic Ocean and the C.mundulus calcifying fluid, modeled calcite precipitation rate and the foraminiferal KSr. File: run_Cm_A.m      

-Box model scripts for C.wuellerstorfi. 
   (1) Scripts for calculating stable calcifying fluid  composition at varying seawater depths in four oceans. Files: function_chen_depth_a.m, function_chen_depth_i.m, function_chen_depth_n.m, function_chen_depth_p.m
   (2) Calculation of model output. Includes the solution chemistry of seawater in four Oceans and the C.wuellerstorfi calcifying fluid, modeled calcite precipitation rate and the foraminiferal DSr. Files: run_chen_depth_a.m, run_chen_depth_i.m, run_chen_depth_p.m, run_chen_depth_n.m
   (3) Plot the figures of Fig.3, Fig.4 and Fig.S3. Files: figure_sw_cf_Rp_depth.m, figure_sw_cf_Rp_depth2.m, figure_carbonate_depth.m, figure_ksr_omega.m
   (4) Possible combination of model parameters. Files: Pcell_Falk.m

-Sensitivity of model parameters.
   (1) Effects of DICsw and pHsw on precipitation of foraminiferal and inorganic calcite. Files: figure5.m



Note: File [equic.m] is used to calculate seawater carbonate chemistry in function files. File [solveP.m] is used to calculate the probability of each kink site in run files and function files.

Reference:
J. Yu, H. Elderfield, Z. Jin, P. Tomascak, E. J. Rohling, Controls on Sr/Ca in benthic foraminifera and implications for seawater Sr/Ca during the late Pleistocene. Quaternary Sci. Rev. 98, 1-6 (2014).