CREATE TABLE "POT" (
  "ID" BIGINT NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  "COL" INTEGER NOT NULL,
  "ROW" INTEGER NOT NULL,
  "CAPACITY" INTEGER NOT NULL,
  "NOTE" VARCHAR(255)
);

CREATE TABLE "TREE" (
  "ID" BIGINT NOT NULL PRIMARY KEY GENERATED ALWAYS AS IDENTITY,
  "POTID" BIGINT REFERENCES POT (ID),
  "NAME" VARCHAR(255) NOT NULL,
  "TREETYPE" VARCHAR(6) NOT NULL,
  "ISPROTECTED" SMALLINT NOT NULL
);