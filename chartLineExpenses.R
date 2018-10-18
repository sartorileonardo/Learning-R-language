# Create the integer vector
expenses<-as.integer()

#Received the values of months costs
expenses <- c(1200, 1250, 1275, 1400, 1390, 1390, 1395, 1400, 1405, 1410, 1415, 1600)

#Create the line graphic
plot(expenses,type = "o", col = "blue", xlab = "Month", ylab = "Value (Cost)",
     main = "Expenses")

