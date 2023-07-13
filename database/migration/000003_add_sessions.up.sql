CREATE TABLE "sessions"(
    "id" uuid PRIMARY KEY,
    "username" VARCHAR NOT NULL,
    "refresh_token" VARCHAR NOT NULL,
    "user_agent" VARCHAR NOT NULL,
    "client_ip" VARCHAR NOT NULL,
    "is_blocked" BOOLEAN NOT NULL DEFAULT FALSE,
    "expires_at" TIMESTAMP NOT NULL,
    "created_at" TIMESTAMP NOT NULL DEFAULT (now())
); 

ALTER TABLE "sessions" ADD FOREIGN KEY ("username") REFERENCES "users" ("username") ON DELETE CASCADE ON UPDATE CASCADE;