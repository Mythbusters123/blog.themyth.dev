---
title: "My Upcoming Switch to Wayland"
date: 2023-01-05T20:23:46-05:00
draft: false
---

For many years, Xorg was viewed as the only option for a display server under desktop Linux. However, that is not the case anymore due to the rising popularity of Wayland. The development of both projects seems to be inversely related. Xorg has died many deaths, but somehow, through it all, it has remained. Possibly by the grace of God, other theories suggest it just might be immortal. However, those days seem to be dwindling. This pushes me to design my escape root before it becomes too late. If Xorg ever becomes EOL, some serious poop is going to hit the fan, and Wayland will remain king.

This cause for concern was highlighted recently when the numbers for commits to the Xorg family of repositories were reported for the 2022 calendar year, now that we are officially in 2023. Xorg received just over 150 commits for a project its size, sparking worry in many people's eyes. Xorg could be dying its final death, however unlikely that may be.

With this recent news, I have been investigating how I should go about switching to the new kid on the block, Wayland. This means giving up my Suckless programs, but there are plenty of alternatives and I might want to expand my palette, so to speak.

### What Should My Window Manager Be? {.heading}

I'm never switching back to a Desktop Environment, no matter how enticing it may seem. The reason I ditched Windows in the first place was the stupid amount of RAM that it would use when I'm not even doing anything without the ability to free up that precious RAM. Lo and behold, in my infinite wisdom, I used KDE as my DE. Granted, the memory usage was still 1/3 of what it was while in Windows, but still unacceptable by my standards. I had been playing around with Artix and DWM in VMs for a while up until December 26th when I finally made the jump to installing it on my actual system, and it did not disappoint. I have had no hiccups, and everything is so easy to configure.

Thank goodness the Linux community agrees that there should be a hackable, versatile window manager. There is a Wayland "port" of dwm called dwl, and it has all of the patches I need. This is great news, except for the fact that I am going to have to rewrite my system from the ground up. But that is the name of the game with Linux, always adapting to the new, fastest thing.  And who doesn't like writing complex configs that can brick your whole system if you mess them up? Not me! In all seriousness though, it will be a pain changing all my configs over, but that should only last a couple of days, and once it's all done I have a new shiny Wayland system that has double the features and is more secure and responsive. Overall, I think it's a good trade.

### Not All Applications Are Created Equally {.heading}

While finding a Wayland compositor that looks like it will suit your specific needs is already a challenge, just wait until you try and search for the common applications that you need. Every Linux user needs a terminal emulator, it is quite frankly the epitome of the Swiss Army Knives of the computing world, especially for \*nix operating systems. But what does this have to do with anything? Shouldn't all terminal emulators just magically work on Wayland?

In a perfect world, yes, this would be true. However, certain projects don't like using frameworks such as GTK or QT, which gives them more control and less overhead. If you want to develop something that uses OpenGL to render, GTK or QT is frankly not an option, especially for the extreme amount of both overhead and dependency hell that comes with such frameworks. Certain terminal emulators do function with both X11 and Wayland and use OpenGL for rendering such as Alacritty, WezTerm, and Kitty. However, all of these pale in comparison to St in terms of simplicity and having such a small codebase.

Take Alacritty, for example. Its main attraction is that it's written in Rust and it's stupid fast. How fast it is though could be debated, as the benchmarks it uses are... sketchy to say the least. However, I had used Alacritty in the past and it was a good terminal emulator until I got into the more minimal side of the Linux space. Alacritty has some issues, especially when it comes to font rendering. It does not currently support ligatures, and by the looks of it, the project probably never will. Not to say this is a bad thing if you are chasing every single last frame. Not everyone cares about absolute performance though. This is where Alacritty lacks, and other GPU-accelerated terminal emulators excel.

The word "excel" doesn't mean that they don't have their drawbacks. WezTerm, for example, boasts a HUGE codebase of over 300,000 lines in comparison to St's mere six thousand lines of code. Kitty falls somewhere in the middle, with around sixty thousand lines of code. Considering Alacritty falls in the 35 thousand SLOC area, I see Kitty as a good trade-off. Does this mean I would like to run a terminal emulator that has a code base ten times larger than St? Yes!

Let me explain in more detail: Kitty has some features that won't really be used by me. For example, it can create tabs. I wouldn't use this particular feature very often, as I would use a tiling window manager as we have already established. It also has support for many things out of the box, such as ligatures without the need to apply patches. Do I like the patching system that Suckless software uses? Yes, absolutely! But sometimes it gets a bit annoying having to recompile everything when I need to make a change to a color or a font.

### What Next? {.heading}
The reason I am so hell-bent on finding a good terminal emulator is that besides my web browser (which is Librewolf & Brave, by the way, 😜) my terminal is where practically all of my work gets done. Email, this blog, anything to deal with my server. All of the main applications I use are CLI or TUI based, with a select few being real GUIs. This is not me saying GUIs are bad, but rather that I prefer terminal applications. In some aspects. I like Nemo as my file manager, and Cider as my music player, but that's about it.  Everything else is a terminal based application because I like to keep it simple. It's just my style and my thought on how Linux should be.
Anyway, that's my rant done and over with, I have a real banger of a post coming up soon, so stay tuned! Peace out LandChads!
