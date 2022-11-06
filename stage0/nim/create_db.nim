import std/db_sqlite

# user, password, database name can be empty.
# These params are not used on db_sqlite module.
let db = open("mytest.db", "", "", "")
db.exec(sql"DROP TABLE IF EXISTS extensions")
db.exec(sql"""CREATE TABLE extensions (
                 id   INTEGER  PRIMARY KEY,
                 name VARCHAR(10) NOT NULL
              )""")
db.exec(sql"INSERT INTO extensions (name) VALUES (?)",
        "jpeg")
db.exec(sql"INSERT INTO extensions (name) VALUES (?)",
        "tiff")
db.exec(sql"INSERT INTO extensions (name) VALUES (?)",
        "pef")
db.exec(sql"INSERT INTO extensions (name) VALUES (?)",
        "nef")
db.exec(sql"INSERT INTO extensions (name) VALUES (?)",
        "png")


db.exec(sql"DROP TABLE IF EXISTS images")
db.exec(sql"""CREATE TABLE images (
                id   INTEGER  PRIMARY KEY,
                id_extensions INTEGER,
                name TEXT NOT NULL,
                FOREIGN KEY(id_extensions) REFERENCES extensions(id)
              )""")

db.close()