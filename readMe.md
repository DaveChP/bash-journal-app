# **journal Version 1.0** - A Simple Bash Diary Utility
*Working version, completed March 23rd, 2022.*

## System Requirements

**journal Version 1.0** was built and tested on Terminal in Mac OS X High Sierra, 10.13.6 but should run in Terminal on any Mac. No testing has been conducted on other systems, results may vary. Later versions may include tested compatibility with other systems. The system should contain bash in the root bin `/bin/bash`.

## Download

A public repository for **journal Version 1.0** is available at https://github.com/DaveChP/bash-journal-app

## Summary

**journal** is a simple tool to simplify keeping time-stamped text files as a diary or journal. Once installed, typing `journal` into Terminal's command line will launch a text document (in TextEdit on Mac) headed by a nicely formatted time and date message (like seen on many blogs etc.). The resulting text file is opened and available for the user to enter their writing, before saving in the usual way, without need to name the file or choose a directory.

The document's file name contains a numeric date/time reference allowing journal entries to be ordered and searched more easily. All files are stored in a directory named `journal` at the User's root (`~/journal/`). 

Behind the scenes, journal, in addition to keeping individual diary entries, compiles entries into month files. When the app is launched, the contents of the file made at last launch are pre-pended to a file containing all previous entries for that month. Month files are name with month name and year (e.g. March-2022.txt).

## Installation

journal Version 1.0 is a single bash script. Installing it anywhere on `PATH` will make it available to launch from Terminal regardless of current working directory. When stored on `PATH`, journal can be launched simply by typing `journal` in Terminal. If the app is stored anywhere other than `PATH`, the user can navigate to the housing directory and launch the app by typing `./journal`. 

## Notes

 1 For convenience user apps like journal are best kept in their own `bin` directory. Typically, a directory created at the User's root and named bin is used (`~/bin/`). This directory should be added to `PATH` to enable execution from anywhere in Terminal.
 2 The month files are updated on launch to prepend the last journal entry - The current journal entry is *not added to the month file until the **next** entry* is launched.
 3 The journal app must have its permissions set to executable in order to run (this should be the case when downloaded). If needed, the execution flag can be set from Terminal by navigating to the enclosing directory and typing `chmod +x journal`.
 4 If **journal** is launched twice in the same clock minute, the first file, although open, may be appended with a new formatted date line. When saved, this may lead to a message asking to overwrite an existing file (which should be confirmed). In general, it is best to avoid launching **journal** within a minute of a previous launch. 

## Notes for Bash Programmers

**journal** contains many useful command examples frequently used by bash programmers and may be useful for learning and debugging other applications. These include:

 1 numerous examples of working with `date` formats
 2 several compound `if-then` loop examples
 3 conditionals to check for presence of files and directories
 4 an example of *nested* `if-then` loops
 5 an elegant and efficient way of pre-pending one file to another, without need for name changes or temporary files. 

## About the Author

> *progress depends on tenacious people creating tools to simplify problems to match the skills of those charged with solving them* 

I am a scientist with a life-long interest in computing. I create software utilities to simplify problems, specialising mainly in browser applications, spreadsheet automation, and command line utilities. I believe there is a neglected gap between perfect automation and arcane specialised skills where simple tools would enable ordinary people to achieve complex outcomes. I enjoy creating and refining those tools to suit specific tasks.

I also enjoy defining processes and can create useful written work-flow or procedure instructions such as user manuals and protocols for defined tasks. In this role, I am guided by the need for clear and unambiguous procedure definitions.

I can consider commercial commissions to solve or simplify any processes involving data and files, particularly those considered too specialised, messy, or trivial to be catered for by proprietry software. 

Enquiries to d.c.pritlove@gmail.com




  