-- This is the schema definition for the friendship table (Facebook platform)
-- Bidirectional friend graph with request -> accept handshake.
-- status: 'pending' (requester -> addressee) or 'accepted' (mutual friends)
CREATE TABLE friendship (
    friendship_id INTEGER PRIMARY KEY AUTOINCREMENT,
    requester_id INTEGER,
    addressee_id INTEGER,
    status TEXT DEFAULT 'pending',  -- pending | accepted
    created_at DATETIME,
    accepted_at DATETIME,           -- NULL until accepted
    FOREIGN KEY(requester_id) REFERENCES user(user_id),
    FOREIGN KEY(addressee_id) REFERENCES user(user_id)
);
