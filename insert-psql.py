import psycopg2

conn = psycopg2.connect(
    host="localhost",
    dbname="curso-psql",
    user="postgres",
    password="1234",
    port=5432
)

cur = conn.cursor()

# Inserindo dados lógicos na tabela 'person'
data_to_insert = [
    (1, "João Silva", 30, 'M'),
    (2, "Maria Souza", 25, 'F'),
    (3, "Carlos Oliveira", 40, 'M'),
    (4, "Ana Santos", 22, 'F'),
    (5, "Pedro Costa", 15, 'M'),
    (6, "Luiza Pereira", 33, 'F'),
    (7, "Rafaela Almeida", 28, 'F'),
    (8, "Lucas Mendes", 50, 'M'),
    (9, "Fernanda Lima", 19, 'F'),
    (10, "Bruno Rocha", 45, 'M')
]

# Executa a inserção para cada registro
for record in data_to_insert:
    cur.execute(
        "INSERT INTO person (id, name, age, gender) VALUES (%s, %s, %s, %s)",
        record
    )

conn.commit()
print("Dados inseridos com sucesso!")

cur.close()
conn.close()