# Set connection with the database
import mysql.connector

try:
    connection = mysql.connector.connect(host='localhost',
                                         database='Hardware',
                                         user='root',
                                         password='12345678')

# Mysql code for inserting the data
    query5 = "Insert into Laptop (idl, name, model, cpu, cpunumber, display, price) VALUES (idl, 'Mac', 'Pro', 'M1', 8, '13Z', '1096');"
#connection. Code executing
    cursor = connection.cursor()
    cursor.execute(query5)
    connection.commit()
    print(cursor.rowcount, "Record inserted successfully into Laptop table")
    cursor.close()
#If error
except mysql.connector.Error as error:
    print("Failed to insert record into Laptop table {}".format(error))

#Feedback, that sqlquery was successful
finally:
    if connection.is_connected():
        connection.close()
        print("MySQL connection is closed")
