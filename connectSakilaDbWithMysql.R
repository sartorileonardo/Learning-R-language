#Install lib for mysql
install.packages("RMySQL")
library(RMySQL)

# Create a connection Object to MySQL database.
# We will connect to the sampel database named "sakila" that comes with MySql installation.
mysqlconnection = dbConnect(MySQL(), user = 'root', password = 'root', dbname = 'sakila',
                            host = 'localhost')

# List the tables available in this database.
dbListTables(mysqlconnection)

########################### Querying the Tables ########################### 
# Query the "actor" tables to get all the rows.
result = dbSendQuery(mysqlconnection, "select * from actor")

# Store the result in a R data frame object. n = 5 is used to fetch first 5 rows.
data.frame = fetch(result, n = 5)
print(data.frame)
########################### Query with Filter Clause ######################
result = dbSendQuery(mysqlconnection, "select * from actor where last_name = 'TORN'")

# Fetch all the records(with n = -1) and store it as a data frame.
data = fetch(result, n = -1)
print(data)

########################### Updating Rows in the Tables ###################

dbSendQuery(mysqlconnection, "update actor set first_name = 'DANIEL' where actor_id = 18")

########################### Inserting Data into the Tables ###################
dbSendQuery(mysqlconnection,
            "INSERT INTO `sakila`.`actor` (`first_name`, `last_name`, `last_update`) VALUES ('LEONARDO', 'SARTORI', '2006-02-15 04:34:33');"
)

