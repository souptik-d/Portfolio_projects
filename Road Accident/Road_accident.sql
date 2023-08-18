select * from road_accident;

--- Current year Casualties(2022)
select sum(number_of_casualties) as CY_casualties
from road_accident
where year(accident_date) = '2022';

--- Current year Casualties(2022) for road surface conditions = dry
select sum(number_of_casualties) as CY_casualties
from road_accident
where year(accident_date) = '2022' and road_surface_conditions='Dry';

--- Current year Casualties(2022)
select count(accident_index) as CY_accident
from road_accident
where year(accident_date) = '2022';

--- Current year Fatal Casualties(2022)
select sum(number_of_casualties) as CY_Fatal_casualties
from road_accident
where year(accident_date) = '2022' and accident_severity = 'Fatal';

--- Causalties by vehicle Type
select
case when vehicle_type='Agricultural vehicle' then 'Agriculture Vehicle'
	when vehicle_type in ('Motorcycle 125cc and under','Motorcycle over 500cc','Motorcycle over 125cc and up to 500cc','Motorcycle 50cc and under','Pedal cycle') then 'Bike'
	when vehicle_type in ('Bus or coach (17 or more pass seats)','Minibus (8 - 16 passenger seats)') then 'Bus'
	when vehicle_type in ('Car','Taxi/Private hire car') then 'Car'
	when vehicle_type in ('Goods 7.5 tonnes mgw and over','Goods over 3.5t. and under 7.5t','Van / Goods 3.5 tonnes mgw or under') then 'Van'
else 'Other' end as Vehicle_Group,
sum(number_of_casualties) as CY_casualties
from road_accident
where year(accident_date) = '2022'
group by case when vehicle_type='Agricultural vehicle' then 'Agriculture Vehicle'
	when vehicle_type in ('Motorcycle 125cc and under','Motorcycle over 500cc','Motorcycle over 125cc and up to 500cc','Motorcycle 50cc and under','Pedal cycle') then 'Bike'
	when vehicle_type in ('Bus or coach (17 or more pass seats)','Minibus (8 - 16 passenger seats)') then 'Bus'
	when vehicle_type in ('Car','Taxi/Private hire car') then 'Car'
	when vehicle_type in ('Goods 7.5 tonnes mgw and over','Goods over 3.5t. and under 7.5t','Van / Goods 3.5 tonnes mgw or under') then 'Van'
else 'Other' end;

--- Casualties by month for 2022
select DATENAME(month, accident_date) as month_name, sum(number_of_casualties) as total_CY_casualties
from road_accident
group by DATENAME(month, accident_date);

--- Cuasualties by road_type
select road_type, sum(number_of_casualties) as CY_casualties
from road_accident
where year(accident_date) = '2022'
group by road_type;

--- Causalties by urban/rural area
select urban_or_rural_area,  cast(100.0*sum(number_of_casualties)/(select sum(number_of_casualties)
from road_accident where year(accident_date)='2022') as decimal(10,2)) as PCT
from road_accident
where year(accident_date) = '2022'
group by urban_or_rural_area;

--- Top 10 location as per total casualty
select top 10 local_authority, sum(number_of_casualties) as total_casualties
from road_accident
group by local_authority
order by total_casualties desc;