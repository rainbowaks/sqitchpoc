-- Verify sqitchpoc:users on pg

BEGIN;

-- Will throw an error if the table or any column is missing
SELECT user_id, username, email, created_at, updated_at
  FROM users
 WHERE FALSE;

ROLLBACK;