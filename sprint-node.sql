--
-- File generated with SQLiteStudio v3.2.1 on Fri Jan 24 11:03:24 2020
--
-- Text encoding used: UTF-8
--
PRAGMA foreign_keys = off;
BEGIN TRANSACTION;

-- Table: Project
CREATE TABLE Project (id INTEGER PRIMARY KEY AUTOINCREMENT, name VARCHAR (255) NOT NULL DEFAULT (NOT NULL), description VARCHAR (255), completed BOOLEAN (0) NOT NULL DEFAULT FALSE);

-- Table: Project_Resource
CREATE TABLE Project_Resource (project_id INTEGER REFERENCES Project (id) NOT NULL DEFAULT (NOT NULL), resource_id INTEGER DEFAULT (NOT NULL) REFERENCES Resource (id) NOT NULL);

-- Table: Project_Task
CREATE TABLE Project_Task (project_id INTEGER REFERENCES Project (id) NOT NULL DEFAULT (NOT NULL), task_id INTEGER REFERENCES Task (id) NOT NULL DEFAULT (NOT NULL));

-- Table: Resource
CREATE TABLE Resource (id INTEGER PRIMARY KEY AUTOINCREMENT, name VARCHAR (255) NOT NULL DEFAULT (NOT NULL), description VARCHAR (255));

-- Table: Task
CREATE TABLE Task (id INTEGER PRIMARY KEY AUTOINCREMENT, description VARCHAR (255) NOT NULL DEFAULT (NOT NULL), notes VARCHAR (255), completed BOOLEAN (0) DEFAULT FALSE NOT NULL);

COMMIT TRANSACTION;
PRAGMA foreign_keys = on;
