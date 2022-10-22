SELECT R.rental_id, R.customer_id, C.first_name, C.last_name, A.address, A.latitude, A.Longitude, count(*) as count
FROM dataengineer.rental R
JOIN dataengineer.customer C ON R.customer_id = C.customer_id
JOIN dataengineer.address_df A ON C.address_id = A.address_id
GROUP BY R.customer_id