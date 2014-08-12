Journal.sh
==========

Journal.sh is a tiny annoying program that will help you
remember things (and make you a better person (and make
your life less miserable)).

How to Use
----------

```
$ journal.sh
Please write a new entry to your journal entry (08-12-14)
Will proceed to use ${EDITOR}: vim [ENTER]
```

Installation
------------

There are 4 installation modes depending on how serious you
are.

### Easy Mode

Install `journal.sh`.

```
ln -s $(pwd)/journal.sh /usr/local/bin/journal.sh
chmod +x /usr/local/bin/journal.sh
```

### Normal mode

Alias a program you seldomly use to run `journal.sh` before
the actual program.

```
# ~/.bashrc
#
# # NOTE: Write a journal entry first before I break my 
# #       system.
# alias pacman='journal.sh && pacman'
#
```

### Hard Mode

Alias a program you usually use to run `journal.sh` before
the actual program.

**XXX** Do not use with `$EDITOR`. You might end-up in an
infinite loop.

```
# ~/.bashrc
#
# # NOTE: Journal before code!
# alias vim='journal.sh && vim'
#
```

### Annoying Mode

Prohibit access to terminal until you have written anything
in your journal.

```
# ~/.bashrc
#
# exit=1
# while [$exit -eq 1]
# do
#   /usr/local/bin/journal.sh
#   exit=$?
# done
# 
```
