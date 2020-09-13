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
