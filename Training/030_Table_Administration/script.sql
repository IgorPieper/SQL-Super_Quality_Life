-- Creating table
CREATE TABLE student(
student_id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
full_name VARCHAR(255) NOT NULL,
date_of_birth DATE NOT NULL,
email TEXT UNIQUE,
mark_id INT REFERENCES marks(id) -- Foreign Key
);

-- Instaling uuid_generate_v4()
-- create extenion if not exists "uuid-ossp";

-- Creating Temporary Tables - They are delete after the end of a session
CREATE TEMPORARY TABLE student ();

-- Creating custom domain -> Data Type with Limits
CREATE DOMAIN Rating SMALLINT CHECK (VALUE > 0 AND VALUE <= 5);

-- Creating custom data type
CREATE TYPE feedback(
student_id UUID,
rating SMALLINT
);

-- Add column to table
ALTER TABLE student
ADD COLUMN age INT;

-- Delete column
ALTER TABLE student
DROP COLUMN age;

-- Changing type of column
ALTER TABLE users
ALTER COLUMN email TYPE VARCHAR(320);

-- Changing column name
ALTER TABLE student
RENAME COLUMN date_of_birth TO birth_date;

-- Adding Foreign Key
ALTER TABLE student
ADD CONSTRAINT student_mark_fk
FOREIGN KEY (mark_id)
REFERENCES marks(id);


-- Delete everything in a table
TRUNCATE TABLE student;

-- Changind Table name
ALTER TABLE student
RENAME TO super_student;

-- Deleting Table
DROP TABLE student;
