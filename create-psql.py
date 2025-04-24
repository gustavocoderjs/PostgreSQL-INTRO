import psycopg2

conn = psycopg2.connect(host="localhost", dbname= "curso-psql", 
                        user="postgres", password="1234", 
                        port=5432)

cur = conn.cursor()

cur.execute("""CREATE TABLE IF NOT EXISTS person(
    id INT PRIMARY KEY, 
    name VARCHAR (255),
    age INT,
    gender CHAR
""")
            
conn.commit()
cur.close()
conn.close()

