# Create data for the graph.
x <- c(800, 400, 180, 80, 60)
labels <- c("Food", "Transport", "Light", "Internet", "Water")

# Plot the chart.
barplot(x, main="Expenses", names.arg = labels)
print("The total value was:")
print(sum(x))
print("The average value was:")
print(mean(x))
print("The highest value was:")
print(max(x))
print("The lowest value was:")
print(min(x))