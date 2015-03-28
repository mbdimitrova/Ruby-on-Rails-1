require 'sqlite3'

db = SQLite3::Database.new "database/posts.db"

db.execute <<SQL
  CREATE TABLE IF NOT EXISTS posts
  (
    id INTEGER PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    text VARCHAR(255) NOT NULL,
    tags VARCHAR(255)
  );
SQL

db.execute <<SQL
  CREATE TABLE IF NOT EXISTS posts
  (
    tag_id INTEGER PRIMARY KEY,
    tag VARCHAR(255) NOT NULL
  );
SQL
