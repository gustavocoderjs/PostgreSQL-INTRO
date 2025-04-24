
import psycopg2

conn = psycopg2.connect(host="localhost", dbname= "curso-psql", 
                        user="postgres", password="1234", 
                        port=5432)

cur = conn.cursor()

cur.execute(""" DELETE FROM person 
                WHERE id = 10;
""")
            
conn.commit()
cur.close()
conn.close()

