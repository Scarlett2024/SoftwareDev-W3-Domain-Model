-- Drops existing tables, so we start fresh with each
-- run of this script
-- e.g. DROP TABLE IF EXISTS ______;
DROP TABLE iF EXISTS contacts;
DROP TABLE iF EXISTS activities;
DROP TABLE iF EXISTS companies;
DROP TABLE iF EXISTS company_contacts;
DROP TABLE iF EXISTS salespersons;
DROP TABLE iF EXISTS industry;
DROP TABLE iF EXISTS industry_company;

-- CREATE TABLES
CREATE TABLE contacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT,
    email TEXT,
    phone TEXT
);

CREATE TABLE activities(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    comm_type TEXT,
    date TEXT,
    salesperson_id INTEGER,
    notes TEXT
);

CREATE TABLE industries (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE companies(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    name TEXT
);

CREATE TABLE salespersons (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name TEXT,
    last_name TEXT,
    email TEXT
);

CREATE TABLE company_contacts (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    company_id INTEGER,
    contact_id INTEGER
);

CREATE TABLE industry_company (
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    industry_id INTEGER,
    company_id INTEGER
);
