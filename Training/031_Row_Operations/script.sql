-- Adding Row
INSERT INTO student (
  first_name,
  last_name,
  email,
  date_of_birth
)
VALUES (
  'Mo',
  'Binni',
  'mo@binni.io',
  '1992-11-13'::DATE
);

-- Updating Row
UPDATE student
SET first_name = 'Magda'
WHERE email = 'mo@binni.io';

-- Deleting Row
DELETE FROM student
WHERE email = 'mo@binni.io';
