vagrant@buster:~$ cal
   September 2020
Su Mo Tu We Th Fr Sa
       1  2  3  4  5
 6  7  8  9 10 11 12
13 14 15 16 17 18 19
20 21 22 23 24 25 26
27 28 29 30

vagrant@buster:~$ ls
vagrant@buster:~$ ls -lrt
total 0
vagrant@buster:~$ who am i
vagrant  pts/0        2020-09-13 15:45 (10.0.2.2)
vagrant@buster:~$ ls -l
total 0
vagrant@buster:~$ ls -a
.  ..  .bash_history  .bash_logout  .bashrc  .profile  .ssh
vagrant@buster:~$ vi filename
vagrant@buster:~$ cat filename
this is unix file .....i creatd it fo the first time....
i am gong to save this component in this file.
vagrant@buster:~$ vi filename
vagrant@buster:~$ cat filename
this is unix file .....i created it fo the first time....
i am gong to save this component in this file.
vagrant@buster:~$ cat -b filename
     1  this is unix file .....i created it fo the first time....
     2  i am gong to save this component in this file.
vagrant@buster:~$ vi filename
vagrant@buster:~$ cat -b filename
     1  this is unix file .....i created it for the first time....
     2  i am gong to save this component in this file.
vagrant@buster:~$ cat -b filename
     1  this is unix file .....i created it for the first time....
     2  i am gong to save this component in this file.
vagrant@buster:~$ wc filename
  2  21 106 filename
vagrant@buster:~$ ^C
vagrant@buster:~$ cp filename copyfile
vagrant@buster:~$ ls -l
total 8
-rw-r--r-- 1 vagrant vagrant 106 Sep 13 18:07 copyfile
-rw-r--r-- 1 vagrant vagrant 106 Sep 13 17:59 filename
vagrant@buster:~$ mv filename newfile
vagrant@buster:~$ ls -l
total 8
-rw-r--r-- 1 vagrant vagrant 106 Sep 13 18:07 copyfile
-rw-r--r-- 1 vagrant vagrant 106 Sep 13 17:59 newfile
vagrant@buster:~$ rm filename
rm: cannot remove 'filename': No such file or directory
vagrant@buster:~$ cp newfile filename
vagrant@buster:~$ rm filename
vagrant@buster:~$ ls -lrt
total 8
-rw-r--r-- 1 vagrant vagrant 106 Sep 13 17:59 newfile
-rw-r--r-- 1 vagrant vagrant 106 Sep 13 18:07 copyfile
vagrant@buster:~$ cp newfile filename
vagrant@buster:~$ ls -lrt
total 12
-rw-r--r-- 1 vagrant vagrant 106 Sep 13 17:59 newfile
-rw-r--r-- 1 vagrant vagrant 106 Sep 13 18:07 copyfile
-rw-r--r-- 1 vagrant vagrant 106 Sep 13 18:10 filename
vagrant@buster:~$ rm -i filename
rm: remove regular file 'filename'? y
vagrant@buster:~$ ls -lrt
total 8
-rw-r--r-- 1 vagrant vagrant 106 Sep 13 17:59 newfile
-rw-r--r-- 1 vagrant vagrant 106 Sep 13 18:07 copyfile
vagrant@buster:~$ !/bin/sh
-bash: !/bin/sh: event not found
vagrant@buster:~$ vi
vagrant@buster:~$ ls -lrt
total 12
-rw-r--r-- 1 vagrant vagrant 106 Sep 13 17:59 newfile
-rw-r--r-- 1 vagrant vagrant 106 Sep 13 18:07 copyfile
-rw-r--r-- 1 vagrant vagrant  72 Sep 13 19:24 test
vagrant@buster:~$ ./test.sh
-bash: ./test.sh: No such file or directory
vagrant@buster:~$ ./test
-bash: ./test: Permission denied
vagrant@buster:~$ vi test
vagrant@buster:~$ chomod 777 test
-bash: chomod: command not found
vagrant@buster:~$ chmod 777
chmod: missing operand after ‘777’
Try 'chmod --help' for more information.
vagrant@buster:~$ chmof 777 test.sh
-bash: chmof: command not found
vagrant@buster:~$ chmod 777 test.sh
chmod: cannot access 'test.sh': No such file or directory
vagrant@buster:~$ ls -lrt
total 12
-rw-r--r-- 1 vagrant vagrant 106 Sep 13 17:59 newfile
-rw-r--r-- 1 vagrant vagrant 106 Sep 13 18:07 copyfile
-rw-r--r-- 1 vagrant vagrant  72 Sep 13 19:25 test
vagrant@buster:~$ chmod 777 test
vagrant@buster:~$ ls -lrt
total 12
-rw-r--r-- 1 vagrant vagrant 106 Sep 13 17:59 newfile
-rw-r--r-- 1 vagrant vagrant 106 Sep 13 18:07 copyfile
-rwxrwxrwx 1 vagrant vagrant  72 Sep 13 19:25 test
vagrant@buster:~$ ./test.sh
-bash: ./test.sh: No such file or directory
vagrant@buster:~$ ./test
what is your name ?
./test: line 5: READ: command not found
./test: line 6: unexpected EOF while looking for matching `"'
./test: line 8: syntax error: unexpected end of file
vagrant@buster:~$ cat -b test

     1  #!/bin/sh

     2  echo "what is your name ?"
     3  READ PERSON
     4  echo "HELLO $PERSON

vagrant@buster:~$ vi test

[No write since last change]
No manual entry for bin

shell returned 16

Press ENTER or type command to continue
vagrant@buster:~$ cat -b test
     1  #!/bin/sh

     2  echo "what is your name ?"
     3  read PERSON
     4  echo "HELLO $PERSON"

vagrant@buster:~$ ls -lrt
total 12
-rw-r--r-- 1 vagrant vagrant 106 Sep 13 17:59 newfile
-rw-r--r-- 1 vagrant vagrant 106 Sep 13 18:07 copyfile
-rwxrwxrwx 1 vagrant vagrant  72 Sep 13 19:50 test
vagrant@buster:~$ ./test.sh
-bash: ./test.sh: No such file or directory
vagrant@buster:~$ ./test
what is your name ?
Ashish
HELLO Ashish
vagrant@buster:~$
---------------------------------------------------------------------------------

Last login: Sun Sep 13 15:45:11 2020 from 10.0.2.2
vagrant@buster:~$ ls -la
total 40
drwxr-xr-x 3 vagrant vagrant 4096 Sep 13 19:50 .
drwxr-xr-x 3 root    root    4096 May 10 07:30 ..
-rw------- 1 vagrant vagrant  532 Sep 13 21:17 .bash_history
-rw-r--r-- 1 vagrant vagrant  220 May 10 07:30 .bash_logout
-rw-r--r-- 1 vagrant vagrant 3526 May 10 07:30 .bashrc
-rw-r--r-- 1 vagrant vagrant  106 Sep 13 18:07 copyfile
-rw-r--r-- 1 vagrant vagrant  106 Sep 13 17:59 newfile
-rw-r--r-- 1 vagrant vagrant  807 May 10 07:30 .profile
drwx------ 2 vagrant vagrant 4096 Aug 14 18:47 .ssh
-rwxrwxrwx 1 vagrant vagrant   72 Sep 13 19:50 test
vagrant@buster:~$ cd .ssh
vagrant@buster:~/.ssh$ ls -lrt
total 4
-rw------- 1 vagrant vagrant 389 Aug 14 18:47 authorized_keys
vagrant@buster:~/.ssh$ vi authorized_keys
vagrant@buster:~/.ssh$ cd ..
vagrant@buster:~$ ls -lrt
total 12
-rw-r--r-- 1 vagrant vagrant 106 Sep 13 17:59 newfile
-rw-r--r-- 1 vagrant vagrant 106 Sep 13 18:07 copyfile
-rwxrwxrwx 1 vagrant vagrant  72 Sep 13 19:50 test
vagrant@buster:~$ mkdir git
vagrant@buster:~$ cd git
vagrant@buster:~/git$ git clone git@github.com:tripuraripratap/Practise.git
-bash: git: command not found
vagrant@buster:~/git$ sudo apt-get install git
Reading package lists... Done
Building dependency tree
Reading state information... Done
The following additional packages will be installed:
  git-man liberror-perl patch
Suggested packages:
  git-daemon-run | git-daemon-sysvinit git-doc git-el git-email git-gui gitk gitweb git-cvs git-mediawiki git-svn ed diffutils-doc
The following NEW packages will be installed:
  git git-man liberror-perl patch
0 upgraded, 4 newly installed, 0 to remove and 32 not upgraded.
Need to get 7,411 kB of archives.
After this operation, 38.3 MB of additional disk space will be used.
Do you want to continue? [Y/n] Y
Get:1 http://deb.debian.org/debian buster/main amd64 liberror-perl all 0.17027-2 [30.9 kB]
Get:2 http://deb.debian.org/debian buster/main amd64 git-man all 1:2.20.1-2+deb10u3 [1,620 kB]
Get:3 http://deb.debian.org/debian buster/main amd64 git amd64 1:2.20.1-2+deb10u3 [5,633 kB]
Get:4 http://deb.debian.org/debian buster/main amd64 patch amd64 2.7.6-3+deb10u1 [126 kB]
Fetched 7,411 kB in 14s (511 kB/s)
Selecting previously unselected package liberror-perl.
(Reading database ... 31940 files and directories currently installed.)
Preparing to unpack .../liberror-perl_0.17027-2_all.deb ...
Unpacking liberror-perl (0.17027-2) ...
Selecting previously unselected package git-man.
Preparing to unpack .../git-man_1%3a2.20.1-2+deb10u3_all.deb ...
Unpacking git-man (1:2.20.1-2+deb10u3) ...
Selecting previously unselected package git.
Preparing to unpack .../git_1%3a2.20.1-2+deb10u3_amd64.deb ...
Unpacking git (1:2.20.1-2+deb10u3) ...
Selecting previously unselected package patch.
Preparing to unpack .../patch_2.7.6-3+deb10u1_amd64.deb ...
Unpacking patch (2.7.6-3+deb10u1) ...
Setting up liberror-perl (0.17027-2) ...
Setting up patch (2.7.6-3+deb10u1) ...
Setting up git-man (1:2.20.1-2+deb10u3) ...
Setting up git (1:2.20.1-2+deb10u3) ...
Processing triggers for man-db (2.8.5-2) ...
vagrant@buster:~/git$ git clone git@github.com:tripuraripratap/Practise.git
Cloning into 'Practise'...
The authenticity of host 'github.com (13.234.176.102)' can't be established.
RSA key fingerprint is SHA256:nThbg6kXUpJWGl7E1IGOCspRomTxdCARLviKw6E5SY8.
Are you sure you want to continue connecting (yes/no)? yes
Warning: Permanently added 'github.com,13.234.176.102' (RSA) to the list of known hosts.
git@github.com: Permission denied (publickey).
fatal: Could not read from remote repository.

Please make sure you have the correct access rights
and the repository exists.
vagrant@buster:~/git$ cd
vagrant@buster:~$ pwd
/home/vagrant
vagrant@buster:~$ cd .ssh
vagrant@buster:~/.ssh$ ls -ltr
total 8
-rw------- 1 vagrant vagrant 389 Aug 14 18:47 authorized_keys
-rw-r--r-- 1 vagrant vagrant 884 Sep 14 16:50 known_hosts
vagrant@buster:~/.ssh$ ssh-keygen
Generating public/private rsa key pair.
Enter file in which to save the key (/home/vagrant/.ssh/id_rsa):
Enter passphrase (empty for no passphrase):
Enter same passphrase again:
Your identification has been saved in /home/vagrant/.ssh/id_rsa.
Your public key has been saved in /home/vagrant/.ssh/id_rsa.pub.
The key fingerprint is:
SHA256:jz7EosOiIwfdibh3aFbHqKnX3m16Ijj+sBOFKl2urAw vagrant@buster
The key's randomart image is:
+---[RSA 2048]----+
|                 |
|                 |
|   .             |
|  . o            |
| = * + .S        |
|= = * + oo       |
|E+.@ o o. .      |
|* ^oB..o+        |
|=&oBooo=o.       |
+----[SHA256]-----+
vagrant@buster:~/.ssh$
vagrant@buster:~/.ssh$ ls -ltr
total 16
-rw------- 1 vagrant vagrant  389 Aug 14 18:47 authorized_keys
-rw-r--r-- 1 vagrant vagrant  884 Sep 14 16:50 known_hosts
-rw-r--r-- 1 vagrant vagrant  396 Sep 14 16:58 id_rsa.pub
-rw------- 1 vagrant vagrant 1823 Sep 14 16:58 id_rsa
vagrant@buster:~/.ssh$ cat id_rsa.pub
ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQDUXViEmyXXsmg4RiAfb5U5I7o+MQi3HYhvs8JdgPGk7Ec1H7cfqN20Fr9a/4CVCOzSKhKV2q9MXkJ/GXmMvvzoYr12L7cRgfgZNbqKHc0YOaGYnke23YrP05L9xGOQoJIbOQfQhgy5xZI4NLUm2uREZsXyM5J8jEssJJpwhr60kDRbHjx3mfz8mUHa2M6EvI/VezjX0FKXK7c0yicZ7tHo3zIV9MXwAqu7aECq0AqpzjUKp2W7GWrvYwrSw4a0uZRTKPG1ZIpVtdsX6q5BJKmvJa0VT+6YplYuDdaaEoXC8Zp2LOhKbNJceyEzyxDcFCWqwfykU15NdPmwOM1eAKPh vagrant@buster
vagrant@buster:~/.ssh$
vagrant@buster:~/.ssh$ cd ../.
vagrant@buster:~$ pwd
/home/vagrant
vagrant@buster:~$ cd git
vagrant@buster:~/git$ git clone git@github.com:tripuraripratap/Practise.git
Cloning into 'Practise'...
remote: Enumerating objects: 7, done.
remote: Counting objects: 100% (7/7), done.
remote: Compressing objects: 100% (5/5), done.
remote: Total 7 (delta 0), reused 4 (delta 0), pack-reused 0
Receiving objects: 100% (7/7), done.
vagrant@buster:~/git$ ls -ltr
total 4
drwxr-xr-x 3 vagrant vagrant 4096 Sep 14 17:02 Practise
vagrant@buster:~/git$ ls -ltr
total 4
drwxr-xr-x 3 vagrant vagrant 4096 Sep 14 17:02 Practise
vagrant@buster:~/git$ cd Practise/
vagrant@buster:~/git/Practise$ ls -ltr
total 8
-rw-r--r-- 1 vagrant vagrant 4776 Sep 14 17:02 shell.sh
vagrant@buster:~/git/Practise$
vagrant@buster:~/git/Practise$
vagrant@buster:~/git/Practise$
vagrant@buster:~/git/Practise$
vagrant@buster:~/git/Practise$
vagrant@buster:~/git/Practise$
vagrant@buster:~/git/Practise$
vagrant@buster:~/git/Practise$
vagrant@buster:~/git/Practise$ git branch -a
* master
  remotes/origin/HEAD -> origin/master
  remotes/origin/assignments
  remotes/origin/master
vagrant@buster:~/git/Practise$ git checkout assignments
Branch 'assignments' set up to track remote branch 'assignments' from 'origin'.
Switched to a new branch 'assignments'
vagrant@buster:~/git/Practise$ git branch
* assignments
  master
vagrant@buster:~/git/Practise$
vagrant@buster:~/git/Practise$ ls -ltr
total 12
-rw-r--r-- 1 vagrant vagrant 4776 Sep 14 17:02 shell.sh
-rw-r--r-- 1 vagrant vagrant    0 Sep 14 17:03 dockersetup.txt
-rw-r--r-- 1 vagrant vagrant  290 Sep 14 17:03 assignment.lst
vagrant@buster:~/git/Practise$ cat assignments
cat: assignments: No such file or directory
vagrant@buster:~/git/Practise$ cat assignment.lst
Below are next assignment:
1. install docker on ur server.
2. create a container using docker.
3. login to that running container.
4. git pull.
5. git checkout pratap.
6. put whatever steps u needed to do for above 3 in file dockersetup.txt.
7. You need to push your changes to git remote.
vagrant@buster:~/git/Practise$ history
    1  ls -ltr
    2  exit
    3  test
    4  ??
    5  cls
    6  clear
    7  cal
    8  ls
    9  ls -lrt
   10  who am i
   11  ls -l
   12  ls -a
   13  vi filename
   14  cat filename
   15  vi filename
   16  cat filename
   17  cat -b filename
   18  vi filename
   19  cat -b filename
   20  wc filename
   21  cp filename copyfile
   22  ls -l
   23  mv filename newfile
   24  ls -l
   25  rm filename
   26  cp newfile filename
   27  rm filename
   28  ls -lrt
   29  cp newfile filename
   30  ls -lrt
   31  rm -i filename
   32  ls -lrt
   33  vi
   34  ls -lrt
   35  ./test.sh
   36  ./test
   37  vi test
   38  chomod 777 test
   39  chmod 777
   40  chmof 777 test.sh
   41  chmod 777 test.sh
   42  ls -lrt
   43  chmod 777 test
   44  ls -lrt
   45  ./test.sh
   46  ./test
   47  cat -b test
   48  vi test
   49  cat -b test
   50  ls -lrt
   51  ./test.sh
   52  ./test
   53  ls -la
   54  cd .ssh
   55  ls -lrt
   56  vi authorized_keys
   57  cd ..
   58  ls -lrt
   59  mkdir git
   60  cd git
   61  git clone git@github.com:tripuraripratap/Practise.git
   62  sudo apt-get install git
   63  git clone git@github.com:tripuraripratap/Practise.git
   64  cd
   65  pwd
   66  cd .ssh
   67  ls -ltr
   68  ssh-keygen
   69  ls -ltr
   70  cat id_rsa.pub
   71  cd ../.
   72  pwd
   73  cd git
   74  git clone git@github.com:tripuraripratap/Practise.git
   75  ls -ltr
   76  cd Practise/
   77  ls -ltr
   78  git branch -a
   79  git checkout assignments
   80  git branch
   81  ls -ltr
   82  cat assignments
   83  cat assignment.lst
   84  history
vagrant@buster:~/git/Practise$
