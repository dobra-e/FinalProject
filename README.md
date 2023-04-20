# FinalProject

## Background
- climate policy
- autonomous vehicles
- transportation infrastructure

## Analysis Overview

### Predict EV Population by State
Use a machine learning time series regression model to predict the number of electic vehicles on the road by 20XX. Predictions will be broken down by fuel-type (BEV, PHEV). 

Inputs: 
- Registered EVs by fuel-type by State
- Population
- Median income
- Education bachelor’s degree or higher  

Output:
- Number of electric vehicles by fuel-type by county

#### Data Sources
- Registration Data: https://www.atlasevhub.com/materials/state-ev-registration-data
- US Census Data: ?????


### Predict EV Charging Station Population by County
Use a machine learning time series regression model to predict the number of public electric vehicle charging stations by 20XX. 


Output: 
- Number of electric vehicle charging stations by county

#### Data Sources
- Registation Data: https://www.atlasevhub.com/materials/state-ev-registration-data 
- Fuel Station Data: https://afdc.energy.gov/data_download

### Estimate Proportion of EVs to Charging Stations
Use the projections found in part 1 and part 2 to calculate the estimated proportion of electric vehicles to charging stations by county. Compare the calculated proportion to the recommended ratio found in the literature. Assign a prepared or not-prepared value to each county based the proportions. 

## Visualizations


![Visualization Outline](https://user-images.githubusercontent.com/109118631/232955805-68ffa008-364c-418f-bdb4-9a969da9cfc7.png)


### Background
Banner across the top with large numbers (total EVs and total charging stations). United States chloropleth map showing the proportion of electric vehicles by state in 2021 (include filter to select different years). Overlay map with a bubble chart showing the number of charging stations by state. Include a line chart showing the total growth of electric vehicles from 2016-2021. Include a tooltip on hover that shows the fuel-types proportions for each state. Include a chart showing the percent change of EVs year-over-year (2016-2017); chart will include all automobile fuel types (i.e., gas, hydrogen, electric, etc.). Allow user to filter dashboard by state (all charts adjust to only show info for that state). 

#### Data Source: 
- Alternative Fuel Data Center: https://afdc.energy.gov/vehicle-registration?year=2021

#### In Progress
https://public.tableau.com/app/profile/emily4932/viz/ElectricVehicles_16817397796680/EV_State?publish=yes

### Projection 1: EV Adoption
United States chloropleth map (or individual states?) by county. Include a slider that allows user to see the change in EV population over time. Bar charts to show the breakdown of electric vehicles (fuel-type and/or make/model?)


### Projection 2: Charging Station Growth
United States chloropleth map (or individual states?) by county. Include a slider that allows user to see the change in charging station population over time. 

### Conclusion
United States map showing the counties that are projected to have enough charging stations and those that are not (two distinct colors).


### Visualization Notes
- Viridis color pallete?
- Dark background? 


=======
Tableau Visualization  
EV's per zip code and number of charging stations
Linear regression classification/ Machine Learning


## Segment One 

**The selected topic and the reasoning for that selection.**

The topic we have selected is charging station per EV car. The reason we have selected this topic is to determine if there will be enough charging stations per EV car, as the push for more EV sales continues to stop climate pollution and focus on a cleaner environment.     

**A description of the data.**

The data needed for this project includes; number of electric vehicles registered per state, number of electric vehicles registered per county, in Wisconsin, the number of charging stations per state, the number of charting stations per county, in Wisconsin, as well as summery data of population, education (bachelor’s degree % earned per year) and median income. We have sourced our data from the US department of Energy, Atlas EV Hub and the US Census Bureau. Electric vehicles have only been commercially available for a short time so most of our data on them only goes back 10 years or so. We plan to use machine learning models to make predictions out to the year 2030.  We will be useing a supervised learning, linerar regrsion model.

Inputs: 
- Registered EVs by fuel-type by State through 2016-2021
<img src="Images/ev_registration_table.png" alt="Alt text" width="600" height="450">
- Charging stations within the US
<img src="Images/charging_stations.png" alt="Alt text" width="600" height="450">

- Population of each state through 2016-2021

- Median income of each state through 2016-2021

- Education bachelor’s, degree or higher 

Output:
- Ratio of electric vehicles to charging stations by state
- Predictions on future electric vehicle adoption based on population, income and education

**The questions that the team plans to answer with the project.**

•	Are there enough charging stations per EV car?

•	Are we following the right trend? 

**What story do you want your data to tell?**

How many elective vehicles there is, how many charging stations do we have now and how many will be needed by 2030.

**Goal**

The ratio of charging stations per EV vehicle is it a good or bad ratio based on experts in the field. 

**Our dashboard display message.** 

Are we on track to accommodate EV vehicles or do we need to push for more electric chargers. 
We predict there will be X% by 2023, president wants 50%, increase incentive to buy more electric. 



