select location, date, total_cases, new_cases, total_deaths, population 
from CovidDeaths
order by 1,2

select *
from CovidDeaths

select location, date, total_cases, total_deaths, (total_deaths/total_cases)*100 as DeathPerc
from CovidDeaths
where location = 'India'
order by 1,2

select location, date, population, total_cases, (total_cases/population)*100 as DeathPerc
from CovidDeaths
where location = 'India'
order by 1,2

select location, population, max(total_cases), max(total_cases/population)*100 as infection_Perc
from CovidDeaths
group by location, population
order by 4 desc

select location, max(cast(total_deaths as int)) as Total_DeathCount
from CovidDeaths
where continent is not null
group by location
order by 2 desc


select continent, max(cast(total_deaths as int)) as Total_DeathCount
from CovidDeaths
where continent is not null
group by continent
order by 2 desc

select date, sum(new_cases), sum(cast(new_deaths as int)),
sum(cast(new_deaths as int))/sum(new_cases) * 100 as Death_Percent
from CovidDeaths 
where continent is not null
group by date 
order by 1,2

