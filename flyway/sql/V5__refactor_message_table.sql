ALTER TABLE message ADD COLUMN sent_at TIMESTAMP WITHOUT TIME ZONE NOT NULL default now();
ALTER TABLE message ADD COLUMN received_at TIMESTAMP WITHOUT TIME ZONE NOT NULL default now();