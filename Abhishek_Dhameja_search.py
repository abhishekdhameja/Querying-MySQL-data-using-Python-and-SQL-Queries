import sys
import mysql.connector
conn = mysql.connector.connect(user='inf551', password='inf551',host='127.0.0.1',database='sakila')
curr = conn.cursor()
category=sys.argv[1]
category=category.lower()
query = "select c.name as name,count(f.title) as count from sakila.film f, sakila.film_category fc, sakila.category c where f.film_id=fc.film_id and fc.category_id=c.category_id group by name;"
curr.execute(query)
result=curr.fetchall()
counts={}
for row in result:
	counts[row[0].lower()]=row[1]
if category in counts.keys():
	print counts[category]
else:
	print 'No such category found'
curr.close()
conn.close()