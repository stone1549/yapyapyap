CREATE TYPE gender AS ENUM ('male', 'female', 'non-binary', 'other');
CREATE TABLE user_profile (
    user_id text NOT NULL REFERENCES login(id),
    gender gender NOT NULL DEFAULT 'other',
    age int NOT NULL DEFAULT -1,
    topics text[],
    PRIMARY KEY (user_id)
    );
CREATE INDEX topics_idx ON user_profile USING GIN (topics);
