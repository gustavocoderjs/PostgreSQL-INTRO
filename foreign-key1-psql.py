

import psycopg2

conn = psycopg2.connect(host="localhost", dbname= "curso-psql", 
                        user="postgres", password="1234", 
                        port=5432)

cur = conn.cursor()

cur.execute(""" CREATE TABLE departamentos (
    id SERIAL PRIMARY KEY,
    nome VARCHAR(255) NOT NULL);
""")
            
conn.commit()
cur.close()
conn.close()

