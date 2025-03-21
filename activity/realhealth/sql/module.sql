-- Data Pipeline
-- Version 6

CREATE TABLE IF NOT EXISTS activity_log (
    id SERIAL PRIMARY KEY,
    event_type VARCHAR(100),
    event_data JSONB,
    created_at TIMESTAMP DEFAULT NOW(),
    updated_at TIMESTAMP DEFAULT NOW()
);

CREATE INDEX IF NOT EXISTS idx_activity_log_event_type
ON activity_log(event_type);

-- Insert sample record
INSERT INTO activity_log (event_type, event_data)
VALUES ('data-pipeline', '{"version": 6}');
