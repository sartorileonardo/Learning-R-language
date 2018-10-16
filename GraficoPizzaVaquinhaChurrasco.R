# Create data for the graph.
x <- c(15.50, 8.15, 15.15, 10, 5.85)
labels <- c("Joao", "Maria", "Pedro", "Jose", "Sonia")

# Plot the chart.
pie(sort(x),labels, main="Vaquinha para o churrasco")
print("O valor total aquirirido para o churrasco foi:")
print(sum(x))
print("O valor médio aquirirido para o churrasco foi:")
print(mean(x))
print("O maior valor de contribuição para o churrasco foi:")
print(max(x))
print("O menor valor de contribuição para o churrasco foi:")
print(min(x))

