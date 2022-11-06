import os, unicode, db_sqlite


let db = open("mytest.db", "", "", "")

proc insertDB(path: string) =
    db.exec(sql"INSERT INTO images (id_extensions, name) VALUES (0, ?)","jpeg")

echo "hello"
var paths: seq[string] = @[]
for path in walkFiles(r"C:\Users\menut\Pictures\*"):
    if splitFile(path).ext.toLower == ".jpg":
        paths.add path
        insertDB(path)
db.close()