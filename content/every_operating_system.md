---
title: "Every Operating System: Why You Should (and Shouldn't) Use Them"
date: 2022-11-24T14:59:26-05:00
draft: true
---
In recent times, I have been debating on what operating system I wish to use
for my future workstation as described in
[this](https://themyth.dev/future_workstation) post, eventually coming to the
conclusion that the only good set-up to have is all three. (Well, there are
more than three but the big three: Windows, Mac, Linux). This set-up allows
practically no compromises aside from the fact that you have to use 3 different
operating systems that don't exactly like to inter-operate with each other. The
main inconsistency is files, however if you are already spending over $5k for
two PCs, using your old one or buying an old Optiplex and turning it into a NAS
(Network Attached Storage) would combat this issue with ease. I will write
another blog post about not only building, but also picking the exact parts for
my NAS which I will (one day) deploy. A NAS completely solves the issue of
sharing important files: whether it be important documents like .PDF's or Word
documents but also images, videos, binaries, or source code. All of this is
easy to work off from a NAS, and with 3 (or more) discrete operating systems or
computers, a NAS not only helps to connect it all, but also adds a layer of
organization. The only things that would not be stored on the NAS would be
configuration files (obviously) and some games that would be loaded onto the
Windows operating system.

Now, lets get on to every operating system, or least the ones that are the most
prominent today.  Sure, there are some really obscure ones like GNU Hurd or
TempleOS, but those aren't used widely and as such I will not be listing them.
I will split the Linux section into the distros that I use the most and things
that are consistent across most or all Linux distributions.Keep in mind that
the Pros and Cons are not an exhaustive list, however this follows my opinion
on what Operating Systems should and shouldn't have.
 
This article will be ordered as such:
- [Windows](#windows)
- [MacOS](#macos)
- [Linux](#linux)
  - [Debian](#debian-and-its-derivatives)
  - [Arch](#arch-and-its-derivatives)
- [BSD](#bsd)
  - [FreeBSD](#freebsd)
  - [OpenBSD](#openbsd)

### Windows {.heading}

Windows is the most used operating system throughout the world. Created by
Microsoft, it has since gained prominence in almost every single aspect of
computing. Everything that you can do on a computer, you can in one way or
another do it on Windows. However, being the most popular doesn't mean
you're the best. Doing some simple tasks on Windows can end up jank-y, and
installing applications is always a hassle.  Many use Windows because of the
huge amount of support, for gaming, or for programming on the World's OS.

Almost any laptop you buy comes with Windows, besides ones that come from
Apple. In fact, almost any PC you can buy pre-built comes with Windows
pre-installed on it. Sure, some manufacturers are adding a Linux option
for their laptops, bust most of the time they are sold with Windows as
their primary operating system. This contributes to Windows' huge market
share.

However, Windows does come with a lot of drawbacks, from having your data
being mined by Microsoft, forced updates, to ads being displayed in your
start menu. Sure, this comes with a lower upfront cost but in reality this
just enables corporations to steal all of your data. Now, let's get into
the pros and cons of Windows.

- Pros
  - Widely used.
  - Huge amount of support.
  - Almost every application has a Windows version.
  - Most Games and professional applications only work on Windows.
  - Comes in multiple packages so you can choose how much your OS costs.
  - Bloatware can be removed in one way or another.
- Cons
  - Comes pre-packaged with a lot of bloatware.
  - Serves ads even when you pay for the software.
  - Very few ways to turn off ALL telemetry.
  - Not easy to develop on.
  - Not a huge amount of customizability.
  - Slower than other operating systems (especially on startup).
  - Newer versions are just re-skinned with little actual updates.
  - No universal way to update or install applications.

### MacOS {.heading}

MacOS is Apple's beloved (or hated) operating system used mostly by people
afraid of technology, developers, or artists. Developers are present among
every operating system but the ones who use MacOS are particularly vocal about
why MacOS is good and why they use it.

MacOS was first (and still is) based off of a highly modified version of BSD,
which we will get onto later but this does mean that its UNIX like (not based),
which is arguably better for programming. This makes MacOS extremely stable,
reducing the amount of times MacOS would have to reboot compared to Windows,
which is based of the NT Kernel, Microsoft's own abomination. MacOS also does
not experience the kind of crashes like Windows does. MacOS (and every other
operating system on this list) does not have a "Blue-Screen" crash, where in a
UNIX-like the only hard crash you are able to really come across is just a hard
brick, which can be fixed by completely cutting off power. Both of these are
annoying and could be detrimental; but the hard brick is less scary.

MacOS is used by very distinct groups of people, for specific reasons. In the
artist space, Macs allow you to use your iPad (yay more Apple) as a drawing
tablet, which is very beneficial for artwork. MacOS is widely used on MacBooks,
and has proven time and time again that it is more battery-efficient than
Windows, especially with the introduction of Apple Silicon.

MacOS is incredibly immersed within the Apple ecosystem. Anything from using
your Apple Watch as two-factor authentication to having your AirPods seamlessly
connect to all your Apple devices without you having to mess with them at all.

I could write on and on about MacOS just because I've done so much research
into it but I will stop myself and start listing the pros and cons.

- Pros
  - Integrates you into the Apple ecosystem.
  - Bloatware does not inhibit performance, only disk space.
  - Allows you develop for almost all hardware and OS's (Windows & Mac).
  - Comes from the factory with artist-grade color accurate displays.
  - Does not display ads while using.
  - Mines very little of your data.
  - Open about data collection.
  - UNIX-like.
- Cons
  - Cannot remove bloatware at all except in some extreme circumstances.
  - Not very compatible with non-Apple certified hardware.
  - Very hard or impossible to repair/upgrade.
  - Hard to virtualize.
  - No universal way to update or install applications.

### Linux {.heading}

Up until now, I have covered operating systems made by huge companies with
monetary goals. From now on, every operating system I cover will be open-source
and rely on crowd-funding, not a manufacturers desires. Linux has a reputation
of not being user-friendly, however in recent times this stereotype has become
less and less true.

Linux is unique from other operating systems, it has specialized distributions
made for specific tasks or user-base. The two most common of these distros (as
we will be calling them from now on) are Debian and Arch. Debian is a release
distro, meaning that every couple months or so there is a new release for
Debian. Arch on the other hand is a rolling release distro, meaning that there
are no specialized releases, just as soon as a new patch gets release for a
package you install, it gets downloaded and installed onto your system. This
creates a sense of insecurity, as the packages aren't fully tested before being
released to the general public, whereas Debian's packages are.

However, Linux isn't just about the distro you pick. At its heart, Linux is
UNIX-like, as it was created as an open-source "side project" to UNIX, a huge
operating system developed by AT&T Bell Labs, way back in the wild west of
Computer Technology days. Today the closest relative to UNIX is BSD, which was
University of Berkeley-California's take on the UNIX operating system. Linux
does stick to UNIX's core principals; the main one being "treat everything as a
file". For some people this concept is hard to grasp, but it is basically
saying that everything you connect to your computer in one way or another is
treated as a file descriptor, that behaves like a file and you computer can
interact with it like it is a file.

### Debian (and it's derivatives) {.heading class="small"}


Pros:
Large community support with frequent updates and bug fixes
High level of security with strict adherence to the Open Source Definition
Variety of software packages available in the repository
Customizable and configurable to fit individual needs

Cons:
Longer release cycles compared to other Linux distributions
Stricter adherence to free software may limit available software packages
May require more technical knowledge to set up and maintain compared to other distributions
Lack of commercial support options for enterprise users.Pros:

### Arch (and it's derivatives) {.heading class="small"}

### BSD {.heading}

### FreeBSD {.heading class="small"}

### OpenBSD {.heading class="small"}
