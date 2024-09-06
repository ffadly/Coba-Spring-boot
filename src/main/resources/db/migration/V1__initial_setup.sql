CREATE TABLE IF NOT EXISTS Student (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20),
    email VARCHAR(50),
    date_of_birth TIMESTAMP,
    created_at TIMESTAMP
);

CREATE TABLE IF NOT EXISTS Class (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20),
    class_code VARCHAR(50),
    created_at TIMESTAMP
);

CREATE TABLE IF NOT EXISTS Family (
    id SERIAL PRIMARY KEY,
    name VARCHAR(20),
    relationship VARCHAR(5) CHECK (relationship IN ('ayah', 'ibu', 'adik', 'kakak')),
    student_id INTEGER REFERENCES Student(id),
    created_at TIMESTAMP
);
