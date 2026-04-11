Note: Certain details given in this document might or might not be out-of-date.

How to identify code changes (and what's this BUILDREV thing)?
--------------------------------------------------------------

Different values of LIBVER_BUILDREV are defined for differing builds
of OBJ/EXE files. This macro is intended to represent a revision
of development of a part of the Build engine and/or the Ken-Build
test game. Usually, this revision value is based on some *guessed* date
(e.g., an original modification date of an OBJ file), but that does not
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
it's commonly called just "alpha" or "beta", `GAMEVER_WOLFREV`
gives us a more explicit description.

What is this based on
---------------------

This codebase was more-or-less started from Ken Silverman's public Ken-Build
release of 2000 as a base. It also got a few (really) minor edits from 2002.

Additional thanks go to Ken for his consent to let other Build engine sources,
headers and object files become accessible under the same terms as of his
2000 release, and even prepare and send many other revisions of such files.
Thus, more Build engine files of him could be used for the recreation efforts.

Some examples of such files becoming available:
- From two 2019 releases, ENGINE.C sources as used in SW 1.1-1.2,
earlier revisions of CACHE1D.OBJ and ENGINE.OBJ from 1996
and older engine sources from 1995.
- More files from a 2024 release, especially June 1995 (buil1995.zip)
and May 1996 (BUILDBAK.ZIP) snapshots of ENGINE.C; But also others,
say a June 1996 (buil062896.zip) snapshot of MMULTI.C.

ENGINE.OBJ as used in SW 1.0 turned out to differ from 1.1-1.2's just by a few
constants used for shifting values in drawmapview, clippoly and fillpolygon.

ENGINE.C files from BUILDBAK.ZIP and buil1995.zip in particular
were useful for further improving the accuracy of recreating ENGINE.OBJ as used
in the Build Editor for Duke3D 1.3d. There was also a bit of CACHE1D.C cleanup,
especially regarding the naming of variables under the functions "compress" and
"uncompress". MMULTI.C from buil062896.zip further helped with a minor cleanup.

Not long before the A.OBJ code used in Duke3D 1.4-1.5 and SW 1.0-1.2 was fully
recreated, Nuke.YKT came in to recreate ENGINE.OBJ as used in Duke3D 1.5, with
the assistance of the aforementioned SW 1.1-1.2 revision. In fact, he had
originally started with Duke3D 1.3d's revision, assuming it was closer to the
one used in Redneck Rampage. Reason is that there was evidence that RR, or at
least its game code, was based on a revision of Duke3D in-between 1.3d and 1.4.
One example is the available CON commands. He later found out that
RR's ENGINE.OBJ code was actually matching Duke3D 1.5, and fully recreated it.
CACHE1D.OBJ itself didn't need that much changes in order to match Duke3D 1.5
and SW 1.0-1.2, while MMULTI.OBJ as used in Duke3D 1.4-1.5 and SW 1.0-1.2
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
in a few cases in which varying choices of some properties in a specific
function were given (say, choosing a permutation of the local variables),
a separate program was used in order to automatically try such choices,
often one-by-one. Generally, not all possibilities were covered,
but in at least a few ocassions, it was sufficient.

Sometimes, a makefile was used. Otherwise, an alternative,
like a call to xargs with multiple jobs, was rather used. The order
in which such choices (e.g., permutations) were processed wasn't
always linear; In fact, it got semi-randomized for the last
tests done while working on the aforementioned engine revision.

Recreated ENGINE.C code impacted by such choices had eventually gone
through an update in 2026 using buil1995.zip and BUILDBAK.ZIP's revisions,
as brought up further above in the context of Duke3D v1.3d's Build Editor.
The aforementioned 19960320 revision of ENGINE.OBJ was useful again.

About a year earlier, Nuke.YKT also added the option
to build engine-side object files matching multiple versions
of Blood and the bundled Build Editor (MapEdit). The Build-side code
had already been there in the sources, but Nuke.YKT adjusted MAKEFILE,
version check macros in sources and other files. Later in 2026, it
turned out that the Build Editors from SW 1.2 and Blood 1.20-1.21
used the same 19961213 revision of BUILD.OBJ.

How was the makefile (and a bit more) modified from the original
----------------------------------------------------------------

It's more-or-less based on the makefile from the public Ken-Build releases,
with changes gradually applied as the time had passed.
