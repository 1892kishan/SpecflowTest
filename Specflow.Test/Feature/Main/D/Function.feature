Feature: Function

# JSON AUTO - not supported (known Limitation)
# Depth not supported (known Limitation)

@Rest
Scenario: As Builder Verify Function SYSDATETIME
	Then As User Builder Run cql statement SELECT SYSDATETIME(); and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#Date Format of the system has to be YYYY-MM-DD
@Rest @Ignore @Local
Scenario: As Builder Verify Function SYSDATETIMEOFFSET
	Then As User Builder Run cql statement SELECT SYSDATETIMEOFFSET(); and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function SYSUTCDATETIME
	Then As User Builder Run cql statement SELECT SYSUTCDATETIME(); and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function GETDATE()
	Then As User Builder Run cql statement SELECT GETDATE(); and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function GETUTCDATE
	Then As User Builder Run cql statement SELECT GETUTCDATE() and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function DATENAME
	Then As User Builder Run cql statement SELECT DATENAME(year, '2007-10-30 12:15:32.1234567 +05:10'),DATENAME(month, '2007-10-30 12:15:32.1234567 +05:10'),DATENAME(day, '2007-10-30 12:15:32.1234567 +05:10') ,DATENAME(dayofyear, '2007-10-30 12:15:32.1234567 +05:10') ,DATENAME(weekday, '2007-10-30 12:15:32.1234567 +05:10'); and validate text result Column1,Column2,Column3,Column4,Column52007,October,30,303,Tuesday with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function DAY
	Then As User Builder Run cql statement SELECT DAY([Start Date]) from [Mock].[ReferenceTable1] ORDER By [Cinchy Id] DESC and validate text result Column1222222226311232631123112226312226311111 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function MONTH
	Then As User Builder Run cql statement SELECT Month([Start Date]) from [Mock].[ReferenceTable1] ORDER By [Cinchy Id] DESC and validate text result Column111111111111111118111021111118111021111102111111811101111118111022112 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function YEAR
	Then As User Builder Run cql statement SELECT YEAR([Start Date]) from [Mock].[ReferenceTable1] ORDER By [Cinchy Id] DESC and validate text result Column1202020202020202020202020202020202020202020202021202020202020202020202020202120202020202020212020202020202020202020202020202020202020202020202021202120212020 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function DATEFROMPARTS
	Then As User Builder Run cql statement SELECT DATEFROMPARTS ( 2010, 12, 31 ); and validate date 2010-12-31 in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function DATETIME2FROMPARTS
	Then As User Builder Run cql statement SELECT DATETIME2FROMPARTS ( 2010, 12, 31, 23, 59, 59, 0, 0 ); and validate date 2010-12-31 in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function DATETIMEFROMPARTS
	Then As User Builder Run cql statement SELECT DATETIMEFROMPARTS ( 2010, 12, 31, 23, 59, 59, 0 ) and validate date 2010-12-31 in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#Date Format of the system has to be YYYY-MM-DD
@Rest @Ignore @Local
Scenario: As Builder Verify Function DATETIMEOFFSETFROMPARTS
	Then As User Builder Run cql statement SELECT DATETIMEOFFSETFROMPARTS ( 2010, 12, 31, 14, 23, 23, 0, 12, 0, 7 ) and validate date 2010-12-31 in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function SMALLDATETIMEFROMPARTS
	Then As User Builder Run cql statement SELECT SMALLDATETIMEFROMPARTS ( 2010, 12, 31, 23, 59 ) and validate date 2010-12-31 in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function TIMEFROMPARTS
	Then As User Builder Run cql statement SELECT CASE WHEN TIMEFROMPARTS ( 14, 23, 44, 5, 1 ) IS NULL THEN 'EMPTY' ELSE 'NONEMPTY' END  and validate text result Column1NONEMPTY with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function DATEDIFF
	Then As User Builder Run cql statement SELECT DATEDIFF(year, [Start Date], '2026-01-01 00:00:00.0000000') from [Mock].[ReferenceTable1] ORDER BY [Cinchy Id] desc and validate text result Column1666666666665666666566656666666666665556 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function DATEDIFF_BIG
	Then As User Builder Run cql statement SELECT DATEDIFF_BIG(year, [Start Date], '2026-01-01 00:00:00.0000000') from [Mock].[ReferenceTable1] ORDER BY [Cinchy Id] desc and validate text result Column1666666666665666666566656666666666665556 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function DATEADD
	Then As User Builder Run cql statement SELECT DATEADD(month, 1, [Start Date]) from [Mock].[ReferenceTable1] ORDER BY [Cinchy Id] desc and validate text result Column12020-12-02 00:00:002020-12-02 00:00:002020-12-02 00:00:002020-12-02 00:00:002020-12-02 00:00:002020-12-02 00:00:002020-12-02 00:00:002020-12-02 00:00:002020-09-06 00:00:002020-12-03 00:00:002020-11-01 00:00:002021-03-01 00:00:002020-12-02 00:00:002020-12-03 00:00:002020-12-02 00:00:002020-09-06 00:00:002020-12-03 00:00:002020-11-01 00:00:002021-03-01 00:00:002020-12-02 00:00:002020-12-03 00:00:002020-11-01 00:00:002021-03-01 00:00:002020-12-02 00:00:002020-12-02 00:00:002020-12-02 00:00:002020-09-06 00:00:002020-12-03 00:00:002020-11-01 00:00:002020-12-02 00:00:002020-12-02 00:00:002020-12-02 00:00:002020-09-06 00:00:002020-12-03 00:00:002020-11-01 00:00:002021-03-01 00:00:002021-03-01 00:00:002021-02-01 00:00:002021-01-01 00:00:00 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function EOMONTH
	Then As User Builder Run cql statement SELECT EOMONTH ([Start Date]) from [Mock].[ReferenceTable1] ORDER BY [Cinchy Id] desc and validate text result Column12020-11-30 00:00:002020-11-30 00:00:002020-11-30 00:00:002020-11-30 00:00:002020-11-30 00:00:002020-11-30 00:00:002020-11-30 00:00:002020-11-30 00:00:002020-08-31 00:00:002020-11-30 00:00:002020-10-31 00:00:002021-02-28 00:00:002020-11-30 00:00:002020-11-30 00:00:002020-11-30 00:00:002020-08-31 00:00:002020-11-30 00:00:002020-10-31 00:00:002021-02-28 00:00:002020-11-30 00:00:002020-11-30 00:00:002020-10-31 00:00:002021-02-28 00:00:002020-11-30 00:00:002020-11-30 00:00:002020-11-30 00:00:002020-08-31 00:00:002020-11-30 00:00:002020-10-31 00:00:002020-11-30 00:00:002020-11-30 00:00:002020-11-30 00:00:002020-08-31 00:00:002020-11-30 00:00:002020-10-31 00:00:002021-02-28 00:00:002021-02-28 00:00:002021-01-31 00:00:002020-12-31 00:00:00 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#Date Format of the system has to be YYYY-MM-DD
@Rest @Ignore @Local
Scenario: As Builder Verify Function SWITCHOFFSET
	Then As User Builder Run cql statement SELECT TOP 1 SWITCHOFFSET([Start Date],'+08:00') from [Mock].[ReferenceTable1] ORDER BY [Cinchy Id] asc and validate date 2020-12-01 in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#Date Format of the system has to be YYYY-MM-DD
@Rest @Ignore @Local
Scenario: As Builder Verify Function TODATETIMEOFFSET
	Then As User Builder Run cql statement SELECT TODATETIMEOFFSET (GETDATE(), '-07:00'); and validate date today in format yyyy-MM-dd with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function ISDATE from table
	Then As User Builder Run cql statement SELECT TOP 1 ISDATE(CAST([Start Date] as varchar(50))) from [Mock].[ReferenceTable1] and validate text result Column10 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function ISDATE
	Then As User Builder Run cql statement SELECT ISDATE('2009-05-12 10:19:41.177')  and validate text result Column11 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin Verify Function STRING_AGG
	Then As User Admin Run cql statement SELECT STRING_AGG([Id],';') id_list FROM [Mock].[EmployeeDelete1] and validate text result id_list1;2;3;4;5;6;7;8;9;10;11;12;13;14;15;16;17;18;19;20;21;22;23;24;25;26;27;28;29;30;31;32;33 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin Verify Function COUNT
	Then As User Admin Run cql statement SELECT COUNT([Id]) FROM [Mock].[PlayGround1] and validate number result Column1 33 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin Verify Function COUNT_BIG
	Then As User Admin Run cql statement SELECT COUNT_BIG([Id]) FROM [Mock].[PlayGround1] and validate number result Column1 33 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function GROUPING
	Then As User Builder Run cql statement SELECT GROUPING([Job]) AS 'Role' FROM [Mock].[ReferenceTable1] GROUP BY [Job] WITH ROLLUP; and validate text result Role0000000000000000000000000000000000001 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin Verify Function MAX
	Then As User Admin Run cql statement SELECT MAX([Id]) FROM [Mock].[PlayGround1]  and validate number result Column1 33 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin Verify Function MIN
	Then As User Admin Run cql statement SELECT MIN([Id]) FROM [Mock].[PlayGround1] and validate number result Column1 1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin Verify Function STDEV
	Then As User Admin Run cql statement SELECT STDEV([Id]) FROM [Mock].[EmployeeDelete1] and validate number result Column1 9.66953980290686 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin Verify Function STDEVP
	Then As User Admin Run cql statement SELECT STDEVP([Id])FROM [Mock].[EmployeeDelete1] and validate number result Column1 9.52190457139047 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function SUM
	Then As User Builder Run cql statement SELECT SUM([Id]) FROM [Mock].[ReferenceTable1] and validate number result Column1 780 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin Verify Function VAR
	Then As User Admin Run cql statement SELECT VAR([Id])FROM [Mock].[EmployeeDelete1] and validate number result Column1 93.5 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin Verify Function VARP
	Then As User Admin Run cql statement SELECT VARP([Id])FROM [Mock].[EmployeeDelete1] and validate number result Column1 90.6666666666667 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin Verify Function ROW_NUMBER
	Then As User Admin Run cql statement SELECT ROW_NUMBER() OVER (	ORDER BY [Name]   ) id FROM    [Mock].[EmployeeDelete1] and validate number result id 123456789101112131415161718192021222324252627282930313233 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function CURRENT_TIMEZONE
	Then As User Builder Run cql statement SELECT CASE WHEN CURRENT_TIMEZONE() IS NOT NULL THEN 'PRESENT' ELSE 'EMPTY' END and validate text result Column1PRESENT with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin Verify Function ALL
	Then As User Admin Run cql statement SELECT ALL [Name] FROM [Mock].[EmployeeDelete1] WHERE [Id] BETWEEN 1 AND 3 and validate text result NameAutomation1Automation2Automation3 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function WHILE
	Then As User Builder Run cql statement DECLARE @Iteration Integer = 0;WHILE @Iteration <10  BEGIN SELECT [Name] FROM [Mock].[ReferenceTable1] WHERE [Name] = 'Automation1';SET @Iteration += 1 ;END; and validate text result NameAutomation1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function CRYPT_GEN_RANDOM
	Then As User Builder Run cql statement SELECT CASE WHEN CRYPT_GEN_RANDOM(50) IS NOT NULL THEN 'PRESENT' ELSE 'EMPTY' END and validate text result Column1PRESENT with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STBuffer
	Then As User Builder Run cql statement DECLARE @g geography;SET @g = geography::STGeomFromText('LINESTRING(-122.360 47.656, -122.343 47.656)', 4326);SELECT @g.STBuffer(1).ToString(); and validate text result Column1POLYGON ((-122.34299430968694 47.65599186902601, -122.34299331578936 47.655992221931079, -122.34299236944312 47.655992630167354, -122.34299147738028 47.655993090830727, -122.34299064594676 47.655993600644173, -122.34298988105714 47.655994155981006, -122.34298918815267 47.655994752890692, -122.34298857216251 47.655995387126978, -122.34298803746861 47.655996054178082, -122.34298758787472 47.655996749298758, -122.34298722657908 47.6559974675441, -122.34298695615189 47.655998203804685, -122.34298677851689 47.655998952842943, -122.34298669493774 47.655999709330437, -122.34298670600899 47.656000467885669, -122.34298681165191 47.6560012231125, -122.34298701111497 47.6560019696384, -122.34298730297925 47.656002702152819, -122.34298768516852 47.656003415444822, -122.34298815496399 47.656004104440207, -122.3429887090236 47.656004764237657, -122.34298934340597 47.656005390143527, -122.34299005359824 47.656005977705291, -122.3429908345483 47.656006522743176, -122.34299168070065 47.656007021379935, -122.342992586036 47.656007470068374, -122.34299354411402 47.65600786561663, -122.34299454811917 47.656008205210895, -122.34299559090921 47.656008486435375, -122.34299666506602 47.656008707289487, -122.34299776294829 47.656008866202157, -122.34299887674598 47.656008962042911, -122.3429999985358 47.656008994129962, -122.36000000146417 47.656008994129749, -122.36000065465588 47.65600898324022, -122.36000130626996 47.656008950709733, -122.36000195473665 47.656008896616669, -122.36000259849376 47.656008821091319, -122.36000323599048 47.65600872431564, -122.36000386569104 47.656008606522768, -122.36000448607847 47.656008467996458, -122.3600050956582 47.656008309070451, -122.36000569296179 47.656008130127582, -122.36000627655029 47.656007931598936, -122.36000684501781 47.656007713962779, -122.36000739699487 47.6560074777434, -122.36000793115176 47.656007223509889, -122.36000844620168 47.656006951874652, -122.36000894090385 47.656006663492107, -122.3600094140665 47.656006359056967, -122.36000986454978 47.656006039302632, -122.36001029126847 47.656005704999387, -122.36001069319458 47.6560053569526, -122.36001106935984 47.656004996000718, -122.36001141885808 47.656004623013288, -122.3600117408473 47.656004238888855, -122.36001203455189 47.656003844552785, -122.36001229926424 47.656003440955047, -122.36001253434669 47.656003029067925, -122.36001273923289 47.656002609883664, -122.36001291342927 47.65600218441211, -122.36001305651619 47.656001753678233, -122.36001316814898 47.656001318719674, -122.36001324805866 47.656000880584273, -122.36001329605271 47.656000440327517, -122.36001331201562 47.65599999901, -122.36001329590883 47.655999557694877, -122.36001324777119 47.655999117445269, -122.36001316771863 47.655998679321783, -122.36001305594405 47.655998244379852, -122.36001291271667 47.655997813667277, -122.36001273838157 47.655997388221657, -122.36001253335871 47.655996969067907, -122.36001229814201 47.655996557215786, -122.3600120332981 47.655996153657455, -122.36001173946504 47.655995759365105, -122.36001141735062 47.6559953752886, -122.36001106773087 47.655995002353194, -122.36001069144802 47.6559946414573, -122.36001028940855 47.655994293470314, -122.360009862581 47.655993959230578, -122.36000941199362 47.655993639543276, -122.36000893873187 47.655993335178536, -122.36000844393584 47.65599304686959, -122.36000792879753 47.655992775310992, -122.36000739455795 47.655992521156925, -122.36000684250409 47.655992285019664, -122.36000627396585 47.65599206746807, -122.3600056903129 47.655991869026209, -122.36000509295121 47.655991690172179, -122.3600044833199 47.655991531336809, -122.36000386288757 47.655991392902756, -122.36000323314886 47.655991275203512, -122.36000259562088 47.655991178522612, -122.36000195183938 47.655991103092965, -122.36000130335533 47.655991049096286, -122.36000065173089 47.655991016662654, -122.35999999853587 47.655991005870206, -122.34300000146413 47.655991005870092, -122.3429992666979 47.655991019534284, -122.34299853416802 47.655991060577904, -122.3429978061078 47.6559911288758, -122.34299708473696 47.655991224219747, -122.34299637225476 47.655991346319091, -122.34299567083342 47.65599149480154, -122.3429949826114 47.655991669214437, -122.34299430968694 47.65599186902601)) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STContains
	Then As User Builder Run cql statement DECLARE @g geography;DECLARE @h geography;SET @g = geography::Parse('CURVEPOLYGON (COMPOUNDCURVE (CIRCULARSTRING (-122.200928 47.454094, -122.810669 47.00648, -122.942505 46.687131, -121.14624 45.786679, -119.119263 46.183634), (-119.119263 46.183634, -119.273071 47.107523, -120.640869 47.569114, -122.200928 47.454094)))');SET @h = geography::Parse('POINT(-121.703796 46.893985)');SELECT @g.STContains(@h); and validate text result Column1True with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STConvexHull
	Then As User Builder Run cql statement DECLARE @g geography = 'POLYGON EMPTY';SELECT @g.STConvexHull().ToString(); and validate text result Column1POLYGON EMPTY with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STIntersection
	Then As User Builder Run cql statement DECLARE @g geography = 'POLYGON((-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653))';SELECT @g.STIntersection('FULLGLOBE').ToString(); and validate text result Column1POLYGON ((-122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653, -122.348 47.649)) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STIsValid
	Then As User Builder Run cql statement DECLARE @g geometry;SET @g = geometry::STGeomFromText('LINESTRING(0 0, 2 2, 1 0)', 0);SELECT @g.STIsValid();   and validate text result Column1True with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STSymDifference
	Then As User Builder Run cql statement DECLARE @g geography = 'POLYGON((-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653))';SELECT @g.STSymDifference('FULLGLOBE').ToString(); and validate text result Column1POLYGON ((-122.348 47.649, -122.358 47.653, -122.358 47.658, -122.348 47.658, -122.348 47.649)) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Bug @Ignore
Scenario: As Builder Verify Function AsBinaryZM
	Then As User Builder Run cql statement DECLARE @g1 GEOMETRY = 'Point(1 1 2 3)';SELECT @g1.STAsBinary(); and validate text result Column10x0101000000000000000000F03F000000000000F03F with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function AsTextZM
	Then As User Builder Run cql statement DECLARE @g geometry;SET @g = geometry::STGeomFromText('POINT(1 2 3 4)', 0);SELECT @g.STAsText();SELECT @g.AsTextZM(); and validate text result Column1POINT (1 2) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function BufferWithCurves
	Then As User Builder Run cql statement DECLARE @g geometry= 'LINESTRING(3 4, 8 11)';SELECT @g.BufferWithCurves(-1).ToString(); and validate text result Column1GEOMETRYCOLLECTION EMPTY with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function BufferWithTolerance
	Then As User Builder Run cql statement DECLARE @g geometry;SET @g = geometry::STGeomFromText('POINT(3 3)', 0);SELECT @g.BufferWithTolerance(1, .5, 0).ToString(); and validate text result Column1POLYGON ((2.9999999999999996 2.0000000000000093, 3.9999999999999969 3.0000000000000031, 2.9999999999999996 3.9999999999999969, 2.0000000000000093 3.0000000000000031, 2.9999999999999996 2.0000000000000093)) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function IsValidDetailed
	Then As User Builder Run cql statement DECLARE @p GEOMETRY = 'Polygon((2 2, 4 4, 4 2, 2 4, 2 2))'SELECT @p.IsValidDetailed() and validate text result Column124404: Not valid because polygon ring (1) intersects itself or some other ring. with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function MakeValid
	Then As User Builder Run cql statement DECLARE @g geometry;SET @g = geometry::STGeomFromText('LINESTRING(0 2, 1 1, 1 0, 1 1, 2 2)', 0);SET @g = @g.MakeValid();SELECT @g.STIsValid(); and validate text result Column1True with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function NumRing
	Then As User Builder Run cql statement DECLARE @g geography;SET @g = geography::STGeomFromText('POLYGON((-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653), (-122.357 47.654, -122.357 47.657, -122.349 47.657, -122.349 47.650, -122.357 47.654))', 4326);SELECT @g.NumRings(); and validate text result Column12 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function RingN
	Then As User Builder Run cql statement DECLARE @g geography;SET @g = geography::STGeomFromText('POLYGON((-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653), (-122.357 47.654, -122.357 47.657, -122.349 47.657, -122.349 47.650, -122.357 47.654))', 4326);SELECT @g.RingN(2).ToString(); and validate text result Column1LINESTRING (-122.357 47.654, -122.357 47.657, -122.349 47.657, -122.349 47.65, -122.357 47.654) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STCrosses
	Then As User Builder Run cql statement DECLARE @g geometry;DECLARE @h geometry;SET @g = geometry::STGeomFromText('LINESTRING(0 2, 2 0)', 0);SET @h = geometry::STGeomFromText('LINESTRING(0 0, 2 2)', 0);SELECT @g.STCrosses(@h); and validate text result Column1True with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STDifference
	Then As User Builder Run cql statement DECLARE @g geography;DECLARE @h geography;SET @g = geography::STGeomFromText('POLYGON((-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653))', 4326);SET @h = geography::STGeomFromText('LINESTRING(-122.360 47.656, -122.343 47.656)', 4326);SELECT @g.STDifference(@h).ToString(); and validate text result Column1POLYGON ((-122.348 47.649, -122.34800000000006 47.656000260674908, -122.348 47.658, -122.358 47.658, -122.35800000000017 47.656000130337446, -122.358 47.653, -122.348 47.649)) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STDisjoint
	Then As User Builder Run cql statement DECLARE @g geography;DECLARE @h geography;SET @g = geography::STGeomFromText('LINESTRING(-122.360 47.656, -122.343 47.656)', 4326);SET @h = geography::STGeomFromText('POINT(-122.34900 47.65100)', 4326);SELECT @g.STDisjoint(@h); and validate text result Column1True with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#555.9497742717269
@Rest
Scenario: As Builder Verify Function STDistance
	When As User Builder Run cql statement DECLARE @g geography;DECLARE @h geography;SET @g = geography::STGeomFromText('LINESTRING(-122.360 47.656, -122.343 47.656)', 4326);SET @h = geography::STGeomFromText('POINT(-122.34900 47.65100)', 4326);SELECT @g.STDistance(@h); with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate expected number rounded by 2 to be 555.949774271727

@Rest
Scenario: As Builder Verify Function STEquals
	Then As User Builder Run cql statement DECLARE @g geography;DECLARE @h geography;SET @g = geography::STGeomFromText('GEOMETRYCOLLECTION(POLYGON((-122.368 47.658, -122.338 47.649, -122.338 47.658, -122.368 47.658, -122.368 47.658)), LINESTRING(-122.360 47.656, -122.343 47.656), POINT (-122.35 47.656))', 4326);SET @h = geography::STGeomFromText('POLYGON((-122.368 47.658, -122.338 47.649, -122.338 47.658, -122.368 47.658, -122.368 47.658))', 4326);SELECT @g.STEquals(@h); and validate text result Column1True with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STRelate
	Then As User Builder Run cql statement DECLARE @g geometry;DECLARE @h geometry;SET @g = geometry::STGeomFromText('LINESTRING(0 2, 2 0, 4 2)', 0);SET @h = geometry::STGeomFromText('POINT(5 5)', 0);SELECT @g.STRelate(@h, 'FF*FF****'); and validate text result Column1True with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STTouches
	Then As User Builder Run cql statement DECLARE @g geometry;DECLARE @h geometry;SET @g = geometry::STGeomFromText('LINESTRING(0 2, 2 0, 4 2)', 0);SET @h = geometry::STGeomFromText('POINT(1 1)', 0);SELECT @g.STTouches(@h); and validate text result Column1False with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STUnion
	Then As User Builder Run cql statement DECLARE @g geography = 'POLYGON ((-0.5 0, 0 1, 0.5 0.5, -0.5 0))'; DECLARE @h geography = 'CURVEPOLYGON(COMPOUNDCURVE(CIRCULARSTRING(0 0, 0.7 0.7, 0 1), (0 1, 0 0)))'; SELECT @g.STUnion(@h).ToString(); and validate text result Column1POLYGON ((-0.5 0, 0 1, 0 0.25001427939466336, -0.5 0)) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STIntersects
	Then As User Builder Run cql statement DECLARE @g geometry;DECLARE @h geometry;SET @g = geometry::STGeomFromText('LINESTRING(0 2, 2 0, 4 2)', 0);SET @h = geometry::STGeomFromText('POINT(1 1)', 0);SELECT @g.STIntersects(@h); and validate text result Column1False with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function MinDbCompatibilityLevel
	Then As User Builder Run cql statement DECLARE @g geometry = 'CIRCULARSTRING(-120.533 46.566, -118.283 46.1, -122.3 47.45)';IF @g.MinDbCompatibilityLevel() <= 110 BEGIN SELECT @g.ToString();END and validate text result Column1CIRCULARSTRING (-120.533 46.566, -118.283 46.1, -122.3 47.45) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function ShortestLineTo
	Then As User Builder Run cql statement DECLARE @g1 geography = 'CIRCULARSTRING(-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653)';DECLARE @g2 geography = 'LINESTRING(-119.119263 46.183634, -119.273071 47.107523, -120.640869 47.569114, -122.348 47.649, -122.681 47.655)';SELECT @g1.ShortestLineTo(@g2).ToString(); and validate text result Column1LINESTRING EMPTY with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STGeomCollFromText
	Then As User Builder Run cql statement DECLARE @g geometry;SET @g = geometry::STGeomCollFromText('GEOMETRYCOLLECTION ( POLYGON((5 5, 10 5, 10 10, 5 5)), POINT(10 10) )', 0);SELECT @g.ToString(); and validate text result Column1GEOMETRYCOLLECTION (POLYGON ((5 5, 10 5, 10 10, 5 5)), POINT (10 10)) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STGeomCollFromWKB
	Then As User Builder Run cql statement DECLARE @g geometry;SET @g = geometry::STGeomCollFromWKB(0x0107000000020000000103000000010000000400000000000000000014400000000000001440000000000000244000000000000014400000000000002440000000000000244000000000000014400000000000001440010100000000000000000024400000000000002440, 0);SELECT @g.STAsText(); and validate text result Column1GEOMETRYCOLLECTION (POLYGON ((5 5, 10 5, 10 10, 5 5)), POINT (10 10)) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STLineFromText
	Then As User Builder Run cql statement DECLARE @g geometry;SET @g = geometry::STLineFromText('LINESTRING (100 100 100 100, 200 200 200 200)', 0);SELECT @g.ToString(); and validate text result Column1LINESTRING (100 100 100 100, 200 200 200 200) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STLineFromWKB
	Then As User Builder Run cql statement DECLARE @g geometry;SET @g = geometry::STLineFromWKB(0x0102000000020000000000000000005940000000000000594000000000000069400000000000006940, 0);SELECT @g.STAsText(); and validate text result Column1LINESTRING (100 100, 200 200) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STMPointFromText
	Then As User Builder Run cql statement DECLARE @g geometry;SET @g = geometry::STMPointFromText('MULTIPOINT ((100 100), (200 200))', 0);SELECT @g.ToString(); and validate text result Column1MULTIPOINT ((100 100), (200 200)) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STMPointFromWKB
	Then As User Builder Run cql statement DECLARE @g geometry;SET @g = geometry::STMPointFromWKB(0x010400000002000000010100000000000000000059400000000000005940010100000000000000000069400000000000006940, 0);SELECT @g.STAsText(); and validate text result Column1MULTIPOINT ((100 100), (200 200)) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STMPolyFromText
	Then As User Builder Run cql statement DECLARE @g geography;SET @g = geography::STMPolyFromText('MULTIPOLYGON(((-122.358 47.653, -122.348 47.649, -122.358 47.658, -122.358 47.653)), ((-122.341 47.656, -122.341 47.661, -122.351 47.661, -122.341 47.656)))', 4326);SELECT @g.ToString(); and validate text result Column1MULTIPOLYGON (((-122.358 47.653, -122.348 47.649, -122.358 47.658, -122.358 47.653)), ((-122.341 47.656, -122.341 47.661, -122.351 47.661, -122.341 47.656))) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STPointFromText
	Then As User Builder Run cql statement DECLARE @g geography;SET @g = geography::STPointFromText('POINT(-122.34900 47.65100)', 4326);SELECT @g.ToString(); and validate text result Column1POINT (-122.349 47.651) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STPolyFromText
	Then As User Builder Run cql statement DECLARE @g geography;SET @g = geography::STPolyFromText('POLYGON((-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653))', 4326);SELECT @g.ToString(); and validate text result Column1POLYGON ((-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653)) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STPolyFromWKB
	Then As User Builder Run cql statement DECLARE @g geography;SET @g = geography::STPolyFromWKB(0x01030000000100000005000000F4FDD478E9965EC0DD24068195D3474083C0CAA145965EC0508D976E12D3474083C0CAA145965EC04E62105839D44740F4FDD478E9965EC04E62105839D44740F4FDD478E9965EC0DD24068195D34740, 4326);SELECT @g.ToString(); and validate text result Column1POLYGON ((-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653)) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STMLineFromText
	Then As User Builder Run cql statement DECLARE @g geography;SET @g = geography::STMLineFromText('MULTILINESTRING ((-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653), (-122.357 47.654, -122.357 47.657, -122.349 47.657, -122.349 47.650, -122.357 47.654))', 4326);SELECT @g.ToString(); and validate text result Column1MULTILINESTRING ((-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653), (-122.357 47.654, -122.357 47.657, -122.349 47.657, -122.349 47.65, -122.357 47.654)) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STMLineFromWKB
	Then As User Builder Run cql statement DECLARE @g geometry;SET @g = geometry::STMLineFromWKB(0x0105000000020000000102000000020000000000000000005940000000000000594000000000000069400000000000006940010200000003000000000000000000084000000000000010400000000000001C40000000000000204000000000000024400000000000002440, 0);SELECT @g.STAsText(); and validate text result Column1MULTILINESTRING ((100 100, 200 200), (3 4, 7 8, 10 10)) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function ReorientObject
	Then As User Builder Run cql statement DECLARE @g geography;  SET @g = geography::STGeomFromText('POLYGON((-122.358 47.653, -122.348 47.649, -122.348 47.658, -122.358 47.658, -122.358 47.653), (-122.357 47.654, -122.357 47.657, -122.349 47.657, -122.349 47.650, -122.357 47.654))', 4326);  SELECT @g.ReorientObject().STAsText(); and validate text result Column1MULTIPOLYGON (((-122.349 47.65, -122.349 47.657, -122.357 47.657, -122.357 47.654, -122.349 47.65)), ((-122.348 47.649, -122.358 47.653, -122.358 47.658, -122.348 47.658, -122.348 47.649))) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STOVERLAPS
	Then As User Builder Run cql statement DECLARE @g geography;DECLARE @h geography;SET @g = geography::Parse('POLYGON ((-120.533 46.566, -118.283 46.1, -122.3 47.45, -120.533 46.566))');SET @h = geography::Parse('CURVEPOLYGON (COMPOUNDCURVE (CIRCULARSTRING (-122.200928 47.454094, -122.810669 47.00648, -122.942505 46.687131, -121.14624 45.786679, -119.119263 46.183634), (-119.119263 46.183634, -119.273071 47.107523), CIRCULARSTRING (-119.273071 47.107523, -120.640869 47.569114, -122.200928 47.454094)))');SELECT @g.STOverlaps(@h); and validate text result Column1True with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STMPolyFromWKB
	Then As User Builder Run cql statement DECLARE @g geography;SET @g = geography::STMPolyFromWKB(0x01060000000200000001030000000100000004000000F4FDD478E9965EC0DD24068195D3474083C0CAA145965EC0508D976E12D34740F4FDD478E9965EC04E62105839D44740F4FDD478E9965EC0DD24068195D3474001030000000100000004000000E7FBA9F1D2955EC08716D9CEF7D34740E7FBA9F1D2955EC0F853E3A59BD447405839B4C876965EC0F853E3A59BD44740E7FBA9F1D2955EC08716D9CEF7D34740, 4326);SELECT @g.ToString(); and validate text result Column1MULTIPOLYGON (((-122.358 47.653, -122.348 47.649, -122.358 47.658, -122.358 47.653)), ((-122.341 47.656, -122.341 47.661, -122.351 47.661, -122.341 47.656))) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Builder Verify Function STPointFromWKB
	Then As User Builder Run cql statement DECLARE @g geometry;SET @g = geometry::STPointFromWKB(0x010100000000000000000059400000000000005940, 0);SELECT @g.STAsText();   and validate text result Column1POINT (100 100) with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#######################################
@Rest
Scenario: As Admin Verify Function JSON PATH ROOT with Select
	When As User Admin Run cql from file selectForJsonFunction1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction1.txt or resultForJsonFunction31.txt

@Rest
Scenario: As Admin Verify Function JSON PATH ROOT with Inner Join
	When As User Admin Run cql from file selectForJsonFunction2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction1.txt or resultForJsonFunction31.txt

@Rest
Scenario: As Admin Verify Function JSON PATH ROOT with Left Join
	When As User Admin Run cql from file selectForJsonFunction3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction1.txt or resultForJsonFunction31.txt

@Rest
Scenario: As Admin Verify Function JSON PATH ROOT with Right Join
	When As User Admin Run cql from file selectForJsonFunction4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction1.txt or resultForJsonFunction31.txt

	#Error thrown when columns names are used instead of * -> example Column [Link.AAA] could not be found
	#Tried following query in pgsql and select column from temp table is supported
	#SELECT "Col_20_1" INTO "test" FROM "Tbl1" WHERE "CinchyId" = 1;
	#select "Col_20_1" from "test"
@Rest @Ignore
Scenario: As Admin Verify Function JSON PATH ROOT with temp table
	When As User Admin Run cql from file selectForJsonFunction5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction1.txt or resultForJsonFunction31.txt

@Rest
Scenario: As Admin Verify Function JSON PATH ROOT with SELECT WHERE IN (Subquery)
	When As User Admin Run cql from file selectForJsonFunction6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction2.txt or resultForJsonFunction32.txt

@Rest
Scenario: As Admin Verify Function JSON PATH ROOT with SELECT WHERE EXISTS (Subquery)
	When As User Admin Run cql from file selectForJsonFunction7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction2.txt or resultForJsonFunction35.txt

@Rest
Scenario: As Admin Verify Function JSON PATH with Select
	When As User Admin Run cql from file selectForJsonFunction8.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction3.txt or resultForJsonFunction33.txt

@Rest
Scenario: As Admin Verify Function JSON PATH with Inner Join
	When As User Admin Run cql from file selectForJsonFunction9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction3.txt or resultForJsonFunction33.txt

@Rest
Scenario: As Admin Verify Function JSON PATH with Left Join
	When As User Admin Run cql from file selectForJsonFunction10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction3.txt or resultForJsonFunction33.txt

@Rest
Scenario: As Admin Verify Function JSON PATH with Right Join
	When As User Admin Run cql from file selectForJsonFunction11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction3.txt or resultForJsonFunction33.txt

	#Error thrown when columns names are used instead of * -> example Column [Link.AAA] could not be found
	#Tried following query in pgsql and select column from temp table is supported
	#SELECT "Col_20_1" INTO "test" FROM "Tbl1" WHERE "CinchyId" = 1;
	#select "Col_20_1" from "test"
@Rest @Ignore
Scenario: As Admin Verify Function JSON PATH with temp table
	When As User Admin Run cql from file selectForJsonFunction12.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction3.txt or resultForJsonFunction33.txt

@Rest
Scenario: As Admin Verify Function JSON PATH with SELECT WHERE IN (Subquery)
	When As User Admin Run cql from file selectForJsonFunction13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction4.txt or resultForJsonFunction36.txt

@Rest
Scenario: As Admin Verify Function JSON PATH with SELECT WHERE EXISTS (Subquery)
	When As User Admin Run cql from file selectForJsonFunction14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction4.txt or resultForJsonFunction34.txt

@Rest @Ignore
Scenario: As Admin Verify Function JSON AUTO with Select
	Then As User Admin Run cql from file selectForJsonFunction15.txt and validate unordered result resultForJsonFunction5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Ignore
Scenario: As Admin Verify Function JSON AUTO with Inner Join
	Then As User Admin Run cql from file selectForJsonFunction16.txt and validate unordered result resultForJsonFunction20.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Ignore
Scenario: As Admin Verify Function JSON AUTO with Left Join
	Then As User Admin Run cql from file selectForJsonFunction17.txt and validate unordered result resultForJsonFunction18.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Ignore
Scenario: As Admin Verify Function JSON AUTO with Right Join
	Then As User Admin Run cql from file selectForJsonFunction18.txt and validate unordered result resultForJsonFunction18.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Ignore
Scenario: As Admin Verify Function JSON AUTO with temp table
	Then As User Admin Run cql from file selectForJsonFunction19.txt and validate unordered result resultForJsonFunction22.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Ignore
Scenario: As Admin Verify Function JSON AUTO with SELECT WHERE IN (Subquery)
	Then As User Admin Run cql from file selectForJsonFunction20.txt and validate unordered result resultForJsonFunction6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Ignore
Scenario: As Admin Verify Function JSON AUTO with SELECT WHERE EXISTS (Subquery)
	Then As User Admin Run cql from file selectForJsonFunction21.txt and validate unordered result resultForJsonFunction6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Ignore
Scenario: As Admin Verify Function FOR JSON AUTO, INCLUDE_NULL_VALUES with Select
	Then As User Admin Run cql from file selectForJsonFunction22.txt and validate unordered result resultForJsonFunction19.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Ignore
Scenario: As Admin Verify Function FOR JSON AUTO, INCLUDE_NULL_VALUES with Inner Join
	Then As User Admin Run cql from file selectForJsonFunction23.txt and validate unordered result resultForJsonFunction15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Ignore
Scenario: As Admin Verify Function FOR JSON AUTO, INCLUDE_NULL_VALUES with Left Join
	Then As User Admin Run cql from file selectForJsonFunction24.txt and validate unordered result resultForJsonFunction15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Ignore
Scenario: As Admin Verify Function FOR JSON AUTO, INCLUDE_NULL_VALUES with Right Join
	Then As User Admin Run cql from file selectForJsonFunction25.txt and validate unordered result resultForJsonFunction15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Ignore
Scenario: As Admin Verify Function FOR JSON AUTO, INCLUDE_NULL_VALUES with temp table
	Then As User Admin Run cql from file selectForJsonFunction26.txt and validate unordered result resultForJsonFunction7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Ignore
Scenario: As Admin Verify Function FOR JSON AUTO, INCLUDE_NULL_VALUES with SELECT WHERE IN (Subquery)
	Then As User Admin Run cql from file selectForJsonFunction27.txt and validate unordered result resultForJsonFunction8.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Ignore
Scenario: As Admin Verify Function FOR JSON AUTO, INCLUDE_NULL_VALUES with SELECT WHERE EXISTS (Subquery)
	Then As User Admin Run cql from file selectForJsonFunction28.txt and validate unordered result resultForJsonFunction8.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest
Scenario: As Admin Verify Function FOR JSON PATH, INCLUDE_NULL_VALUES with Select
	When As User Admin Run cql from file selectForJsonFunction29.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction9.txt or resultForJsonFunction23.txt

@Rest
Scenario: As Admin Verify Function FOR JSON PATH, INCLUDE_NULL_VALUES with Inner Join
	When As User Admin Run cql from file selectForJsonFunction30.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction9.txt or resultForJsonFunction23.txt

@Rest
Scenario: As Admin Verify Function FOR JSON PATH, INCLUDE_NULL_VALUES with Left Join
	When As User Admin Run cql from file selectForJsonFunction31.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction9.txt or resultForJsonFunction23.txt

@Rest
Scenario: As Admin Verify Function FOR JSON PATH, INCLUDE_NULL_VALUES with Right Join
	When As User Admin Run cql from file selectForJsonFunction32.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction9.txt or resultForJsonFunction23.txt

@Rest
Scenario: As Admin Verify Function FOR JSON PATH, INCLUDE_NULL_VALUES with temp table
	When As User Admin Run cql from file selectForJsonFunction33.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction9.txt or resultForJsonFunction28.txt

@Rest
Scenario: As Admin Verify Function FOR JSON PATH, INCLUDE_NULL_VALUES with SELECT WHERE IN (Subquery)
	When As User Admin Run cql from file selectForJsonFunction34.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction10.txt or resultForJsonFunction24.txt

@Rest
Scenario: As Admin Verify Function FOR JSON PATH, INCLUDE_NULL_VALUES with SELECT WHERE EXISTS (Subquery)
	When As User Admin Run cql from file selectForJsonFunction35.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction10.txt or resultForJsonFunction27.txt

@Rest
Scenario: As Admin Verify Function FOR JSON PATH, WITHOUT_ARRAY_WRAPPER with Select
	When As User Admin Run cql from file selectForJsonFunction36.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction11.txt or resultForJsonFunction25.txt

@Rest
Scenario: As Admin Verify Function FOR JSON PATH, WITHOUT_ARRAY_WRAPPER with Inner Join
	When As User Admin Run cql from file selectForJsonFunction37.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction11.txt or resultForJsonFunction25.txt

@Rest
Scenario: As Admin Verify Function FOR JSON PATH, WITHOUT_ARRAY_WRAPPER with Left Join
	When As User Admin Run cql from file selectForJsonFunction38.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction11.txt or resultForJsonFunction25.txt

@Rest
Scenario: As Admin Verify Function FOR JSON PATH, WITHOUT_ARRAY_WRAPPER with Right Join
	When As User Admin Run cql from file selectForJsonFunction39.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction11.txt or resultForJsonFunction25.txt

@Rest
Scenario: As Admin Verify Function FOR JSON PATH, WITHOUT_ARRAY_WRAPPER with temp table
	When As User Admin Run cql from file selectForJsonFunction40.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction11.txt or resultForJsonFunction30.txt

@Rest
Scenario: As Admin Verify Function FOR JSON PATH, WITHOUT_ARRAY_WRAPPER with SELECT WHERE IN (Subquery)
	When As User Admin Run cql from file selectForJsonFunction41.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction12.txt or resultForJsonFunction26.txt

@Rest
Scenario: As Admin Verify Function FOR JSON PATH, WITHOUT_ARRAY_WRAPPER with SELECT WHERE EXISTS (Subquery)
	When As User Admin Run cql from file selectForJsonFunction42.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then Validate json result resultForJsonFunction12.txt or resultForJsonFunction29.txt

@Rest @Ignore
Scenario: As Admin Verify Function FOR JSON AUTO, WITHOUT_ARRAY_WRAPPER with Select
	Then As User Admin Run cql from file selectForJsonFunction43.txt and validate unordered result resultForJsonFunction13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Ignore
Scenario: As Admin Verify Function FOR JSON AUTO, WITHOUT_ARRAY_WRAPPER with Inner Join
	Then As User Admin Run cql from file selectForJsonFunction44.txt and validate unordered result resultForJsonFunction17.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Ignore
Scenario: As Admin Verify Function FOR JSON AUTO, WITHOUT_ARRAY_WRAPPER with Left Join
	Then As User Admin Run cql from file selectForJsonFunction45.txt and validate unordered result resultForJsonFunction17.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Ignore
Scenario: As Admin Verify Function FOR JSON AUTO, WITHOUT_ARRAY_WRAPPER with Right Join
	Then As User Admin Run cql from file selectForJsonFunction46.txt and validate unordered result resultForJsonFunction17.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Ignore
Scenario: As Admin Verify Function FOR JSON AUTO, WITHOUT_ARRAY_WRAPPER with temp table
	Then As User Admin Run cql from file selectForJsonFunction47.txt and validate unordered result resultForJsonFunction21.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Ignore
Scenario: As Admin Verify Function FOR JSON AUTO, WITHOUT_ARRAY_WRAPPER with SELECT WHERE IN (Subquery)
	Then As User Admin Run cql from file selectForJsonFunction48.txt and validate unordered result resultForJsonFunction14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

@Rest @Ignore
Scenario: As Admin Verify Function FOR JSON AUTO, WITHOUT_ARRAY_WRAPPER with SELECT WHERE EXISTS (Subquery)
	Then As User Admin Run cql from file selectForJsonFunction49.txt and validate unordered result resultForJsonFunction14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |