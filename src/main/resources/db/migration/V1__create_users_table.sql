-- V1: Create users table
-- Flyway naming convention: V{number}__{description}.sql
-- The double underscore (__) is REQUIRED. Flyway won't recognize the file without it.
-- NEVER edit a migration after it's been run. Always create a new one.

CREATE TABLE users (
    id              BIGSERIAL PRIMARY KEY,
    email           VARCHAR(255) NOT NULL UNIQUE,
    password_hash   VARCHAR(255) NOT NULL,
    full_name       VARCHAR(100) NOT NULL,
    role            VARCHAR(20)  NOT NULL DEFAULT 'USER',
    created_at      TIMESTAMP    NOT NULL DEFAULT NOW(),
    updated_at      TIMESTAMP    NOT NULL DEFAULT NOW()
);

CREATE INDEX idx_users_email ON users(email);