# Create data for the graph.
x <- c(400, 250.50, 45.35, 50, 80)
labels <- c("Food", "Transport", "Water", "Light", "Internet")

# Plot the chart.
pie(x,labels, main="Expenses")
print("The total value was:")
print(sum(x))
print("The average value was:")
print(mean(x))
print("The highest value was:")
print(max(x))
print("The lowest value was:")
print(min(x))
