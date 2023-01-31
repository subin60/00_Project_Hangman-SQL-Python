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
education
****************************************/

ed_id: unique identifier for each row of education table

country_id: unique identifier for each country (foreign key, countries)

year: year for which the data is relevant

education_gender_ration: ratio girls/boys in school, primary and secondary education (%)

compulsory_education_duration_years: Compulsory education, duration (years)

expenditure_primary: Government expenditure per student as % of GDP per capita

expenditure_secondary: Government expenditure per student as % of GDP per capita

expenditure_tertiary: Government expenditure per student as % of GDP per capita


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