{Swiss Ephemeris function declarations for Delphi 1 (16-bit)

 ATTENTION: there may be errors in some less important function
 declarations, because we have not tested all of them.
 If a function does not work, you can try to correct it comparing
 it with the C-declaration in swedll.h. This should be rather simple 
 from the given samples. Please, inform Astrodienst about errors.
}

function swe_calc(tjd          : double;    {Julian day number}
                   ipl         : Integer;   {planet number}
                   iflag       : Longint;   {flag bits}
                   var xx      : double;    {first of 6 doubles}
                   sErr        : PChar      {Error-String}
): Longint; far; external 'swedll16';

procedure swe_close; far; external 'swedll16';

procedure swe_cotrans(var xpin  : double;
                   var xpout    : double;
                   eps          : double
); far; external 'swedll16';

procedure swe_cotrans_sp(var xpin  : double;
                   var xpout    : double;
                   eps          : double
); far; external 'swedll16';

function swe_csnorm(p: Longint
): Longint; far; external 'swedll16';

function swe_csroundsec(x: Longint
): Longint; far; external 'swedll16';

function swe_cs2degstr(t: Longint;
                   s     : pchar
): pchar; far; external 'swedll16';

function swe_cs2lonlatstr(t: Longint;
                   pch   : char;
                   mch   : char;
                   s     : pchar
): pchar; far; external 'swedll16';

function swe_cs2timestr(t: Longint;
                   sep   : integer;
                   suppresszero : integer;
                   s     : pchar
): pchar; far; external 'swedll16';

function swe_date_conversion(year: integer;
                   month       : integer;
                   day         : integer;
                   utime       : double;
                   c           : char;      {'g'regorian or 'j'ulian}
                   var tjd     : double
): integer; far; external 'swedll16';

function swe_day_of_week(var tjd: double
): integer; far; external 'swedll16';

function swe_degnorm_d(var x: double
): integer; far; external 'swedll16';

function swe_deltat_d(var tjd  : double;
                   var deltat  : double
): integer; far; external 'swedll16';

function swe_difcsn(p1: Longint;
                   p2 : Longint
): Longint; far; external 'swedll16';

function swe_difcs2n(p1: Longint;
                   p2 : Longint
): Longint; far; external 'swedll16';

function swe_difdegn_d(var p1 : double;
                   var p2     : double;
                   var diff   : double
): Integer; far; external 'swedll16';

function swe_difdeg2n_d(var p1 : double;
                   var p2     : double;
                   var diff   : double
): Integer; far; external 'swedll16';

function swe_d2l(x: double
): Longint; far; external 'swedll16';

function swe_fixstar(star      : pchar;     {star name}
                   tjd         : double;    {Julian day number}
                   iflag       : Longint;   {flag bits}
                   var xx      : double;    {first of 6 doubles}
                   sErr        : pchar      {Error-String}
): Longint; far; external 'swedll16';

function swe_get_planet_name(ipl : integer;
                   pname      : PChar
) : PChar; far; external 'swedll16';

function swe_get_tid_acc_d(var t_acc: double
) : integer; far; external 'swedll16';

function swe_houses(tjdut      : double;
                    geolat     : double;
                    geolon     : double;
                    hsys       : char;
                    var hcusp0 : double;
                    var ascmc0 : double
) : integer; far; external 'swedll16';

function swe_houses_armc(armc  : double;
                    geolat     : double;
                    eps        : double;
                    hsys       : char;
                    var hcusp0 : double;
                    var ascmc0 : double
) : integer; far; external 'swedll16';

function swe_house_pos_d(var armc: double;
                    var geolon : double;
                    var eps    : double;
                    hsys       : char;
                    var xpin   : double;  {2 doubles: ecl. longitude and latitude}
                    var hpos   : double;  {house position returned}
                    serr       : pchar
): integer; far; external 'swedll16';

function swe_julday_d(year     : integer;
                    month      : integer;
                    day        : integer;
                    var hour   : double;
                    gregflag   : integer;
                    var tjd    : double
) : Integer; far; external 'swedll16';

procedure swe_revjul(tjd        : double;
                    gregflag    : integer;
                    var year    : integer;
                    var month   : integer;
                    var day     : integer;
                    var hour    : double
); far; external 'swedll16';

procedure swe_set_ephe_path(path: pchar
); far; external 'swedll16';

procedure swe_set_jpl_file(fname: pchar
); far; external 'swedll16';

procedure swe_set_tid_acc(t_acc: double
); far; external 'swedll16';

procedure swe_set_topo(geolon   : double;
                   geolat       : double;
                   height       : double
); far; external 'swedll16';

function swe_sidtime_d(var tjdut: double;
                    var tsid   : double
) : Integer; far; external 'swedll16';

function swe_sidtime0_d(var tjdut: double;
                    var eps_true: double;
                    var nut_long: double;
                    var tsid    : double
) : Integer; far; external 'swedll16';



{ Swiss Ephemeris constants for Pascal }
CONST

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

{
  flag bits for parameter iflag in function swe_calc()
  The flag bits are defined in such a way that iflag = 0 delivers what one
  usually wants:
     - the default ephemeris (SWIEPH) is used,
     - apparent geocentric positions referring to the true equinox of date are returned.
  If not only coordinates, but also speed values are required, use iflag = SEFLG_SPEED.
 }
SEFLG_JPLEPH : Longint =    	1;       { use JPL ephemeris }
SEFLG_SWIEPH : Longint =    	2;       { use SWISSEPH ephemeris }
SEFLG_MOSEPH : Longint =    	4;       { use Moshier ephemeris }
SEFLG_HELCTR : Longint =        8;      { return heliocentric position }
SEFLG_TRUEPOS : Longint =       16;    { return true positions, not apparent }
SEFLG_J2000 : Longint =         32;    { no precession, i.e. give J2000 equinox }
SEFLG_NONUT : Longint =         64;    { no nutation, i.e. mean equinox of date }
SEFLG_SPEED : Longint =         256;    { high precision speed (analytical computation) }
SEFLG_NOGDEFL : Longint =       512;    { turn off gravitational deflection }
SEFLG_NOABERR : Longint =       1024;   { turn off 'annual' aberration of light }
SEFLG_EQUATORIAL : Longint =    (2*1024);   { equatorial positions are wanted }
SEFLG_XYZ : Longint =           (4*1024);   { cartesian, not polar, coordinates are wanted}
SEFLG_RADIANS : Longint =       (8*1024);   { coordinates are wanted in radians, not degrees }
SEFLG_BARYCTR : Longint =       (16*1024);  { barycentric positions }
SEFLG_TOPOCTR : Longint =       (32*1024);  { topocentric positions }

SE_MAX_STNAME : Longint =	20;	{ maximum size of fixstar name;
                                          the parameter star in swe_fixstar
					  must allow twice this space for
				          the returned star name.
					 }
