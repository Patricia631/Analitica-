library(gapminder)
library(dplyr)

gapminder %>% 
    filter(year == 2007) %>% 
    summarize(meanLifeExp = mean(lifeExp), totalPop = sum(as.numeric(pop)))

gapminder %>% 
    summarize(medianLifeExp = median(lifeExp))

gapminder %>% 
    filter(year == 1957) %>% 
    summarize(medianLifeExp = median(lifeExp))

gapminder %>% 
    filter(year == 1957) %>% 
    summarize(medianLifeExp = median(lifeExp), maxGDP = max(gdpPercap))

gapminder %>% 
    group_by(year) %>% 
    summarize(meanLifeExp = mean(lifeExp), totalPop = sum(as.numeric(pop)))

gapminder %>% 
    group_by(year, continent) %>% 
    summarize(meanLifeExp = mean(lifeExp), totalPop = sum(as.numeric(pop)))

gapminder %>% 
    group_by(year) %>% 
    summarize(medianLifeExp = median(lifeExp), maxGDP = max(gdpPercap))

gapminder %>% 
    group_by(continent) %>% 
    summarize(medianLifeExp = median(lifeExp), maxGDP = max(gdpPercap))

gapminder %>% 
    group_by(year, continent) %>% 
    summarize(medianLifeExp = median(lifeExp), maxGDP = max(gdpPercap))

