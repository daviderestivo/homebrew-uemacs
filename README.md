# homebrew-uemacs

<p align="center">
  <a href="https://github.com/daviderestivo/homebrew-uemacs/actions/workflows/uemacs.yml">
    <img src="https://github.com/daviderestivo/homebrew-uemacs/actions/workflows/uemacs.yml/badge.svg" alt="uEmacs CI Status Badge">
  </a>
</p>

Homebrew formula for uEmacs, incorporating Linus Torvalds' improvements: [GitHub link](https://github.com/torvalds/uemacs).

## Introduction

uEmacs/PK 4.0 is a screen editor for programming and word processing. It is available for the
IBM-PC and its clones, UNIX® System V and 4.[23]BSD (including SunOS, DEC Ultrix and IBM
AIX), and VAX/VMS. Some of its capabilities include:

- Multiple windows on screen at one time
- Multiple files in the editor at once
- Limited on-screen formatting of text
- User changeable command set
- User written editing macros
- Compatibility across all supported environments

From https://github.com/torvalds/uemacs/blob/master/README

>         +---------------+
>         | uEmacs/PK 4.0 |
>         +---------------+
>
>         Full screen editor based on MicroEMACS 3.9e
>
>         MicroEMACS was written by Dave G. Conroy and
>         greatly modified by Daniel M. Lawrence
>
>         Copyright Notices:
>
>         MicroEMACS 3.9 (c) Copyright 1987 Daniel M. Lawrence.
>         Reference Manual Copyright 1987 by Brian Straight and
>         Daniel M. Lawrence. No copyright claimed for modifications
>         made by Petri H. Kutvonen.
>
>         Original statement of copying policy:
>
>         MicroEMACS 3.9 can be copied and distributed freely for any
>         non-commercial purposes. MicroEMACS 3.9 can only be incorporated
>         into commercial software with the permission of the current author
>         [Daniel M. Lawrence].
>
>
>         WHAT IS uEmacs/PK?
>
>         uEmacs/PK 4.0 is an enhanced version of MicroEMACS 3.9e. Enhancements
>         have been incorporated by Petri H. Kutvonen, University of Helsinki,
>         Finland <kutvonen@cs.Helsinki.FI>.

## Installation

```
brew tap daviderestivo/uemacs
brew install uemacs
```

## Run it

```
em
```

## Documentation

[uEmacs reference manual](./doc/uemacs.pdf)
