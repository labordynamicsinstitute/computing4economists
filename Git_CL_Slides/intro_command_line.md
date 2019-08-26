# Introduction to the Command Line
- A **shell** is a computer program like any other. But its primary purpose is to read commands and run other programs, rather than to perform
tasks/calculations itself.
- We interact with the shell through a command-line interface or **terminal**. We do so by entering commands as text input. The terminal reads the text input, interprets the commands and sends instructions to the shell,
which then executes the appropriate operating system functions. Once the commands are carried out, the shell communicates this with the
terminal which then prints its output.
- NOTE: add list of best ways to interact with command line (e.g. Windows Powershell)

## Getting started
Type _whoami_ into the terminal. The output should be the ID of the current user.
```
$ whoami
davidwasser
```
Now type _pwd_ to see which directory we are currently in. The command _pwd_ stands for "print working directory" and will be your home directory when you first log in.
```
$ pwd
C:\Users\David
```

## Exploring a directory
To see the contents of the current directory, use the command _ls_. The names of the files and directories in the current directory will be printed in alphabetical order, arranged neatly into columns.
```
$ ls
Desktop Documents Downloads Dropbox Music Pictures
```
## Navigating directories
To change our working directory, use the command _cd_ followed by a directory name. As you might have guessed, _cd_ stands for "change directory."
```
$ cd Dropbox\Cornell
```
_cd_ will not print anything, but if we use _pwd_ again we can confirm that we have successfully changed directories.
```
$ pwd
C:\Users\David\Dropbox\Cornell
```
To move up one directory (i.e. to the directory in which the current directory is contained), just type _cd .._
```
$ cd ..
C:\Users\David\Dropbox
```
And if we were to use the _ls_ command again, then we would see a list of the contents of the _Dropbox_ directory.

## Creating directories
Use the command _mkdir_ to create a new directory within the current directory. The example below uses this command along with some others we have learned so far.
```
$ cd Cornell
$ pwd
C:\Users\David\Dropbox\Cornell
$ mkdir my_thesis
$ cd my_thesis
$ pwd
C:\Users\David\Dropbox\Cornell\my_thesis
```
Here, I navigated to the Cornell subdirectory, made the my_thesis directory, and then navigated into the newly created directory.

## Additional resources
This guide contains only a small number of the operations for which one can use the command line. Additional resources can be found [here](https://www.tldp.org/LDP/abs/html/basic.html)

This guide was first created by Hautahi Kingi. Thanks Hautahi!
