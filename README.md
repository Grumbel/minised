MiniSed
=======

### `minised`

A command line tool that allows search&replace across multiple files,
similar to the Unix tools `find` and `sed`.

    usage: minised.py [-h] [-i] [-o FILE] [-n] -p PAT [-r REPL] [-R GLOB] [-I]
                      [-v]
                      [FILE]

    A minimal sed-like tool

    positional arguments:
      FILE                  files to process

    optional arguments:
      -h, --help            show this help message and exit
      -i, --in-place        modify files in place
      -o FILE, --output FILE
                            write output to FILE
      -n, --dry-run         only show modifications, without actually modifying
                            anything
      -p PAT, --pattern PAT
                            the search pattern expression
      -r REPL, --replace REPL
                            the replacement expression, if not given just print
                            the match
      -R GLOB, --recursive GLOB
                            interprets the FILE argument as perform replacement in
                            all files matching GLOB
      -I, --ignore-case     ignore case
      -v, --verbose         display the replacements are performed


### `minised-gui`

A GUI tool that allows to search&replace across multiple files,
similar to the Unix tools `find` and `sed`. The search&replace action
can be previewed before it is executed.

![Screenshot](https://raw.githubusercontent.com/Grumbel/minised/master/screenshot.png)

