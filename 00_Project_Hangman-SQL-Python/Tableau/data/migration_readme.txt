Key assumption about the data: national borders are to be presumed to be a constant in their current state. The data does not vary with historic fluctuations of borders.


/****************************************
continents
****************************************/

continent_id: unique identifier for each continent

continent: name of the continent


/****************************************
countries
****************************************/

country_id: unique identifier for each country

country: name of country

area: size of the country in square kilometers

national_day: day of national celebration

country_code2: ISO 3166-1 alpha-2 country code

country_code3: ISO 3166-1 alpha-3 country code

region_id: unique identifier for the region (foreign key, regions)


/****************************************
migration
****************************************/

mig_id: unique identifier for each row of migration table

country_id: unique identifier for each country (foreign key, countries)

year: year for which the data is relevant

net_migration: The net migration rate is the difference between the number of immigrants (people coming into an area) and the number of emigrants (people leaving an area) throughout the year.

refugee_pop_country_of_asylum: The number of refugees that applied for asylum in the country throughout the year

refugee_pop_country_of_origin: The number of refugees that left the country throughout the year

international_migrant_stock_total: International migrant stock is the number of people born in a country other than that in which they live. As a total number.


/****************************************
gdp
****************************************/

gdp_id: unique identifier for each row of gdp table

country_id: unique identifier for each country (foreign key, countries)

year: year for which the data is relevant

gdp: gross domestic product. The total monetary or market value of all the finished goods and services produced within a country's borders


/****************************************
population
****************************************/

pop_id: unique identifier for each row of population table

country_id: unique identifier for each country (foreign key, countries)

year: year for which the data is relevant

population: the number of people, or inhabitants, in a country


/****************************************
regions
****************************************/

region_id: unique identifier for each region

region: name of the region

continent_id: unique identifier for each continent (foreign key, continents)