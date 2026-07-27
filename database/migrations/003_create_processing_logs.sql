-- Migration: 003_create_processing_logs.sql
-- Description: Creates the processing_logs table.

CREATE TABLE processing_logs (
    id SERIAL PRIMARY KEY,

    email_id INTEGER NOT NULL REFERENCES emails(id) ON DELETE CASCADE,

    workflow_step VARCHAR(100) NOT NULL,

    status VARCHAR(20) NOT NULL,

    message TEXT,

    created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);