Journal.sh
==========

Journal.sh is a tiny annoying program that will help you
remember things (and make you a better person (and make
your life less miserable)).

Easy Mode
---------

Install `journal.sh`.

```
ln -s $(pwd)/journal.sh /usr/local/bin/journal.sh
chmod +x /usr/local/bin/journal.sh
```

Normal mode
-----------

Alias a program you seldomly use to run `journal.sh` before
the actual program.

```
# ~/.bashrc
#
# # NOTE: Write a journal entry first before I do anything
# #       stupid.
# alias pacman='journal.sh && pacman'
#
```

Hard Mode
---------

Alias a program you usually use to run `journal.sh` before
the actual program.

```
# ~/.bashrc
#
# # NOTE: Journal before code!
# alias vim='journal.sh && vim'
#
```

Annoying Mode
-------------

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
