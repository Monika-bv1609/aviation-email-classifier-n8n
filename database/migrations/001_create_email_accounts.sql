-- Migration: 001_create_email_accounts.sql
-- Description: Creates the email_accounts table.

CREATE TABLE email_accounts (
    id SERIAL PRIMARY KEY,

    account_name VARCHAR(100) NOT NULL,
    email_address VARCHAR(255) NOT NULL UNIQUE,

    provider VARCHAR(50) NOT NULL,

    is_active BOOLEAN NOT NULL DEFAULT TRUE,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);