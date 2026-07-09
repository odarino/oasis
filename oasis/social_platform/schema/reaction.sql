-- This is the schema definition for the reaction table (Facebook platform)
-- Typed reactions on posts: like, love, haha, wow, sad, angry.
-- One row per (user_id, post_id); a user's reaction on a post is unique and
-- may be changed by updating reaction_type.
CREATE TABLE reaction (
    reaction_id INTEGER PRIMARY KEY AUTOINCREMENT,
    user_id INTEGER,
    post_id INTEGER,
    reaction_type TEXT DEFAULT 'like',  -- like|love|haha|wow|sad|angry
    created_at DATETIME,
    FOREIGN KEY(user_id) REFERENCES user(user_id),
    FOREIGN KEY(post_id) REFERENCES post(post_id)
);
