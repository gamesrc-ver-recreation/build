Modified Build Engine sources with multiple reconstructed versions
==================================================================

This source tree covers a modification of the open-source release
of the Build Engine (and Ken-Build), with the main goal being a
reconstruction of sources matching multiple released binaries.

In case you try making binaries from this codebase, the usual caveat is
that even with what appear to be the right tools, you might not get an exact
binary as it was released back in the days, for multiple technical reasons.

List of covered versions
------------------------

- A.OBJ, BUILD.OBJ, CACHE1D.OBJ and ENGINE.OBJ as used in the Build Editor
for Duke3D 1.3d.
- A.OBJ as presumably prepared on 19960501, and used in Duke3D 1.4-1.5,
SW 1.0-1.2 and Blood 0.91-1.21, as well as the Build Editors for Duke3D 1.4,
SW 1.2 and Blood 1.0-1.21 (Duke3D 1.4's editor was reused for 1.5).
- MMULTI.OBJ as prepared on 19960904 and used in Duke3D 1.4-1.5, SW 1.0-1.2
and Blood 0.91-1.21 (*presumably* also in 2DRAW, as available from Ken's site
and prepared in 99).
- CACHE1D.OBJ as present in Duke3D 1.4 and its revision of the Build editor.
- BUILD.OBJ and ENGINE.OBJ as present in Duke3D 1.4-1.5's Build Editor
(ENGINE.OBJ has differences from the revision in the Duke3D 1.4 game EXE).
- ENGINE.OBJ as present in Duke3D 1.4 (the game EXE).
- A 19960925 revision of BUILD.OBJ used in the Build Editors for Blood 1.0-1.21.
- ENGINE.OBJ (19961006) and CACHE1D.obj (19960925) used in Blood 0.91-1.21
as well as the Build Editors for Blood 1.0-1.21.
- A 19961012 revision of BUILD.OBJ and ENGINE.OBJ.
- CACHE1D.OBJ and ENGINE.OBJ as present in Duke3D 1.5; The latter was possibly
prepared on 19961112, while the former was *maybe* prepared on 19961207.
- BUILD.OBJ as used in SW 1.2's Build Editor, possibly prepared on 19961213
(it has just one minor difference from the 19961012 revision).
- ENGINE.OBJ as used in SW 1.0, possibly prepared on 19970212.
- ENGINE.OBJ as used in SW 1.1-1.2 and 1.2's Build Editor,
possibly prepared on 19970522.
- Ken-Build's GAME.EXE as originally prepared in 2000.
- An updated Ken-Build's GAME.EXE file, uploaded in 2002.

List of releases by output directory names
------------------------------------------

Usually, a proper list would be given. However, unlike
the releases of other libraries in static library forms
(e.g., .LIB files for Watcom), the Build engine was generally
made available as a collection of separate .OBJ files;
Hence, it's possible that multiple files of different
revisions would be used in the same EXE.

In fact - there's evidence that this happened. Indeed, on the one hand,
SW 1.0-1.2 seem to use the same A.OBJ, CACHE1D.OBJ and MMULTI.OBJ code as
used in Duke3D 1.5; Duke3D 1.4 is further matching on A.OBJ and MMULTI.OBJ.
The CACHE1D.OBJ and MMULTI.OBJ files were probably made with Watcom C 10.5.
On the other hand, the ENGINE.OBJ files from SW 1.0-1.2 were apparently made
using Watcom C 10.6. In fact, a copy of the sources for ENGINE.OBJ as
used for SW 1.1-1.2 was found alongside SW sources under a directory
named "blddbg". Evidence shows that these sources were
really built by at least one SW dev, rather than Ken.

You can still select one or a few files to build/clean at a time,
using DOBUILD.BAT/DOCLEAN.BAT. A list of choices should be shown.

Usually, a single directory will be created with the corresponding file(s).
There are exceptions for DN3D14, DN3D14B, DN3D14G, BLOOD and DN3D15.
In particular, each of BLOOD and DN3D15 refers to files in separate directories.

Prerequisites for building each OBJ or EXE file
-----------------------------------------------

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

Notes before trying to build
----------------------------

- This may depend on luck. Even if the code is generally 100% matching,
the OBJ files may still include data like original paths and timestamps
of source files (including local or system headers).
- Use DOBUILD.BAT to build the desired files (don't call wmake directly),
or DOCLEAN.BAT to remove them.

For reference, a list of such original paths in use is given here:

- MMULTI.OBJ: C:\C\CPROG\2DRAW for local files, c:\watcom\h for system headers.
- The 19961207 (Duke3D 1.5) revision of CACHE1D.OBJ and the 19960320 and
19970212 (SW 1.0) revisions of ENGINE.OBJ: C:\C\CPROG\BUILD for
local files, c:\watcom\h for system headers.
- The 19960317, 19961006 (Blood), 19961012 and 19961213 (SW 1.2 Build Editor)
revisions of BUILD.OBJ, the 19960319 revision of CACHE1D.OBJ and the 19960213,
19960925 (Blood), 19961012, 19961112 (Duke3D 1.5) and 19970522 (SW 1.1-1.2)
revisions of ENGINE.OBJ:
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
