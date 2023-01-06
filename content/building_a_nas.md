---
title: "Building a NAS"
date: 2022-11-25T10:15:42-05:00
draft: true
---
For a while now, I have wanted to build a NAS. I hate constantly having to swap
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
it also doesn't fit my usecase very well. That gave me an idea: Why not use my
old PC?

This is not a revolutionary idea in the slightest. People have been making NAS's
out of their old computer ever since the software to create such a thing became
consumer-viable. People take their old computers, rip out their old parts and
voila! a NAS/home server/media server/network hub. In fact, your old computer
does not need to be limited to just serving up hard disk space to your local
network! With the power of UnRAID (which we will cover later on) you can do
practically anything thanks to their wide assortment of docker containers made
so you can futz around with Linux as much as you like!

### The Software {.heading}

I personally am a advocate for free and open source software. So, when a recommend
a product that doesn't follow under the FOSS guidelines, it means one of two things:

- The product is really good and there is no FOSS alternative that even has half the  features
- Someone stole my SSH private key

I think its fair to say that stealing someone's SSH key is pretty hard now-a-days, so
when I recommend UnRAID, a proprietary, paid linux-based server management platorform
I must have something good to say about it. And I do!
