SELECT
    a."Country",
    COUNT(*) AS total_arrivals
FROM fact_flights f
LEFT JOIN dim_airport a
    ON f."Arrival_Airport" = a."Code"
GROUP BY a."Country"
ORDER BY total_arrivals DESC;



SELECT
    f."Arrival_Airport",
    a."Airport",
    a."Country",
    COUNT(*) AS total_flights
FROM fact_flights f
JOIN dim_airport a
    ON f."Arrival_Airport" = a."Code"
GROUP BY
    f."Arrival_Airport",
    a."Airport",
    a."Country"
ORDER BY total_flights DESC
LIMIT 10;

SELECT
    "Airline",
    
	ROUND(AVG("Price_USD")::numeric, 2) AS avg_ticket_price
FROM fact_flights
GROUP BY "Airline"
ORDER BY avg_ticket_price DESC;

SELECT
    v."target" AS destination_country,
    ROUND(AVG(v."tourist_visa")::numeric, 2) AS avg_tourist_visa,
    ROUND(AVG(v."business_visa")::numeric, 2) AS avg_business_visa
FROM dim_visa v
WHERE v."target" IS NOT NULL
  AND v."tourist_visa" IS NOT NULL
  AND v."business_visa" IS NOT NULL
GROUP BY v."target"
ORDER BY avg_tourist_visa DESC
LIMIT 10;

SELECT
    f."Airline",
    f."Departure_Airport",
    ROUND(AVG(f."Delay_Minutes")::numeric, 2) AS avg_delay
FROM fact_flights f
GROUP BY f."Airline", f."Departure_Airport"
ORDER BY avg_delay DESC
LIMIT 20;

SELECT
    f."Frequent_Flyer_Status",
    COUNT(*) AS total_flights,
    ROUND(AVG(f."Price_USD")::numeric, 2) AS avg_ticket_price,
    f."Seat_Class"
FROM fact_flights f
WHERE f."Frequent_Flyer_Status" IS NOT NULL
  AND f."Price_USD" IS NOT NULL
  AND f."Seat_Class" IS NOT NULL
GROUP BY f."Frequent_Flyer_Status", f."Seat_Class"
ORDER BY total_flights DESC;

SELECT
    a."Country",
    f."Travel_Purpose",
    COUNT(*) AS total_passengers
FROM fact_flights f
JOIN dim_airport a
    ON f."Arrival_Airport" = a."Code"
GROUP BY a."Country", f."Travel_Purpose"
ORDER BY a."Country", total_passengers DESC;

-- SELECT DISTINCT 
--     a."Country",
--     c.continent, c.country
-- FROM dim_airport a
-- JOIN dim_country_continent c
--     ON a."Country" = c.country;

-- SELECT DISTINCT 
--     a."Country" AS airport_country,
--     c.country AS continent_country,
--     c.continent
-- FROM dim_airport a
-- JOIN dim_country_continent c
--     ON SPLIT_PART(a."Country", ' ', 1) = SPLIT_PART(c.country, ' ', 1);


SELECT
    f."Seat_Class",
    f."Travel_Purpose",
    ROUND(AVG(f."Flight_Satisfaction_Score")::numeric, 2) AS avg_satisfaction,
    ROUND(AVG(f."Delay_Minutes")::numeric, 2) AS avg_delay,
    ROUND(AVG(b."Estimated_Travel_Budget_USD")::numeric, 2) AS avg_estimated_budget
FROM fact_flights f
JOIN dim_passenger_budget b
    ON f."Passenger_ID" = b."Passenger_ID"
GROUP BY f."Seat_Class", f."Travel_Purpose"
ORDER BY avg_satisfaction DESC;

SELECT
    b."Income_Level",
    f."Travel_Purpose",
    a."Country" AS destination_country,
    ROUND(AVG(f."Booking_Days_In_Advance")::numeric, 2) AS avg_booking_days
FROM fact_flights f
JOIN dim_passenger_budget b
    ON f."Passenger_ID" = b."Passenger_ID"
JOIN dim_airport a
    ON f."Arrival_Airport" = a."Code"
GROUP BY b."Income_Level", f."Travel_Purpose", a."Country"
ORDER BY avg_booking_days DESC;


