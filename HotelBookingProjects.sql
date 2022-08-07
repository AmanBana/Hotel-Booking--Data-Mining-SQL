
--The month in which most tourist has not canceled booking
select arrival_date_month, count(arrival_date_month) as no_of_times_hotel_booked
from Sheet1$
where is_canceled=0
group by arrival_date_month
order by count(arrival_date_month) desc
--hence May is month in which most tourist has not canceled booking


--month in which most canceled took place
select arrival_date_month, count(is_canceled)_no_times_hotel_canceled
from Sheet1$
where is_canceled=1
group by arrival_date_month 
order by count(is_canceled) desc
--hence May is month in which most hotel bookig canceled took place


--countries with most tourist come from
select country, count(country) as most_no_of_visit
from Sheet1$
group by country
having count(country)>1
order by count(country) desc
--hence we come to know Portugal (PRT) is country from where most tourist come



--month in which most canceled took place
select arrival_date_month, count(is_canceled)_no_times_hotel_canceled
from Sheet1$
where is_canceled=1
group by arrival_date_month 
order by count(is_canceled) desc
--hence May is month in which most hotel bookig canceled took place



---country with most no tourist visiting repeatidly
select country, count(is_repeated_guest) as repeated_visit
from Sheet1$
group by country
order by repeated_visit desc
--Hence PRT(Portugal) is country from which most tourist visited repeatidly



--from result we can cocnlude hotel H2 has least chance of getting canceled
select hotel, count(is_canceled) as booking_not_canceled
from Sheet1$
where is_canceled=0
group by hotel




--so from result we can conclude that Trasient customer type has highest success rate in booking confirmed
select customer_type, count(is_canceled) as no_times_booking_not_canceled
from Sheet1$
where is_canceled=0
group by customer_type


select customer_type,stays_in_week_nights,
CASE
When stays_in_week_nights>10 Then 'Perfect Customer'
Else 'Nice Customer'
End As Customer_Description
from Sheet1$
group by customer_type, stays_in_week_nights
order by customer_type