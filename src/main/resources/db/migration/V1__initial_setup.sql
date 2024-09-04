CREATE TABLE IF NOT EXISTS `Student` (
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar(20),
    email varchar(50),
    date_of_birth timestamp
    created_at timestamp

) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

CREATE TABLE IF NOT EXISTS `Class` (
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar(20),
    class_code varchar(50),
    created_at timestamp

) ENGINE=InnoDB DEFAULT CHARSET=UTF8;

CREATE TABLE IF NOT EXISTS `Family` (
    id int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    name varchar(20),
    relationship enum('ayah', 'ibu', 'adik', 'kakak'),
    student_id REFERENCES Student(id)
    created_at timestamp

) ENGINE=InnoDB DEFAULT CHARSET=UTF8;