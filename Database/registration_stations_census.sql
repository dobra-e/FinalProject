CREATE TABLE registration_stations_census AS
SELECT reg.*,
	cs.charging_station_count, 
	ni.income, ne.education, 
	np.population 
FROM registration reg LEFT JOIN 
(SELECT state, EXTRACT(year FROM open_date)::integer AS year, 
COUNT(*) AS charging_station_count 
 FROM charging_stations 
GROUP BY state, EXTRACT(year FROM open_date) ) cs ON reg.state = cs.state AND reg.year = cs.year 
LEFT JOIN new_income ni ON reg.state = ni.state AND reg.year = ni.year::integer 
LEFT JOIN new_education ne ON reg.state = ne.state AND reg.year = ne.year::integer 
LEFT JOIN new_population np ON reg.state = np.state AND reg.year = np.year::integer 
ORDER BY reg.state, reg.year;

SELECT * 
FROM registration_stations_census