import os, unicode, db_sqlite, parseopt


let db = open("mytest.db", "", "", "")

proc getExtID(ext: string): string =
    let id = db.getValue(sql"select id from extensions where name = ?","jpeg")
    return id


proc insertDB(path: string, ext: string) =
    let id = getExtID(ext = ext)
    db.exec(sql"INSERT INTO images (id_extensions, name) VALUES (?, ?)", id, path)

echo "hello"
var paths: seq[string] = @[]
for path in walkFiles(r"C:\Users\menut\Pictures\*"):
    var ext = splitFile(path).ext.toLower
    if ext == ".jpg":
        paths.add path
        insertDB(path, ext)
db.close()