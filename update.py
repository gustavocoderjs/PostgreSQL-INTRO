
import psycopg2

conn = psycopg2.connect(host="localhost", dbname= "curso-psql", 
                        user="postgres", password="1234", 
                        port=5432)
cur = conn.cursor()


cur.execute(""" UPDATE person 
                SET name = 'Pedro Henrique Costa', age = 16 
                WHERE id = 5 """)

conn.commit()
print("Dados inseridos com sucesso!")

cur.close()
conn.close()

