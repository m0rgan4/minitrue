BEGIN TRANSACTION;
DROP TABLE IF EXISTS "Hosts";
CREATE TABLE IF NOT EXISTS "Hosts" (
	"id"	INTEGER NOT NULL PRIMARY KEY AUTOINCREMENT UNIQUE,
	"ip"	TEXT NOT NULL UNIQUE,
	"mac"	TEXT NOT NULL UNIQUE,
	"active"	INTEGER NOT NULL DEFAULT 0,
	"vendor"	TEXT NOT NULL,
	"description"	TEXT,
	"date"	TEXT NOT NULL,
	"network"	TEXT NOT NULL
);
COMMIT;