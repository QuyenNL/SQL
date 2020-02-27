-- How many entries in the database are from Africa?
select count(*) from countries where continent = 'Africa';


-- What was the total population of Oceania in 2005?
select sum(population_years.population) from population_years join countries on population_years.country_id = countries.id 
where population_years.year = 2005 and countries.continent = 'Oceania';


-- What is the average population of countries in South America in 2003?
select avg(population_years.population) from 
population_years join countries on population_years.country_id = countries.id 
where population_years.year = 2003 and countries.continent = 'South America';


-- What country had the smallest population in 2007?
select countries.name, min(population_years.population) from 
population_years join countries on population_years.country_id = countries.id 
where population_years.year = 2007;


-- What is the average population of Poland during the time period covered by this dataset?
select avg(population_years.population) from 
population_years join countries on population_years.country_id = countries.id 
where countries.name = 'Poland';


-- How many countries have the word "The" in their name?
select count(*) from countries where name like '%The%';


-- What was the total population of each continent in 2010?
select countries.continent, sum(population_years.population) from 
population_years join countries on population_years.country_id = countries.id 
group by countries.continent;

