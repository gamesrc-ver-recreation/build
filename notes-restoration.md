*** WARNING: DO NOT TRY TOO HARD TO BUILD ANY OF THE ORIGINAL FILES! ***

Please remember that any little difference, not matter how small it is, can
lead to a vastly different OBJ or EXE layout. This includes differences in:

- The development tools (or parts of such); For instance, a compiler, a linker,
an assembler, or even a support library or header. A version number is not a
promise for having the exact tool used to reproduce some library or executable.
- The order in which source code files are listed in a given project or
makefile.
- Project settings.
- Source file specific settings in such a project.
- The order in which object or library files are passed to a linker.
- Any modification to a source code file (especially a header file).
- More than any of the above.

Following the warning, a description of the ways in which the objects and
executable were reproduced is given.

With the right tools, this patched codebase can be used to reproduce any of
the objects, or executable, as coming from the following original releases,
with a few caveats for ENGINE.OBJ as used in the Build Editor for Duke3D 1.3d:

- A.OBJ, BUILD.OBJ, CACHE1D.OBJ and ENGINE.OBJ as used in the Build Editor
for Duke3D 1.3d.
- A.OBJ as presumably prepared on 19960501, and used in Duke3D 1.4-1.5 and
SW 1.0-1.2, as well as the Build Editors for Duke3D 1.4 and SW 1.2
(Duke3D 1.4's editor was reused for 1.5).
- MMULTI.OBJ as prepared on 19960904 and used in Duke3D 1.4-1.5 and SW 1.0-1.2
(*presumably* also in 2DRAW, as available from Ken's site and prepared in 99).
- CACHE1D.OBJ as present in Duke3D 1.4 and its revision of the Build editor.
- BUILD.OBJ and ENGINE.OBJ as present in Duke3D 1.4-1.5's Build Editor
(ENGINE.OBJ has differences from the revision in the Duke3D 1.4 game EXE).
- ENGINE.OBJ as present in Duke3D 1.4 (the game EXE).
- A 19961012 revision of BUILD.OBJ and ENGINE.OBJ.
- CACHE1D.OBJ and ENGINE.OBJ as present in Duke3D 1.5; The latter was possibly
prepared on 19961112, while the former was *maybe* prepared on 19961207.
- BUILD.OBJ as used in SW 1.2's Build Editor, possibly prepared on 19961213
(it has just one minor difference from the 19961012 revision).
- ENGINE.OBJ as used in SW 1.0, possibly prepared on 19970212.
- ENGINE.OBJ as used in SW 1.1-1.2 and 1.2's Build Editor,
possibly prepared on 19970522.
- The Ken-Build GAME.EXE file as originally prepared in 2000.
- An updated Ken-Build GAME.EXE file, uploaded in 2002.

List of releases by LIB/directory file names
--------------------------------------------

Usually, a proper list would be given. However, unlike
the releases of other libraries as standalone library files
(e.g., .LIB), the Build engine was generally made available
as a collection of separate .OBJ files; So it's possible
that multiple files of different revisions would be used
in the same EXE.

In fact - there's evidence that this happened. Indeed, on the one hand,
SW 1.0-1.2 seem to use the same A.OBJ, CACHE1D.OBJ and MMULTI.OBJ code as
used in Duke3D 1.5 (Duke3D 1.4 is further matching on A.OBJ and MMULTI.OBJ).
The CACHE1D.OBJ and MMULTI.OBJ files were probably made with Watcom C 10.5.
However, the ENGINE.OBJ files used for SW 1.0-1.2 were apparently made using
Watcom C 10.6. In fact, a copy of the sources for ENGINE.OBJ as used
for SW 1.1-1.2 was found alongside SW sources under a directory
named "blddbg", and evidence shows that these sources were
really built by at least one SW dev, rather than Ken.

You can still select one or a few files to build/clean at a time,
using DOBUILD.BAT/DOCLEAN.BAT. A list of choices should be shown.

Usually a single directory will be created with the corresponding file(s).
There are exceptions for DN3D14, DN3D14B, DN3D14G and DN3D15.
In particular, DN3D15 refers to files in separate directories.

How to identify code changes (and what's this BUILDREV thing)?
--------------------------------------------------------------

Different values of LIBVER_BUILDREV are defined for differing builds
of OBJ/EXE files. This macro is intended to represent a revision
of development of a part of the Build engine and/or the Ken-Build
test game. Usually, this revision value is based on some *guessed* date
(e.g., an original modification date of an OBJ file), but this does not
have to be the case.

An exception is made for the A.ASM source, since there are two variants
of it. One of them is the file as released in 2000, intended to be built
with Watcom Assembler, in order to recreate GAME.EXE as uploaded in
2000 or 2002. The other A.ASM file is intended to be built with
Macro Assembler 5.10, and should match earlier A.OBJ files,
like the one used in Duke3D 1.4-1.5 and SW 1.0-1.2.

These are two good reasons for using BUILDREV as described above, referring
to similar work done for Wolfenstein 3D EXEs (built with Borland C++):

- WL1AP12 and WL6AP11 share the same code revision. However, WL1AP11
is of an earlier revision. Thus, the usage of WOLFREV can be
less confusing.
- WOLFREV is a good way to describe the early March 1992 build. While
it's commonly called just "alpha" or "beta", GAMEVER_WOLFREV
gives us a more explicit description.

What is this based on
---------------------

This codebase was more-or-less started from Ken Silverman's public Ken-Build
release of 2000 as a base. It also got a few (really) minor edits from 2002.

Additional thanks go to Ken for his consent to let other Build engine sources
become accessible under the same terms as of his 2000 release. Thus,
additional files could be used for the recreation efforts.
In particular, this included the sources for ENGINE.OBJ as used
in SW 1.1-1.2, earlier revisions of CACHE1D.OBJ and ENGINE.OBJ
from 1996, and older engine sources from 1995.

ENGINE.OBJ as used in SW 1.0 turned out to differ from 1.1-1.2's just by a few
constants used for shifting values in drawmapview, clippoly and fillpolygon.

Not long before the A.OBJ code used in Duke3D 1.4-1.5 and SW 1.0-1.2 was fully
recreated, Nuke.YKT came in to recreate ENGINE.OBJ as used in Duke3D 1.5, with
the assistance of the aforementioned SW 1.1-1.2 revision. In fact, originally
he started with Duke3D 1.3d's revision, assuming it was closer to the one used
in Redneck Rampage. Reason is that there was evidence that RR, or at least
its game code, was based on a revision of Duke3D in-between 1.3d and 1.4. One
example is the available CON commands. He later found out that RR's ENGINE.OBJ
code was actually matching Duke3D 1.5, and fully recreated it. CACHE1D.OBJ
itself didn't need that much changes in order to match Duke3D 1.5 and
SW 1.0-1.2, while MMULTI.OBJ as used in Duke3D 1.4-1.5 and SW 1.0-1.2
essentially has the same code as in the public Ken-Build releases
(although at least the 2000 release uses a more recent build of MMULTI.OBJ).

Later, Nuke.YKT separately assisted with the recreation of ENGINE.OBJ as
used in Duke3D 1.4. As in the case of 1.5, CACHE1D.OBJ didn't need that
much changes for 1.4. The 19961012 revision of ENGINE.OBJ, which
is really close to Duke3D 1.5's revision, was initially used
in order to assist with the recreation of 1.4's revision.
Later, the 1995 sources were used as a reference.

The Build Editor for Duke3D 1.4 (reused for 1.5) turned out to use a bit
older ENGINE.OBJ, albeit it's quite similar to the game's.

As stated above, during his work on RR, Nuke.YKT originally tried to
recreate Duke3D 1.3d's ENGINE.OBJ. He also did this with other
object files. While eventually found out that RR uses 1.5's revision,
this work of him was later used in order to recreate the ENGINE.OBJ
and CACHE1D.OBJ code used in the Build Editor for Duke3D 1.3d.
19960213 and 19960320 revisions of ENGINE.OBJ, as well as a 19960319
revision of CACHE1D.OBJ, were further used in this process.
For A.OBJ, he did figure out that stretchhline was originally not present. More
changes were later applied in order to match the aforementioned editor EXE.

Generally, BUILD.OBJ didn't need a lot of changes in-between Duke3D v1.3d's
editor and the Ken-Build revision from 2000. Most significant in terms of
impacted code size are probably the functions loopnumofsector and setfirstwall
moving at some point from BUILD.OBJ to ENGINE.OBJ, as mentioned
in the BUILD Revision History entry for 9/6/96 within BUILD2.TXT.
(Just setfirstwall was mentioned; It depends on loopnumofsector.)

At some later point, it was Ken who figured out how to perfectly
recreate GAME.EXE as uploaded in 2002.

On another note, while working on the engine of Duke3D v1.3d's Build Editor,
then in a few cases in which varying choices of some properties in a certain
function were given (say, choosing a permutation of the local variables),
a separate program was used in order to automatically try such choices,
often one-by-one. Generally, not all possibilities were covered,
but in at least a few ocassions, it was sufficient.

Sometimes, a makefile was used. Otherwise, an alternative,
like a call to xargs with multiple jobs, was rather used. The order
in which such choices (e.g., permutations) were processed wasn't
always linear; In fact, it got semi-randomized for the last
tests done while working on the aforementioned engine revision.

How was the makefile (and a bit more) modified from the original
----------------------------------------------------------------

It's more-or-less based on the makefile from the public Ken-Build releases,
with changes gradually applied as the time had passed.

Building the files
==================

Required tools:

- For A.OBJ as presumably prepared on 19960501 and earlier
revisions: MASM 5.10 (and no other version).
- For the 19970212 (SW 1.0) and 19970522 (SW 1.1-1.2) revisions
of ENGINE.OBJ: Watcom C 10.6 (and only this version).
- For Ken-Build as released on 20000614: Watcom C 11.0. (Not 11.0a/b/c, etc.)
- For the 20021107 revision of Ken-Build: Watcom C 11.0c beta Windows binaries.
Not any other version in the 11.0 series, and also not binw\wcc386.exe.
It's binnt\wcc386.exe which should rather be used.
- For anything else: Watcom C 10.5.

Notes before trying to build anything:

- This may depend on luck. Even if the code is generally 100% matching,
the OBJ files may still include data like original paths and timestamps
of source files (including local or system headers).
- In fact, it's known that a few functions won't perfectly match in
layout for the 19960320 and earlier revisions of ENGINE.OBJ. The exact
list of involved functions depends on the revision, but a few examples are
wallscan, initengine, drawmasks and completemirror; Especially the latter.
- Use DOBUILD.BAT to build the desired files (don't call wmake directly),
or DOCLEAN.BAT to remove them.

For reference, a list of such original paths in use is given here:

- MMULTI.OBJ: C:\C\CPROG\2DRAW for local files, c:\watcom\h for system headers.
- The 19961207 (Duke3D 1.5) revision of CACHE1D.OBJ and the 19960320 and
19970212 (SW 1.0) revisions of ENGINE.OBJ: C:\C\CPROG\BUILD for
local files, c:\watcom\h for system headers.
- The 19960317, 19961012 and 19961213 (SW 1.2 Build Editor) revisions of
BUILD.OBJ, the 19960319 revision of CACHE1D.OBJ and the 19960213, 19961012,
19961112 (Duke3D 1.5) and 19970522 (SW 1.1-1.2) revisions of ENGINE.OBJ:
D: for local files, c:\watcom\h for system headers.

Building a specific set of files
--------------------------------

1. Use DOBUILD.BAT, selecting the file(s) to create.
2. If you're building Ken-Build, you should hopefully get exactly the
original EXE. For all other choices, except for the 19960320 and earlier
revisions of ENGINE.OBJ, hopefully you should get perfectly matching
OBJ files, in terms of the code that gets added to EXEs later.
The aforementioned revisions of ENGINE.OBJ are expected
to differ at least a bit in layout.
