# FinalProject

## Background
- climate policy
- autonomous vehicles
- transportation infrastructure

## Analysis Overview

### Predict EV Population by County
Use a machine learning time series regression model to predict the number of electic vehicles on the road by 20XX. Predictions will be broken down by fuel-type (BEV, PHEV). 

Inputs: 
- Registered EVs by fuel-type by county
- Population by county
- Median income by county
- Age distribution by county
- Gender distribution by county
- Rural vs urban classification
- Household size by county
- Other demographic variables from census??
- State, Federal electrification policies?? (Add if we have time/reliable data; this will certainly influence EV adoption)
- Weather data???? (Perhaps we add this in if we have time; assumption that colder climates will have slower EV adoption)

Output:
- Number of electric vehicles by fuel-type by county

#### Data Sources
- Registration Data: https://www.atlasevhub.com/materials/state-ev-registration-data
- US Census Data: ?????


# Predict EV Charging Station Population by County
Use a machine learning time series regression model to predict the number of public electric vehicle charging stations by 20XX. 

Inputs: 
- Registered EVs by fuel-type by county
- Number of charging stations by type by county
- Rural vs urban classification
- Other variables from charging station dataset???

Output: 
- Number of electric vehicle charging stations by county

#### Data Sources
- Registation Data: https://www.atlasevhub.com/materials/state-ev-registration-data 
- Fuel Station Data: https://afdc.energy.gov/data_download

### Estimate Proportion of EVs to Charging Stations
Use the projections found in part 1 and part 2 to calculate the estimated proportion of electric vehicles to charging stations by county. Compare the calculated proportion to the recommended ratio found in the literature. Assign a prepared or not-prepared value to each county based the proportions. 

## Visualizations

### Background
Banner across the top with large numbers (total EVs and total charging stations). United States chloropleth map showing the number of electric vehicles by state in 2021. Overlay map with a bubble chart showing the number of charging stations by state. Include a line chart showing the total growth of electric vehicles from 2016-2021. Include a bar chart highlighting the proportion of EVs year-over-year (2016-2017); bar chart will include all automobile fuel types (i.e., gas, hydrogen, electric, etc.). Allow user to filter dashboard by state (all charts adjust to only show info for that state). 

#### Data Source: 
- Alternative Fuel Data Center: https://afdc.energy.gov/vehicle-registration?year=2021

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

