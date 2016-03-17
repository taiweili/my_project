#require package: ggplot2, devtool, rio

library(ggplot2)
library("devtools")
install_github("leeper/rio")
library("rio")

#get the gapminder profile: import is a function in package of need devtool and rio 
gapminder <- import("https://raw.githubusercontent.com/resbaz/r-novice-gapminder-files/master/data/gapminder-FiveYearData.csv")

# correlation of population size, GDP and life expectency in different continent
gap_graphic <- qplot(lifeExp, gdpPercap, data = gapminder, size = pop, color=continent) + scale_y_log10() +facet_wrap( ~ continent)+ scale_size_area(max_size = 8)


gap_graphic