# yaim
a prototype image manager to learn/compare several language 

# languages: 
must be compliled to be distributed as an archive
rust, nom, golang, crystal
https://vale.dev/
https://github.com/roc-lang/roc
https://github.com/JohnDTill/Forscape
https://github.com/leanprover/lean4
https://odin-lang.org/
zig
https://www.idris-lang.org/pages/example.html
https://wiki.portal.chalmers.se/agda/Main/HomePage
https://github.com/dafny-lang/dafny
https://www.fstar-lang.org/
https://koka-lang.github.io/koka/doc/index.html
https://alloytools.org/
racket
https://github.com/Kindelia/Kind2
https://strlen.com/lobster/     
https://github.com/ChessMax/awesome-programming-languages
https://fll.presidentbeef.com/
https://pldb.com/lists/languages.html



# pre stage 
* overview langauge
* comment language
* predict final choice/easiness
* explain criteria choices

# stage 0 - cmd line + db
command line tool to images path and metadata (add date, modif date) in a sqlite db

* add a path where to look for pics (yaem addpath <path>)
* remove a path (yaem rmpath <path>)
* list  paths (yaem listpath)
* list pics (yaem listpics <optionnal in a path>)
* remove pics (yaem rmpics <pics>
* refresh directory wih new images (yaem refresh)
* list duplicate (yaem duplicate) (done by hash)

## bonus

* monitor and add automatically change
* progress bar


# stage 1 - web
simple web gallery with backend in  $LANG$ and small frontend showing the pics made in html/js
the frontend list the directory in the left panel, display the pics in the middle
when clicked the pic is increased to full size and a right panel show the metadata
when clicked again the pic is zoomed 100
when cliked again the pic is set to full size
a button allow to go back to the thumbnail grid view

* generate thumbnails (auto + yaem thumbnails)
* start server (yaem serve)


## bonus
frontend generated from the language (transpilation or wasm)

# Stage 2 - gui
simple gui same fct as web + tag + sort by directory/date/main tags


# stage 3 - parralelism
inser in database with paraalelism

# stage 4 - bindings
* add bindings or library to read exif data and RAW files
* read/write xmp format

# stage 5 - science/image processing
make statistics or if possible image processing on  pics


