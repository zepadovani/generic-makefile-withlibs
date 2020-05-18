## README

Basically I was having some problems implementing the 1.18 recipe of c++ cookbook (https://www.oreilly.com/library/view/c-cookbook/0596007612/ch01s19.html) and found Jamie Bullock's great template of a generic makefile (https://github.com/jamiebullock/generic-makefile). []
Also, learning here to fork projects.. :/

### description:
`make` in the main folder will run the Makefile of each library in the respective "static" and "shared" folders (inside lib folders) and in the main "src" folder.

`make install` will copy everything to the "binary" folders

`make clean` resets everything.
