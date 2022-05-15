Hey Kid, Wanna Learn Shell Scripting?

This is what it seemed like to me when I was first starting to learn the
daunting language of Shell. Well, after countless hours of Youtube and
guessing which `grep` flags I should use, I think I've finally got it.

And if you want to learn shell, I will go over the main functionalities
and what some main programs are used for, and that way you can learn to 
become a master Shell script writer.

## The Basics
<hr/>
There are some basic concepts you need to know before coding in Shell.
You must know:
- What a regular expression is
- How to write a regular expression
- A decent understanding of how to use the man pages

Now, there are some things that are not included in this list. There is
the difference between POSIX shell scripting, bash scripting, zsh, and
practically any other shell out there. They all have slight differences,
but if there is one thing that you will never use for shell scripting, 
its FISH. While it looks nice and all, don't ever use it for scripting
and its just better in general to steer clear of it. 

STDIN and STDOUT are the Standard Input and Standard Output of a
program, respectively. STDIN is different from the command-line
arguments you type out before running a program, it is what you type
in the terminal while the program is running (or what other programs
output into the STDIN, which we will get to later). STDOUT is just the
output of the program, which can also be redirected, which will be
covered later.

## Differences from other languages
<hr/>
The thing that usually turns people away from Shell scripting is its
"funky" way of doing normal tasks, but when you look at it from a 
programming perspective, it actually makes a fair amount of sense and
even in some cases makes it even more intuitive.