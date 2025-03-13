# 🏙️ EU Regional Quality of Life Analysis - NUTS 2 Clustering

[![R Version](https://img.shields.io/badge/R-4.3.2-blue)](https://www.r-project.org/)
[![License](https://img.shields.io/badge/License-MIT-green)](LICENSE)

## 📌 Project Overview
This project analyzes quality-of-life patterns across **241 EU NUTS-2 regions** using unsupervised learning techniques. Combining PCA and advanced clustering methods, we identified 7 distinct regional profiles.

## 💡 Methodology  
- **Data**: 70+ Eurostat indicators across 11 domains (Economy, Health, Education, etc.) in the year 2021.  

- **Dimensionality Reduction**: PCA with Varimax rotation, reducing 48 variables to 10 components (79.2% variance explained)  

- **Clustering**: Compared different algorithms: Ward, Complete, K-Means, PAM, GMM. K-Means had the best sillhouette score with 7 clusters

- **Interpretation**: Geospatial visualization of regional patterns from PCA components, cluster assignments, and profiling variables
  
## 📊 Tools & Libraries  
- R
- RStudio
- Libraries: `ggplot2`, `eurostat`, `sf`, `tmap`, `corrplot`, `caret`, `tmap`, `mice`, `mclust`, `psych`, `cluster`, `gpairs`

## 🔍 Results  

**PCA Results**

- Economic Prosperity (GDP, compensation, life expectancy)
- Public Infrastructure & Urban Development (rail networks, healthcare)
- Social Inequality (unemployment, poverty, housing costs)
- Tourism & Mobility (tourism infrastructure, passenger transport)
- Education & Food Security (education participation)
- Demographics & Fertility (age structure, fertility rates)

**Clustering Results**
- Cluster 1: Regions with highest economic prosperity (PC1) but lowest school participation and highest food insecurity (PC5). These regions show strong economic indicators while underinvesting in education.
- Cluster 2: Regions with significant economic prosperity (second-highest PC1) and highest investment in school participation and food security (PC5). These areas balance economic growth with social investment.
- Cluster 3: Regions showing only negative values across all components, particularly lowest in economic prosperity (PC1) and public infrastructure (PC2). These are areas with structural development challenges.
- Cluster 4: Regions with exclusively positive values, particularly in tourism intensity (PC4) but also higher social inequality (PC3). These represent tourism-intensive economies.
- Cluster 5: Regions with highest public infrastructure investment (PC2) and younger populations with higher fertility rates (PC6). These areas show developed infrastructure potentially linked to immigration patterns.
- Cluster 6: Regions with highest social inequality indicators (PC3) and above-average values in PC5. These areas demonstrate pronounced social divides despite other developments.
- Cluster 7: Regions with lowest social inequality (PC3) but aging populations and lower fertility rates (PC6). These show socially equitable societies facing demographic challenges.

![image](https://github.com/user-attachments/assets/b027b9d4-c48b-4718-be05-418083f62e64)

![image](https://github.com/user-attachments/assets/7511cb4c-8c0f-4b19-9098-4a57932d4ab1)






