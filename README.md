# Reuse-and-recycling-pathway-of-retired-batteries

This accessible roadmap design and evaluation tool focuses on selecting battery retirement scenarios, providing quick access to lifecycle carbon emissions and the economic performance of retired batteries. It enhances traditional life cycle assessment methodologies by streamlining data management, reducing computational power, and facilitating automation and standardization. The tool simplifies sensitivity analysis and uncertainty evaluations. As open-source software, it can inspire further work and extend retirement scenarios, offering benefits to both researchers and communities.

Main1AllDataGeneration.m generates the main data, including the economic performance and carbon footprint across different stages. Main2CarbonFootprint.m, Main3ManufacturingCarbonFootprintDetalis.m, Main4RecyclingCostDetails.m, Main5PathwayCost.m, Main6PathwayCarbonFootprint.m are based on the data processed from Main1AllDataGeneration.m. Therefore, Main1AllDataGeneration.m should be run first, followed by other five files.

![image](https://github.com/user-attachments/assets/f8fc40d9-5562-4e70-a455-651cc0dba5b5)

Based on this tool, some of the data generated have been published in the paper titled "Pathway Decisions for Reuse and Recycling of Retired Lithium-Ion Batteries Considering Economic and Environmental Functions". If you use the code, please cite this paper. You can access the paper at https://doi.org/10.1038/s41467-024-52030-0.

If you have any questions, you can email ruifei.ma@outlook.com...


------------ November 20th, 2024 updata following -------------------

The authors apologize for the previous version's data not being uploaded successfully, which caused the files to be missing. We have re-uploaded the relevant data.

------------ December 12th, 2024 updata following -------------------

The authors sincerely apologize for a mistake in the paper and would like to clarify that the correct form of Figure 2d should be (a vertical flip as seen on the official website):

<img width="228" alt="a52c96d4a8b054fb116f1fe15cfba0c" src="https://github.com/user-attachments/assets/1daae336-1d23-44d8-b79b-c601ea5e4a5b" />

------------ May 12th, 2025 updata following -------------------

The authors apologize for the following oversights.

Incorrect number and figure citation.
On page 6, the sentence “while its value in the reuse stage changes significantly by at least $55/kWh (as shown in Fig. 2b)” should read “while its value in the reuse stage changes significantly by at least $238/kWh (as shown in Fig. 2c).”

Miscalculated unit battery profit values in Figs 2b–2c.
While plotting “unit battery profit”, we mistakenly divided profit by the number of battery cells ( USD/number of battery cell ) instead of by configured capacity ( USD/kWh battery cell ). This error produced unit battery profit markers that are much lower than the true values. The corrected figures are provided below.

<img width="890" alt="f79eaa308d5de550cdc766d56288031" src="https://github.com/user-attachments/assets/7dfb7ee7-a3fb-4e82-af58-df1a360dec4d" />
