---
title: "Building a NAS"
date: 2022-11-25T10:15:42-05:00
draft: true
---
For a while now I have wanted to build a NAS. I hate constantly having to swap
drives and add more incrementally, its just a real pain. I would love to have a
server, stuffed away in some closet and just forget about it. I am a data
hoarder, and I don't even do anything related to art. I just like keeping all my
movies in one place, all my games, and anything that should be backed up. Sure,
I could do what I am  doing right now, which is paying $3/month for Google
Drive, but I really do not want to be locked into Google's ecosystem.  Thus, to
teach all my fellow  internet chads reading this blog, I will teach you all
exactly what you need to build (and deploy!) your own NAS!

### The Hardware {.heading}

As mentioned in the past, I am working on re-vamping my setup when I eventually
head off to college. This will entail a workflow created entirely from a laptop
with an eGPU sometimes. This will eventually bring about the question of what to
do with my perfectly good PC. Well, its not great. For one it uses NVIDIA
graphics which are a whole nightmare to deal with on Linux, but it also is
running an 8th Gen Intel CPU. It's not the worst for performance certainly, but
it also doesn't fit my use-case very well. That gave me an idea: Why not use my
"old" PC?

This is not a revolutionary idea in the slightest. People have been making NAS's
out of their old computer ever since the software to create such a thing became
consumer-viable. People take their old computers, rip out their old parts and
*voila!* a NAS/home server/media server/network hub. In fact, your old computer
does not need to be limited to just serving up hard disk space to your local
network! With the power of UnRAID (which we will cover later on) you can do
practically anything thanks to their wide assortment of docker containers made
so you can futz around with Linux as much as you like!

### The Software {.heading}

I personally am a advocate for free and open source software. So, when a recommend
a product that doesn't follow under the FOSS guidelines, it means one of two things:

- The product is really good and there is no FOSS alternative that even has half the
features
- Someone stole my SSH private key

I think its fair to say that stealing someone's SSH key is pretty hard
now-a-days, so when I recommend UnRAID, a proprietary, paid Linux-based server
management platform I must have something good to say about it. And I do!
UnRAID is not like TrueNAS in the sense that UnRAID is meant for consumers who
have a limited budget, so that you do not have to match the drives when one of
them inevitably fails. With unRAID, you can just put in any hard drive(s) you
want that can cover the parity and just like that you're back off to the races.

I would also like to state that the main reason I recommend unRAID is because it
is NOT based on a SaaS (Software as a Service) model. It's a one-time purchase
that lasts a lifetime. In a world where SaaS has taken modern computing by
storm, it is safe to say that finding a product that has a perpetual licence
with FREE updates, it sure is like finding a needle in a haystack. Not that I'm
complaining, though. It's great that companies like this still exist and are
thriving.

### Sure, But What Can You Do With unRAID? {.heading}

unRAID like many other NAS solutions, loves Docker containers. Simply put for
those unaware what Docker containers are, docker containers are small,
virtualised operating systems that are completely separate from your computer
allowing them to have a completely different set of packages, could be a whole
new distro, Windows, macOS, or even run on a differing CPU architecture, albeit
with some fiddling around. They allow you to host multiple things at once, while
not having to deal with the struggles or the headaches of multiple operating
systems. This is what makes Docker so great. Almost ever piece of software that
you want from Jellyfin to NextCloud can be hosted on unRAID using docker
containers with very little configuration required.

Now that you are introduced to Docker, there are a multitude of things that you
can do  with this newfound knowledge. As I stated before, you can host a
Jellyfin server, which acts as a home media player web-app, or NextCloud, which
takes the place of traditional cloud storage apps. It holds your calendar, files
and you can even link it with OnlyOffice to act as your personal "Microsoft"
Office suite.

unRAID also lets you easily set up a VPN so that way you can access your home
network from anywhere, without opening unsecure ports. Instead of opening your
ssh port to the whole internet (please don't do that), you can install WireGuard
on your NAS and treat it as a VPN. VPNs don't take up too much resources in terms
of computing power, however you should know that the VPN is only as secure as
your home network, but by default is demonstrably safer than a "free Wi-Fi" hotspot
usually located at public spaces such as coffee shops or McDonald's.

### Why YOU (yes, you) Need A NAS

