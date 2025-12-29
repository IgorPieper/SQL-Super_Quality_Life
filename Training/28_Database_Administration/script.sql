-- Creating database
CREATE DATABASE courses

-- Optional
[ [ WITH ] [ OWNER [=] user_name ] -- Who is the owner (default is you)
  [ TEMPLATE [=] TEMPLATE ] -- What template we use
  [ ENCODING [=] ENCODING ] -- Most Likely UTF8
  [ LC_COLLATE [=] lc_collate ] -- Sorting type for example: pl_PL.UTF-8, en_US.UTF-8
  [ LC_CTYPE [=] lc_ctype ] -- How we will work with Uppercases
  [ TABLESPACE [=] TABLESPACE ] -- Where are the data
  [ CONNECTION LIMIT [=] connlimit ] -- How many people can use it in the same time
];


-- Name changing
ALTER DATABASE courses RENAME TO best_courses;


-- Deleting database
DROP DATABASE courses;
