
CREATE TABLE ev_registration_gigas AS
SELECT 
    ev.state,
    ev.year,
    ev.electric_ev,
	ev.plug_in_hybrid_electric_phev,
    cs.charging_station_count,
    ni.income,
    ne.education,
    np.population
FROM ev_registration ev
LEFT JOIN (
    SELECT state, year, SUM(count) OVER (PARTITION BY state ORDER BY year) AS charging_station_count
    FROM (
        SELECT state, EXTRACT(year FROM open_date)::integer AS year, COUNT(*) AS count
        FROM charging_stations
        GROUP BY state, EXTRACT(year FROM open_date)
    ) sub_cs
) cs ON ev.state = cs.state AND ev.year = cs.year
LEFT JOIN new_income ni ON ev.state = ni.state AND ev.year = ni.year::integer
LEFT JOIN new_education ne ON ev.state = ne.state AND ev.year = ne.year::integer
LEFT JOIN new_population np ON ev.state = np.state AND ev.year = np.year::integer
ORDER BY ev.state, ev.year;



ALTER TABLE ev_registration_gigas
ADD COLUMN non_ev_total INTEGER;


UPDATE ev_registration_gigas
SET non_ev_total = er.hybrid_electric_hev + er.biodiesel + er.ethanol_flex + er.compressed_natural_gas + er.propane + er.hydrogen + er.methanol + er.gasoline + er.diesel
FROM ev_registration er
WHERE ev_registration_gigas.state = er.state AND ev_registration_gigas.year = er.year;
