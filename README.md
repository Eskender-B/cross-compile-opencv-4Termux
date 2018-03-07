# Cross Compile Opencv for Termux Android App

This contains scripts and patch files for cross-compiling Opencv to run in [Termux](https://github.com/termux/termux-app) android application.

## How to use
You can directly use the deb files in [debs/](debs/)

Or do the following to produce the deb package:
* First clone [termux-packages](https://github.com/termux/termux-packages)
* Copy and paste [opencv/](opencv/) to packages/ forlder inside the cloned directory
* Then Use the guide provided in [termux-packages](https://github.com/termux/termux-packages)

## Installation

Inside termux you can do:
```bash dpkg -i /path/to/deb/file```
or something like (less recommended):

```bash dpkg -x /path/to/deb/file $PREFIX```
