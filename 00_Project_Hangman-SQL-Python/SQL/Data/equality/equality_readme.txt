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
equality
****************************************/

equality_id: unique identifier for each row of equality table

country_id: unique identifier for each country (foreign key, countries)

year: year for which the data is relevant

income_share_richest_10pro: Percentage share of income or consumption is the share that accrues to subgroups of population indicated by deciles

income_share__poorest_10pro: Percentage share of income or consumption is the share that accrues to subgroups of population indicated by deciles

inequality_index_gini: Gini index measures the extent to which the distribution of income(or, in some cases, consumption expenditure) among individuals or households within an economy deviates from a perfectly equal distribution. A gini index of 0 represent perfect equality, while an index of 100 implies perfect inequality.

poverty_below_national: Relative poverty (% below nationally defined poverty line). The percentage of the population living below the national poverty lines.

total_number_of_dollar_billionaires: Total number of billionaires in the copuntry of their citizenship, provided by Forbes.com


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