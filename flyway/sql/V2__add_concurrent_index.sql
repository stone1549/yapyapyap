CREATE INDEX CONCURRENTLY message_location_gix ON message USING GIST (location);
