
{ Swiss Ephemeris constants for Pascal }

SE_ECL_NUT : integer =      -1;

SE_SUN : integer =          0;       
SE_MOON : integer =         1;       
SE_MERCURY : integer =      2;      
SE_VENUS : integer =        3;      
SE_MARS : integer =         4;      
SE_JUPITER : integer =      5;      
SE_SATURN : integer =       6;      
SE_URANUS : integer =       7;      
SE_NEPTUNE : integer =      8;      
SE_PLUTO : integer =        9;      
SE_MEAN_NODE : integer =    10;     
SE_TRUE_NODE : integer =    11;
SE_MEAN_APOG : integer =    12;      
SE_OSCU_APOG : integer =    13;    
SE_EARTH : integer =        14;      
SE_CHIRON : integer =       15;     
SE_PHOLUS : integer =       16;     
SE_CERES : integer =        17;     
SE_PALLAS : integer =       18;     
SE_JUNO : integer =         19;     
SE_VESTA : integer =        20;     

SE_NPLANETS : integer =     21;     

SE_AST_OFFSET : integer =   10000;
SE_FICT_OFFSET : integer =  40;
SE_NFICT_ELEM : integer =   15;

{ Hamburger or Uranian "planets" }
SE_CUPIDO : integer =       	40;
SE_HADES : integer =        	41;
SE_ZEUS : integer =         	42;
SE_KRONOS : integer =       	43;
SE_APOLLON : integer =      	44;
SE_ADMETOS : integer =      	45;
SE_VULKANUS : integer =     	46;
SE_POSEIDON : integer =     	47;
{ other ficticious bodies }
SE_ISIS : integer =         	48;
SE_NIBIRU : integer =       	49;
SE_HARRINGTON : integer =           50;
SE_NEPTUNE_LEVERRIER : integer =    51;
SE_NEPTUNE_ADAMS : integer =        52;
SE_PLUTO_LOWELL : integer =         53;
SE_PLUTO_PICKERING : integer =      54;

SE_FIXSTAR : integer =      -10;

{
  flag bits for parameter iflag in function swe_calc()
  The flag bits are defined in such a way that iflag = 0 delivers what one
  usually wants:
     - the default ephemeris (SWISS) is used,
     - apparent geocentric positions referring to the true equinox of date are returned.
  If not only coordinates, but also speed values are required, use iflag = SEFLG_SPEED.
 }
SEFLG_JPLEPH : longint =    	1;       { use JPL ephemeris }
SEFLG_SWIEPH : longint =    	2;       { use SWISSEPH ephemeris }
SEFLG_MOSEPH : longint =    	4;       { use Moshier ephemeris }
SEFLG_HELCTR : longint =        8;      { return heliocentric position }
SEFLG_TRUEPOS : longint =       16;    { return true positions, not apparent }
SEFLG_J2000 : longint =         32;    { no precession, i.e. give J2000 equinox }
SEFLG_NONUT : longint =         64;    { no nutation, i.e. mean equinox of date }
SEFLG_SPEED : longint =         256;    { high precision speed (analytical computation) }
SEFLG_NOGDEFL : longint =       512;    { turn off gravitational deflection }
SEFLG_NOABERR : longint =       1024;   { turn off 'annual' aberration of light }
SEFLG_EQUATORIAL : longint =    (2*1024);   { equatorial positions are wanted }
SEFLG_XYZ : longint =           (4*1024);   { cartesian, not polar, coordinates are wanted}
SEFLG_RADIANS : longint =       (8*1024);   { coordinates are wanted in radians, not degrees }
SEFLG_BARYCTR : longint =       (16*1024);  { barycentric positions }
SEFLG_TOPOCTR : longint =       (32*1024);  { topocentric positions }

SE_MAX_STNAME : longint =	20;	{ maximum size of fixstar name;
                                          the parameter star in swe_fixstar
					  must allow twice this space for
				          the returned star name.
					 }
