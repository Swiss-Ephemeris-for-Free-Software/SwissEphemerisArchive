Archive the Swiss Ephemeris release tarballs and zip files
Not used for development, archive only. 
https://github.com/Swiss-Ephemeris-for-Free-Software/SwissEphemerisArchive.git 
ssh://git@github.com:Swiss-Ephemeris-for-Free-Software/SwissEphemerisArchive.git 
The folks at AstroDienst are excellent astrological programmers who
have created a great GPLed library that can serve as a base for
astrological free software. However, their distribution practices
leave a lot to be desired.

They keep only the latest 2 versions of the swe_unix_src tarballs on
their website. Later versions get rolled off.  The swe_unix_src
tarballs contain binary documentation i.e. pdf and html files, but the
source, (microsoft .doc files), is in another file, sweph.zip.
sweph.zip is not archived by version number, so whenever a new version
comes out, the old version disappears.  SwissEphemerisArchive is not
used for development, it is used to archive the historic Swiss
Ephemeris release from AstroDienst tarballs and zip files. It also has
content directories which allow the historic content to be browsed.

Layout Swiss Ephemeris release numbers are in the following two forms:

2.05
2.05.01
Swiss Ephemeris tarballs have names like this:
swe_unix_src_2.05.tar.gz
swe_unix_src_2.05.01.tar.gz
Swiss Ephemeris zip files originally always have this name: sweph.zip 
But I include an identical file named like this:
sweph.zip (original file name)
sweph-2.05.01.zip (symbolic link to above file)
There are four per release branches, tarball-contents, tarball-delta,
zip-contents, and zip

For each Astro Dienst release there will be a commit in each of these
release branches. The per-release commit in the tarball-contents, and
zip-contents branches will be tagged with its tarball file name, or
zip file name. The *-contents branches will contain the source tree
from the expanded tarball, or zip file. The tarball-delta branch will
contain a small delta file, created by pristine-tar gentar . These
branches will be organized as described below.

Repository Branch Structure
root directory: in master branch
README.md LICENSE
tarball_contents branch
unpacked files from the release tarball
Example:
tar xzf ../../swe_unix_src_2.05.tar.gz
tarball_delta branch
delta file necessary to reconstruct the tarball from tarball_contents
Example:
Reconstruct tarball:
cd tarball_contents 
pristine-tar gentar ../tarball_delta/swe_unix_src_2.05.tar.gz.delta
Create delta:
pristine-tar gendelta \
  ../swe_unix_src_2.05.tar.gz tarball_delta/swe_unix_src_2.05.tar.gz.delta
zip branch
zip file 
sweph.zip, sweph_20.5.zip
zip_contents:
unpacked files from the zip file 
Example:
cd zip_contents 
unzip ../zip/sweph_20.5.zip
