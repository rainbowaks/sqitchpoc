-- Deploy sqitchpoc:users to pg

BEGIN;

CREATE TABLE users (
    user_id      BIGSERIAL PRIMARY KEY,
    username     VARCHAR(50)  NOT NULL UNIQUE,
    email        VARCHAR(255) NOT NULL UNIQUE,
    created_at   TIMESTAMPTZ  NOT NULL DEFAULT NOW(),
    updated_at   TIMESTAMPTZ  NOT NULL DEFAULT NOW()
);

COMMENT ON TABLE  users            IS 'Application users';
COMMENT ON COLUMN users.user_id    IS 'Surrogate primary key';
COMMENT ON COLUMN users.username   IS 'Unique login name';
COMMENT ON COLUMN users.email      IS 'Unique contact email';

COMMIT;