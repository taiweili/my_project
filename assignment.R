
# correlation of population size, GDP and life expectency in different continent
gap_graphic <- qplot(lifeExp, gdpPercap, data = gapminder, size = pop, color=continent) + scale_y_log10() + scale_size_area(max_size = 20)

