import mysql.connector

mydb = mysql.connector.connect(
  host="127.0.0.1",
  user="root",
  password="12345678", database="Hardware"
)

print(mydb)

mycursor = mydb.cursor()

query1 = "select * from Laptop"

mycursor.execute(query1)

table = mycursor.fetchall()

print('\n Laptop:')
for row in table:
    print(row[0], end=" ")
    print(row[1], end=" ")
    print(row[2], end=" ")
    print(row[3], end=" ")
    print(row[4], end=" ")
    print(row[5], end=" ")
    print(row[6], end="\n")

query2 = "select * from Monitor"

mycursor.execute(query2)

table = mycursor.fetchall()

print('\n Monitor:')
for row in table:
    print(row[0], end=" ")
    print(row[1], end=" ")
    print(row[2], end=" ")
    print(row[3], end=" ")
    print(row[4], end="\n")

query3 = "select * from Hardware.Customer"

mycursor.execute(query3)

table = mycursor.fetchall()

print('\n Customer:')
for row in table:
    print(row[0], end=" ")
    print(row[1], end=" ")
    print(row[2], end=" ")
    print(row[3], end="\n")

#Purchase for idm (multiply amount of Monitors)
query4 = "select Monitor.name, Monitor.model, Orderm.orderidm, Monitor.price*Orderm.amount AS total from Hardware.Monitor, Hardware.Orderm where Orderm.idm = Monitor.idm;"

mycursor.execute(query4)

table = mycursor.fetchall()

print('\n Purchase for idm (multiply amount of Monitors):')
for row in table:
    print(row[0], end=" ")
    print(row[1], end=" ")
    print(row[2], end=" ")
    print(row[3], end="\n")
mydb.commit()


#Purchase for idl (multiply amount of Laptops)
query4 = "select Laptop.name, Laptop.model, Orderl.orderidl, Laptop.price*Orderl.amount AS total from Hardware.Laptop, Hardware.Orderl where Orderl.idl = Laptop.idl;"

mycursor.execute(query4)

table = mycursor.fetchall()

print('\n Purchase for idl (multiply amount of Laptops):')
for row in table:
    print(row[0], end=" ")
    print(row[1], end=" ")
    print(row[2], end=" ")
    print(row[3], end="\n")
mydb.commit()


#Idea for Mysql Database how to write the tasks in resultss.txt'"

mycursor = mydb.cursor()

mycursor.execute("select Laptop.name, Laptop.model, Orderl.orderidl, Laptop.price*Orderl.amount AS total from Hardware.Laptop, Hardware.Orderl where Orderl.idl = Laptop.idl;")

for i in mycursor:
    print(i)
    with open("resultss.txt", "a") as o:
        o.write(''.join(map(str,i))+'/n')
        o.close
mydb.commit()


mydb.close()
