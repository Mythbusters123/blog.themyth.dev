Hey Kid, Wanna Learn Shell Scripting?

This is what it seemed like to me when I was first starting to learn the
daunting language of Shell. Being led down some crazy back-alley where only the
true Linux chads know whats going on. Well, after countless hours of YouTube and
guessing which `grep` flags I should use, I think I've finally got it.

And if you want to learn shell, I will go over the main functionalities
and what some main programs are used for, and that way you can learn to 
become a master Shell script writer.

### The Basics
There are some basic concepts you need to know before coding in Shell.
You must know:
- What a regular expression is
- How to write a regular expression
- A decent understanding of how to use the man pages (or a site that serves them)

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

### Differences from other languages
Shell is a bit funky compared to the other "standard" languages, e.g.
JavaScript, C, Rust in the idea that it isn't built in functions that 
are doing all the work (sometimes there are but thats for later). In
fact, it is all seperate programs that do the work. Instead of calling
a `find` function, you would call something like `grep`. Shell also has
to be written very cautiously. So cautiously that there is a saying in
the scripting world "QEFS" which means "Quote Every Fricking Substitution".
Aside of the vulgarity, it does bring up a good point that when you don't
QEFS, you can end up with some bad errors that make you scratch your head
tirelessly. It also must be noted that Shell DOES NOT ignore whitespace.
You cannot type `a = b`, as it will call program `a` with the arguments of
`=` and `b`. Instead you must type `a=b` and then to access that value, say
with echo, you must type `echo "\$a"` (remember QEFS?). There are multiple
other things, but this is probably the main one.

### Ok ok, its funky. What next?
Read the man pages and documentation. A good resource for it is
[https://linux.die.net](https://linux.die.net). This might come off as cliche
and downright annoying, but that truly is the best way to learn. The amount of
time reading the man pages has saved me rather than having to go to
StackOverflow and then type in my specific problem is countless. I would also
recommend looking at other people's shell scripts to see the extent of things
you can do. It will also give you a good idea on how shell scripts work.

### Start with the basics - Keep it minimal
In all honesty, I would recommend going with completely strict POSIX shell,
it helps you be able to use pretty much every script you make be useable
on every \*NIX system. There are some bash extensions, most notably `[[]]`
but most of these funtions can easily be replicated using similar POSIX programs
for example if you must use the regex `[[ a =~ abcd ]]` you can simply write
`[ echo abcd | grep -Eq a ]` (`[` or `test` is a standard POSIX program).

### Start small, and work your way up.
The main way I got started was modifying the program notflix, made by
[BugsWriter](https://bugswriter.com). Another easy way to get started is by
simplifying some of your tasks. Say you want to check the DNS records of a
certain site, but don't want to read through all of the many lines `dig` spits
out. An easy way to do this is <code><pre> dig &lt;domain.com> | grep -F &lt;domain.com> | tail -n1 | awk '{printf $5}'</code></pre>
`awk` is a tricky program to master, but it makes sense after using it for a bit.
I will probably write another section specficically on awk, but for now, I'll 
leave it as it is. 

### Pipes, Pipes, Pipes!
The most single useful feature of shell is piping! While at first the idea of 
directing STDOUT into the STDIN of a different program seems foreign, it has
many uses, as you can see above. Almost any coreutils program, and any decently
developed program can accept input from STDIN, and this is why piping is so important.
This is one of the most used concept in shell scripting, along with substitution.
It works very funnily at first, but it is one of the best concepts to learn!

### You told me nothing besides how to read documentation
You are somewhat correct, but that is the greatest thing about \*NIX! Everything
is so well documented that all it takes is a simple `--help` or `man &lt;program&gt;`.
While it may be intiminating at first, the greatest tool is the man pages, and also
trying until you get it right.

### Closing notes
Typically, the most common programs you are going to use are
`grep`, `sed`, `cat`, `echo`, `printf`, and `[`/`test`. You will
use a lot of the other programs too, but if you look at shell scripts
a lot you will see that these are the most common. 

To anyone who wants to learn, I wish you the best of luck!
If any of you people actually find this guide helpful,
email me at myth@themyth.dev for a part 2!

; tags: scripting shell
