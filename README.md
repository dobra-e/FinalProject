## Modeling Electric Vehicle Registrations & EV Infastructure

### Topic
We have chosen to evaluate the growth of electric vehicles nationwide and determine whether charging station infrastructure is on pace to meet demand. The objective of our project is to build machine learning models that can predict the number of electric vehicle registrations and charging stations by state.

### Reason for Selection
The buildup of greenhouse gases as a result of burning fossil-fuels is a significant contributor to climate change. About 27% of the United States greenhouse gas emissions are from transportation. With mounting pressure to address climate change, federal and state governments have pushed policies to reduce fossil-fuel emissions and incentivize alternative fuel solutions. Individuals have increasingly switched to alternative fuel vehicles including battery electric vehicles (BEVs) and plug-in hybrid electric vehicles (PHEVs). Nationwide, electric vehicle registrations have grown XX% in the last 6 years. Electric vehicle infrastructure, such as charging stations, needs to be prioritized to meet this rising demand and to maximize the benefits of electric vehicles in slowing greenhouse gas emissions and ensuring a cleaner environment.

### Data Sources
#### Vehicle Registrations
Light-duty vehicle registration counts from 2016-2021 by state and fuel-type. Counts are rounded to the nearest 100 vehicles. 
Alternative Fuels Data Center. (2021). Vehicle Registration Counts by State [data set]. https://afdc.energy.gov/vehicle-registration. 

#### Charging Stations
Alternative fuel stations, including electric, nationwide as of July 19, 2021. Information includes address, access, open date, etc. 
Alternative Fuels Data Center. (2021). Alternative Fuel Stations 2021 [data set]. https://catalog.data.gov/dataset/alternative-fueling-station-locations-422f2. 

#### Population
Population estimates by state and region from 2010 to 2022. Estimates are based on the 2010 Census. 
U.S. Census Bureau. Population Division.  (2019). Annual Estimates of the Resident Population for the United States, Regions, States, and Puerto Rico [data set]. https://www.census.gov/data/datasets.html. 

#### Median Household Income
Annual median household income (dollars) by state and nationwide from 2016-2021. 
Federal Reserve Bank of St. Louis (2021). Median Household Income by State, Annual [data set]. https://fred.stlouisfed.org/release/tables?rid=249&eid=259462. 

#### Educational Attainment
Percent of population 18 years old and over with a bachelor’s degree or higher by state. Estimates are based on the American Community Survey.
Federal Reserve Bank of St. Louis.  (2021). Bachelor’s Degree or Higher by State [data set]. https://fred.stlouisfed.org/release/tables?rid=330&eid=391444#snid=391450. 


### Questions to Answer with the Data
1. What are the adoption rates of EVs by state and nationwide?
2. What is the ratio of charging stations to EVs by state and nationwide?
3. Does population, income, and education accurately predict EV adoption?
4. What does our model predict for 2021 EV adoption and charging stations?
5. Which states have the appropriate charging station infastructure?


### Description of the Data Exploration Phase of the Project
Our main objective during the data exploration phase was to gain a deeper understanding of the dataset and uncover any hidden patterns, trends, or anomalies. This process involved several steps:

1. **Initial Dataset Inspection**: We began by scrutinizing the structure and variables in the dataset, evaluating the data types, range of values, and the presence of any missing or irregular data. We identified some inconsistencies in the EV registration data and promptly addressed them.

2. **Correlation Analysis**: To assess the linear relationships between pairs of continuous variables, we performed a correlation analysis. This helped us identify the most relevant variables for our predictive modeling, primarily focusing on the relationship between year and state across our census data and EV registration data and charging station count.

    We used a database to assist in this analysis.
![DatabaseERD](Database_files/finalprojectdb.png)

3. **Visualization**: After importing the data into Tableau, we created line charts and other graphs to visually compare the variables in our dataset.

4. **Feature Engineering**: Informed by our observations during the exploration phase, we pinpointed opportunities to transform existing features to better capture the patterns in the data, ultimately enhancing the quality of our analysis. We concentrated on refining the Tableau dashboard to provide greater clarity in visualization.

![Visualization Outline](https://user-images.githubusercontent.com/109118631/232955805-68ffa008-364c-418f-bdb4-9a969da9cfc7.png)


### Description of the Analysis Phase of the Project.
During the analysis phase, our primary goal was to extract meaningful insights from the cleaned and preprocessed data using various statistical methods and machine learning techniques. This phase involved several steps:

1. **Variable Selection**: We used the following variables for our analysis: year, electric EV, hybrid plug-in EV, income, education, population (as independent variables or features), and EV total (as the dependent variable or target).

2. **Model Selection**: After evaluating various machine learning models, we decided to use Linear Regression and Time Series Analysis for our project, as they provided the best performance and interpretability for our dataset.

3. **Feature Engineering**: We calculated the ratio of EVs to charging stations to better assess the progress of states in adopting EVs. This new feature allowed us to better understand the relationship between EV adoption and charging infrastructure availability.

4. **Model Training and Validation**: We trained and validated our Linear Regression and Time Series models using the selected variables. These models allowed us to make predictions and identify hidden patterns in the data.

5. **Model Evaluation**: We assessed the performance of our models using appropriate evaluation metrics, such as mean squared error. Based on these metrics, we fine-tuned our models to optimize their performance.

6. **Insights and Recommendations**: Based on the results of our analyses and models, we derived actionable insights to address the project objectives. These insights included the impact of factors such as income, education, and population on EV adoption and the relationship between EVs and charging infrastructure.

By the end of the analysis phase, we had gathered valuable insights and developed models that could inform decision-making and guide future actions to accelerate EV adoption and charging infrastructure deployment.

[ML model code + connection string to DB](https://github.com/dobra-e/FinalProject/blob/ce2f72fcec1d3b7fc8c19eba2076c1b8f7549dc3/USA%20data/Untitled4.ipynb)

### Technologies, Tools, & Algorithms
* Python
* Amazon S3
* Postgres
* Tableau

### Results of the Analyis
Our analysis of electric vehicle (EV) adoption and charging station capacity in the United States revealed several key findings. By examining state EV registration data, we identified trends in EV adoption and the growth of charging infrastructure. Furthermore, we discovered relationships between state population, income, and education levels, which have significant effects on both EV adoption and charging station capacity.

Using our machine learning model, we were able to make several key predictions:

1. 
2. 
3. 


### Recommendations for a future analysis
Based on our findings, we recommend conducting further analysis to better understand the nuances of EV adoption and charging station capacity growth in the United States:

1. Investigate the impact of local and state policies and incentives on EV adoption and charging infrastructure development.
2. Explore the role of urban versus rural areas in EV adoption, as infrastructure needs and challenges may differ significantly between these regions.
3. Analyze the role of public and private partnerships in supporting the growth of charging infrastructure, as well as the effectiveness of various business models for charging stations.
4. Examine the potential environmental and economic benefits of increased EV adoption, including reduced greenhouse gas emissions, decreased reliance on fossil fuels, and potential job creation in the renewable energy sector.

### Things to Do With Additonal Time
With more time, we could expand the scope of our analysis and further improve the accuracy of our predictions:

1. Incorporate additional data, such as vehicle type (e.g., sedans, SUVs, trucks) and regional factors (e.g., climate, terrain) that could influence EV adoption and charging station requirements.
2. Refine the machine learning model by exploring additional algorithms and enabling future predictions, such as forecasting EV adoption and charging station needs for the year 2030. This could involve incorporating trends in technology advancements, policy changes, and consumer preferences to create more accurate and robust long-term projections.
3. Conduct a cost-benefit analysis of potential investments in EV infrastructure, considering factors such as construction costs, maintenance expenses, and the long-term economic and environmental benefits of increased EV adoption.
4. Evaluate the potential impact of charging station and EV adoption on the electrical grid. This could include analyzing the capacity of existing grid infrastructure to support increased EV charging demand, the need for grid upgrades or the integration of renewable energy sources.
