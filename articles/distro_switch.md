The Distro Switch: Part 1 -- Preparation

For a while now, I have been wanting to switch over to Artix Linux, and lay
waste to my over-bloated Arch system. My current system is very slow, has over
1700 packages installed, it uses KDE, and it's home folder is so over-bloated it
physically hurts to ls -la. This is why I have a LARBS sticker in the footer,
because I have been using it for upwards of a month now and with my
modifications I have zero issues with it.

The main issue holding me back is my configuration files: specifically SSH and
GnuPG, but also with other programs. But I cannot just throw my .config into a
tar file and call it a day. I actually don't have a NAS (but might create one
soon if we don't fall into a bottomless abyss) so sadly I pay Google $2.99/month
now. I'm a poor kid, I'm not gonna pay $15/month for 1GB of storage on a
privacy-respecting cloud provider, when I could just pay 3/month at Google, for
now anyway. When I build a NAS, that should all be taken care of. 

But its not just a distro switch I want (really need) to do. I dual boot
Windows, for school and other purposes, and that install is also getting heavily
bloated, by the day (that I use it, which is like 2 days/week). Do I wish that
I had to dual boot Windows? Absolutely not! Bu

The next issue is all my SSH and GnuPG keys, which are scattered across VMs and
home folders and in random archives saved on my 2TB HDD (which I can't even
write to on Linux, thanks Optane). Just to add to the confusion, Google Drive
has a tendency to rename any file you come across that doesn't have an extension
with .txt (yes, even executables too, don't ask me how they did that). This can
easily be solved, all you have to do it archive it (I prefer .tar.xz or .tar.gz
because Google is absolutely retarded and can't read DRM content if its in the
XZ compression format...) and then ship it off to Google Drive, which in some
cases is easier as it takes (probably placebo) less time to upload. However, it
just adds one more step to the already complicated process that I wish I didn't
spent this much time on.

Passwords are another issue. Frankly, I'm torn. I want to use [Passky](https://github.com/Rabbit-Company/Passky-Server)
because you can easily self-host it, but the only thing that I can really use to
self-host is a Raspberry Pi that does no backing-up in any sort and I'd rather not
lose all of my passwords to a hardware failure. This is what is pushing me towards
[Bit Warden](https://bitwarden.com) but because you have to pay for certain functionality
that should just be included in the vanilla plan (I'm looking at you, Emergency Access) it
just seems off. I get it, companies need to make money; but basic features shouldn't be locked
behind a paywall, thats mobile-game territory.

A smaller, but more recent issue I have is that when I was installing my Arch system
I foolishly (kinda) split up my `/home` and `/` partitions. This is useful in some
cases, mostly where your system breaks and you do not want to lose all of your files,
but when you have really big files you want to install (ISOs, games) and then your home 
folder fills up faster than your mom last night. 500GB was a great size for an SSD that
I bought, but the fact that I cannot dump a lot of things onto my NTFS drive (thanks again,
optane) I am forced to use Windows.

Windows is not the complete bane of my existence, however. I use LTSC, which is basically
de-bloated Windows by Microsoft, and then de-bloat it some more, thanks ChrisCitrusTech.
If I ever get a CDN up (which I probably will) I will totally not upload the ISOs I use 
because they totally aren't illegal. But Windows LTSC is so efficient that it uses 3% cpu
after Windows does all its starting up stuff that doesn't even work most of the time. I have
this issue where my clock is always five hours ahead, and I HAVE to run `w32tm /resync` every
time I need to sync my clock, which is a whole issue because I need to set my terminal
as Administrator and it just takes so many GUI's to do. I might install the `sudo` applet
but I'm not too sure if that would change much. I do not know exactly how it works and might
be too little for much effort.

Well, thats my first real blog without any resolution to any problem, should be more soon!


;tags: blog rant