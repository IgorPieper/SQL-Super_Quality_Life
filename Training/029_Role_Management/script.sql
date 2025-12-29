-- Creating role
CREATE ROLE super_role WITH LOGIN ENCRYPTED PASSWORD 'super_password'


-- Changing role name
ALTER ROLE super_role RENAME TO super_user;


-- Changing password
ALTER ROLE super_user PASSWORD 'newpass';


-- Taking ability to log in
ALTER ROLE super_user NOLOGIN;


-- Giving Superuser title
ALTER ROLE super_user SUPERUSER;

-- Taking Superuser title
ALTER ROLE super_user NOSUPERUSER;


-- Giving role to role
GRANT admin_role TO super_user;

-- Taking role from role
REVOKE admin_role FROM super_user;


-- Delete role
DROP ROLE super_user;
