-- Migration: 002_create_emails.sql
-- Description: Creates the emails table.

CREATE TABLE emails (
    id SERIAL PRIMARY KEY,

    account_id INTEGER NOT NULL REFERENCES email_accounts(id),

    message_id VARCHAR(255) NOT NULL UNIQUE,

    sender_email VARCHAR(255) NOT NULL,

    subject TEXT,

    snippet TEXT,

    category VARCHAR(100),

    confidence DECIMAL(5,2),

    processing_status VARCHAR(20) NOT NULL DEFAULT 'PENDING',

    ai_model VARCHAR(100),

    processed_at TIMESTAMP,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,

    updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);