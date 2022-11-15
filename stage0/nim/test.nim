# import db_sqlite
# let db = open("mytest.db", "", "", "")
# let id = db.getValue(sql"select id from extensions where name = ?","jpeg")
# echo id

import std/parseopt

var p = initOptParser("plop file.txt")
while true:
  p.next()
  case p.kind
  of cmdEnd: break
  of cmdShortOption, cmdLongOption:
    if p.val == "":
      echo "Option: ", p.key
    else:
      echo "Option and value: ", p.key, ", ", p.val
  of cmdArgument:
    echo "Argument: ", p.key

