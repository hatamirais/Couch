# Couch - TryHackMe Challenge Writeup

Hatami Ra'is Bukhari (Althemier)
[Challenge link](https://tryhackme.com/room/couch)

## Scanning

Nmap scan
```bash
nmap -sC -sV -oN nmap/result.txt $IP

PORT   STATE SERVICE VERSION
22/tcp open  ssh     OpenSSH 7.2p2 Ubuntu 4ubuntu2.10 (Ubuntu Linux; protocol 2.0)
| ssh-hostkey: 
|   2048 34:9d:39:09:34:30:4b:3d:a7:1e:df:eb:a3:b0:e5:aa (RSA)
|   256 a4:2e:ef:3a:84:5d:21:1b:b9:d4:26:13:a5:2d:df:19 (ECDSA)
|_  256 e1:6d:4d:fd:c8:00:8e:86:c2:13:2d:c7:ad:85:13:9c (ED25519)
Service Info: OS: Linux; CPE: cpe:/o:linux:linux_kernel

```

For some reason the scan only show 1 port, even with tag `-A`, so lets try the other method which is `Rustscan`[[1]](https://github.com/RustScan/RustScan)

```bash
Open 10.10.75.191:22
Open 10.10.75.191:5984
```

Much better. `22` is SSH, then what is `5984`? Quick googling, it's for `CouchDB`.

Access `CouchDB` with typing this into your browser: [[2]](https://cloud.ibm.com/docs/Cloudant?topic=Cloudant-access-couchdb-cluster)
```
http://10.10.172.141:5984
```

Or with curl
```bash
curl 10.10.172.141:5984
```

Both method will give you respon where you get the version of the `CouchDB` as well as the machine OS

> What is path for the web administration tool for this database management system?

> What is path for list all databases in the web browser of the database management system?

You can get both answer with some googling, *explore the world*

Once you find out how to do web administrator `CouchDB`, you can find the credential to `SSH` to the machine

## Where is my flag

`user.txt` contain the first flag.

Escalate privileges however... its fun

You can do the casual check priv-esc like:
- `sudo -l`, you get the information that you dont have sudo privileges
- Eploring SUID with `find / -perm -4000 2>/dev/null` also found nothing
- Running `Linpeas` [[3]](https://github.com/carlospolop/privilege-escalation-awesome-scripts-suite/tree/master/linPEAS) aslo found nothing.

So, I found 2 method on how to priv esc ro root

### Docker

If you check the user home directory, there is a file called `.bash_history`. This file contain the information of history command type in terminal. So lets see what we have here
```bash
sudo -s
cd /etc/apt/
rm sources.
rm sources.list
.
.
.
.
.
.
docker -H 127.0.0.1:2375 run --rm -it --privileged --net=host -v /:/mnt alpine
uname -a
exit
```

Docker command, huh. Lets try it
```bash
docker -H 127.0.0.1:2375 run --rm -it --privileged --net=host -v /:/mnt alpine

/ #
```

Huh, we can access this container

Lets see what we have here, maybe we can find this `root.txt` with `find` [[4]](https://tryhackme.com/room/thefindcommand)
```bash
find / -type f -name root.txt
#Find any file start from root directory where the name is root.txt
#Once found, you can open it without permision needed.
cat /???/????/????.txt
```

### Kernel Exploited

Although the method above may have been the intended way, but why dont try other method

If we recall to we try to access `CouchDB` to browser we have the info that the OS run the database is Ubuntu version 16.04

There is one room in TryHackMe [[5]](https://tryhackme.com/room/overlayfs) explaining about CVE-2021-3493 [[6]](https://cve.mitre.org/cgi-bin/cvename.cgi?name=CVE-2021-3493).

TLDR, on some version of Ubuntu which the one we have right now has vulnerability on OverlayFS which allow local users to get root access. The user only need to compile a scripts and run it to gain instant root, pretty cool right?

You can pause what you currently doing and complete Overlayfs room [[5]](https://tryhackme.com/room/overlayfs) or read and apply what `Overlayfs` has to offer, once finish with `Couch` you can complete `Overlayfs`

