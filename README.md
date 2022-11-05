# yaim
a prototype image manager to learn/compare several language 

# Rationale

I want to discover a new language that is compiled for easy distribution and reasonable speed . I'm at best an average programmer who mainly knows python and some javascript.

I'm very lazy so I'm looking for something easy to learn and with a community big enough to have many libraries to use.

Also I'm stupid so instead of improving my competences in what I already know or at least learning something that could be actually useful for work (my current one or another), I'm going to look for a recent or even very recent language and not something that people actually use like java, C or C++.

Anyway the best way imho is to write a simple program that can give an overview of different aspects of the language and its libraries. For the moment I will explore : command line, database (sqlite), backend web, GUI, interface with C/C++ code, and scientific computation (or at least visualisation)

Each step will be a 'stage', and I will try to write the program in each of the language I selected until I give up (on the language or on the project)

Since I'm more lazy than you can imagine, I will proceed by not even doing a tutorial beside the hello word, but by googling "how to do X in Y". Yep (clown emoji)

# The test

I recently struggled to find aa good photo management app, nothing is really covering my use cases while not being overly confusing or power hungry. So no I'm not going to write a picture manager but this project will be inspired by it

I will try to run "objective" tests, like the speed, the RAM used or size of the binary, but mostly it will be : did I enjoyed the experience ? Of course the last languages I will try favored since I would have solved the implementation problems for the first languages, so I will keep that in mind.

There is only on interest to all that: it will show not how good the language is but IRL how good I can be with the language

# which language I will test


## Go
+ supposed to be easy
+ Google
+ the huge community
  
- I don't like the syntax (for no objective reason)
- Google



## nim
I actually discovered nim a long time ago when it was called nimrod. I was interested, but I needed scientific libraries so I didn't go far
+ supposed to be easy
+ I actually like the syntax (familiar)
+ not to small community
+ can output js
  
- still a quite small community compared to the previous one (I don't even compare to the mastodonts)


## crystal
Discovered it on hacking news with people liking it

+ supposed to be  clear and easy
+ I like the syntax (not familiar but readable)

- even smaller community that nim
- windows support very new




# Languages I may test (but probably not)

## Rust
This one interest me but I don't think I'm smart enough to use it
+ the hype
+ the big community

- the manual memory managment with borrow checker and lifetimes is probably too complicated for my small brain
- the syntax uses a lot of weird characters everywhere (', <>, [])


## V
I actually just curious because they got a lot of rejection from  hacker news (because of over promising stuff if I understood well)


## predictions

Of these language I predict that I will like nim the most but that go would be the most usable for me

## Other languages: 


Here a list of other non VM languages

https://vale.dev/
https://github.com/roc-lang/roc
https://github.com/JohnDTill/Forscape
https://github.com/leanprover/lean4
https://odin-lang.org/
[racket](https://racket-lang.org/)
[zig](https://ziglang.org/)
https://www.idris-lang.org/pages/example.html
https://wiki.portal.chalmers.se/agda/Main/HomePage
https://github.com/dafny-lang/dafny
https://www.fstar-lang.org/
https://koka-lang.github.io/koka/doc/index.html
https://alloytools.org/
https://github.com/Kindelia/Kind2
https://strlen.com/lobster/
https://github.com/ChessMax/awesome-programming-languages
https://fll.presidentbeef.com/
https://pldb.com/lists/languages.html


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


