---
title: "My Upcoming Switch to Wayland"
date: 2023-01-05T20:23:46-05:00
draft: true
---

For many years, Xorg was viewed as the only option for a display server under
dekstop Linux. However, that is not the case anymore due to the rising
popularity of Wayland. In fact, the developmet for both projects seem to be
inversely related. Xorg has died many deaths, but somehow, through it all it
has remained-somehow. Possibly by the grace of God, other theories suggest it
just might be immortal. However, those days seem to be dwindling. This pushes
me to design my escape root before it becomes too late. If Xorg ever becomes
EOL, some serious poop is going to hit the fan, and Wayland will remain king.

This cause for concern was highlighted recently when the numbers for commits to
the Xorg family of repositories was reported for the 2022 calendar year, now
that we are officially in 2023. Xorg recieved just over 150 commits and for a
project its size, sparking worry in many people's eyes. Xorg could be dying its
final death, however unlikely that may be.

With this recent news, I have been investigating into how I should go about
switching to the new kid on the block, Wayland. This means giving up my
suckless programs, but there are plenty of alternatives and I might want to
expand my palette, so to speak.

### What Should My Window Manager Be? {.heading}

I'm never switching back to a Desktop Environment, no matter how enticing it
may seem. The reason I ditched Windows in the first place was the stupid amount
of RAM that it would use when I'm not even doing anything without the ability
to free up that precious RAM. Lo and behold, in my infinite wisdom, I used KDE
as my DE. Granted, the memory usage was still 1/3 of what it was while in
Windows, but still unacceptable by my standards. I had been playing around with
Artix and DWM in VMs for a while up until December 26th where I finally made
the jump to installing it on my actual system, and it did not disapoint. I have
had no hiccups, and everything is so easy to configure.

Thank goodness the Linux community agrees that there should be a hackable,
versatile window manager. There is a wayland "port" of dwm called dwl, and it
has all of the patches I need. This is great news, except for the fact that I
am basically going to have to re-write my system from the ground up. But that
is the name of the game with Linux, always adapting to the new, fastest thing.
And who doesn't like writing complex configs that can brick your whole system
if you mess them up? Not me! In all seriousness though, it will be a pain
changing all my configs over, but that should only last a couple days, and once
its all done I have a new shiny Wayland system that has double the features and
is more secure and responsive. Overall, I think its a good trade.

### Not all applications are created equally {.heading}

While finding a Wayland compositor that looks like it will suit your specific
needs is already a challenge, just wait until you try and search for your common
applications that you need. Every linux user needs a terminal emulator, it is
quite frankly the epitome of the Swiss Army Knives of the computing world,
especially for \*nix operating systems. But what does this have to do with anything?
Shouldn't all terminal emulators just magically work on Wayland?

In a perfect world, yes, this would be true. However, certain projects don't
like using frameworks such as GTK or QT, which gives them more control and less
overhead. If you want to develop something that uses OpenGL to render, GTK or QT
is frankly not an option, especially for the extreme amount of both overhead and
dependency hell that comes with such frameworks. Certain terminal emulators do
function with both X11 and Wayland and use OpenGL for rendering such as
Alacritty, WezTerm, and Kitty. However all of these pale in comparison to St in
terms of simpicity.
