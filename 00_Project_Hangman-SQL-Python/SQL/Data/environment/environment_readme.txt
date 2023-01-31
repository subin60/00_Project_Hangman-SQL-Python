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
environment
****************************************/

env_id: unique identifier for each row of environment table

country_id: unique identifier for each country (foreign key, countries)

year: year for which the data is relevant

co2_emissions_tonnes_per_person: Carbon dioxide emissions from the burning of fossil fuels (metric tonnes of C02 per person)

foss_fuel_pro: fossil fuel energy consumption (% of total)

matfootp_cap: Material footprint per capita (tonnes). This is the amount of raw materials extracted every year to meet final demand per person. It is calculated by dividing the total material footprint by total population of a country.

sdi: The Sustainable Development Index is an efficiency metric, designed to assess the ecological efficiency of nations in delivering human development. It is calculated as the quotient of two figures: (1) a “development index” based on the Human Development Index, calculated as the geometric mean of the life expectancy index, the education index, and a modified income index; and (2) an “ecological impact index” calculated as the extent to which consumption-based CO2 emissions and material footprint exceed per-capita shares of planetary boundaries. The SDI data was created to update the Human Development Index (HDI) for the ecological realities of the Anthropocene. This index gives score for each nation's human development (life expectancy, education and income) and then divides it by their ecological overshoot- which is the extent to which conumption-based CO2 emissions and material footprint exceed per capita shares of planetary boundaries ( for detailed methodolgy see https://www.sustainabledevelopmentindex.org/methods). 


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