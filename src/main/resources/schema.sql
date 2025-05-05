-- Doctor tablosu oluşturma
CREATE TABLE IF NOT EXISTS doctor (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255),
    surname VARCHAR(255),
    proficiency VARCHAR(255)
);

-- Nurse tablosu oluşturma
CREATE TABLE IF NOT EXISTS nurse (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255),
    surname VARCHAR(255),
    proficiency VARCHAR(255)
);

-- Patient tablosu oluşturma
CREATE TABLE IF NOT EXISTS patient (
    id BIGSERIAL PRIMARY KEY,
    name VARCHAR(255),
    surname VARCHAR(255),
    email VARCHAR(255),
    complaint TEXT
);

-- Surgery tablosu oluşturma (Foreign Key ile)
CREATE TABLE IF NOT EXISTS surgery (
    id BIGSERIAL PRIMARY KEY,
    nurse_id BIGINT REFERENCES nurse(id),
    patient_id BIGINT REFERENCES patient(id),
    doctor_id BIGINT REFERENCES doctor(id)
);

-- Operation tablosu oluşturma (Foreign Key ile)
CREATE TABLE IF NOT EXISTS operation (
    id BIGSERIAL PRIMARY KEY,
    patient_id BIGINT REFERENCES patient(id),
    doctor_id BIGINT REFERENCES doctor(id)
); 