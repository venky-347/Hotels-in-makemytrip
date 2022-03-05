import mysql.connector as mysql
import xlrd
import pandas as pd
#creating Data Base
#mydb=mysql.connect(host='localhost',user='root',passwd='Cla$$ic@856')
#curs=mydb.cursor()
#curs.execute('create database sqlproject')
#Creating Tables
mydb=mysql.connect(host='localhost',user='root',passwd='Cla$$ic@856',database='sqlproject')
curs=mydb.cursor()
l=list()
data=r"C:\Users\venna\Documents\Hotel1.xls"
A=xlrd.open_workbook(data)
sheet=A.sheet_by_index(0)
sheet.cell_value(0,0)
curs.execute('create table hotel(cityid int,hotelid int primary key,hotelname varchar(75),hotel_address varchar(200),star int,Rating float(2,1),Price float(7,2))')
for row in range (1,207):
 
   l.append(tuple(sheet.row_values(row)))
q='insert into hotel(cityid,hotelid,hotelname,hotel_address,star,rating,price)values(%s,%s,%s,%s,%s,%s,%s)'
curs.executemany(q,l)

data1=r"C:\Users\venna\Documents\city.xls"
B=xlrd.open_workbook(data1)
sheet=B.sheet_by_index(0)
sheet.cell_value(0,0)
curs.execute('create table City(state_id varchar(20),city_name varchar(50),cityid int primary key)')
l2=list()
for row in range (1,10):
   l2.append(tuple(sheet.row_values(row)))
q2='insert into city(state_id,city_name,cityid)values(%s,%s,%s)'
curs.executemany(q2,l2)
data2=r"C:\Users\venna\Documents\state.xls"
C=xlrd.open_workbook(data2)
sheet=C.sheet_by_index(0)
sheet.cell_value(0,0)
curs.execute('create table state(state_name varchar(30),state_id varchar(20) primary key)')
l3=list()
for row in range (1,35):
   l3.append(tuple(sheet.row_values(row)))
q3='insert into state(state_name,state_id)values(%s,%s)'
curs.executemany(q3,l3)
data3=r"C:\Users\venna\Documents\transport.xls"
D=xlrd.open_workbook(data3)
sheet=D.sheet_by_index(0)
sheet.cell_value(0,0)
curs.execute('create table transport(transportmode_id int primary key,transport_mode_name varchar(20))')
l4=list()
for row in range (1,4):
   l4.append(tuple(sheet.row_values(row)))
q4='insert into transport(transportmode_id,transport_mode_name)values(%s,%s)'
curs.executemany(q4,l4)
data4=r"C:\Users\venna\Documents\totalhotel.xls"
E=xlrd.open_workbook(data4)
sheet=E.sheet_by_index(0)
sheet.cell_value(0,0)
curs.execute('create table hotel_main(hotelid int primary key,hotel_name varchar(100),star int,state_id varchar(20),city_id int,city_name varchar(100),rating float(2,1),hotel_address varchar(200),transport_id int,cost_per_night float(7,2))')
l5=list()
for row in range (1,207):
   l5.append(tuple(sheet.row_values(row)))
q5='insert into hotel_main(hotelid,hotel_name,star,state_id,city_id,city_name,rating,hotel_address,transport_id,cost_per_night)values(%s,%s,%s,%s,%s,%s,%s,%s,%s,%s)'
curs.executemany(q5,l5)
###index
curs.execute('create index city_index on city(state_id asc,city_name asc)') #index for city table
curs.execute('create index hotel_index on hotel(hotelname asc,star asc,rating asc,price desc)')# index for hotel table
curs.execute('create index hotelmain_index on hotel_main(hotel_name asc,star asc,city_name asc,rating asc,cost_per_night desc)')#index for hotelmain
#Views
curs.execute('create VIEW hyd_hotel AS select hotelid,hotel_name,rating,cost_per_night from hotel_main where city_name="Hyderabad"') #view for hyderabad hotels
curs.execute('select * from hotelmain')
#Getting Data
l=[]
curs.execute('select * from hotel_main where city_name="chennai"')
for i in curs:
    l.append(i)
A=pd.DataFrame(l)
print(A)
mydb.commit()
mydb.close()