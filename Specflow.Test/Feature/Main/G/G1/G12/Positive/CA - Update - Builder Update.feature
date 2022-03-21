Feature: CA - Update - Builder Update

@Rest
Scenario: CA - As Builder, Update a row using select INNER Join as a subquery
	When As User Builder Run cql from file updateCATable1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | 3                                                                                           |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test3 LastName Test3                                                              |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 13                                                                                          |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Orange                                                                                      |
		| data12 | QA                                                                                          |
		| data13 | true                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Automation1                                                                                 |
		| data16 | Full Time                                                                                   |
	Then As User Builder Run cql from file selectCATable3.txt and validate unordered result resultCATable1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User Builder Run cql from file selectCATable4.txt and validate unordered result resultCATable2.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |

@Rest
Scenario: CA - As Builder, Update a row using select LEFT Join as a subquery
	When As User Builder Run cql from file updateCATable2.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | 1                                                                                           |
		| data4  | Ajax                                                                                        |
		| data5  | FirstName Test3 LastName Test3                                                              |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 5                                                                                           |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
		| data13 | false                                                                                       |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Full Time                                                                                   |
	Then As User Builder Run cql from file selectCATable3.txt and validate unordered result resultCATable3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |
	Then As User Builder Run cql from file selectCATable4.txt and validate unordered result resultCATable4.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |

@Rest
Scenario: CA - As Builder, Update a row using select RIGHT Join as a subquery
	When As User Builder Run cql from file updateCATable3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | 3                                                                                           |
		| data4  | Toronto                                                                                     |
		| data5  | FirstNameTest LastNameTest                                                                  |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 6                                                                                           |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
		| data13 | true                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Part Time                                                                                   |
	Then As User Builder Run cql from file selectCATable3.txt and validate unordered result resultCATable5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |
	Then As User Builder Run cql from file selectCATable4.txt and validate unordered result resultCATable6.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |

@Rest
Scenario: CA - As Builder, Update a row using select FULL Join as a subquery
	When As User Builder Run cql from file updateCATable4.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | 3                                                                                           |
		| data4  | Toronto                                                                                     |
		| data5  | FirstNameTest LastNameTest                                                                  |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 13                                                                                          |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
		| data13 | true                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Part Time                                                                                   |
	Then As User Builder Run cql from file selectCATable3.txt and validate unordered result resultCATable7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |
	Then As User Builder Run cql from file selectCATable4.txt and validate unordered result resultCATable8.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |

@Rest
Scenario: CA - As Builder, Update a row using select CROSS Join as a subquery
	When As User Builder Run cql from file updateCATable5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | 3                                                                                           |
		| data4  | Toronto                                                                                     |
		| data5  | FirstNameTest LastNameTest                                                                  |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 13                                                                                          |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
		| data13 | true                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Full Time                                                                                   |
	Then As User Builder Run cql from file selectCATable3.txt and validate unordered result resultCATable9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |
	Then As User Builder Run cql from file selectCATable4.txt and validate unordered result resultCATable10.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |

@Rest
Scenario: CA - As Builder, Update a row using select WHERE IN as a subquery
	When As User Builder Run cql from file updateCATable6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql from file selectCATable3.txt and validate unordered result resultCATable11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |
	Then As User Builder Run cql from file selectCATable4.txt and validate unordered result resultCATable12.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |

@Rest
Scenario: CA - As Builder, Update a row using select WHERE FROM as a subquery
	When As User Builder Run cql from file updateCATable7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql from file selectCATable3.txt and validate unordered result resultCATable13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User Builder Run cql from file selectCATable4.txt and validate unordered result resultCATable14.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |

@Rest
Scenario: CA - As Builder, Update a row using select WHERE ANY as a subquery
	When As User Builder Run cql from file updateCATable8.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql from file selectCATable3.txt and validate unordered result resultCATable15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User Builder Run cql from file selectCATable4.txt and validate unordered result resultCATable16.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |

@Rest
Scenario: CA - As Builder, Update a Link cell
	When As User Builder Run cql statement Update [Mock].[UpdateCAEmployee3] SET [Job] = ResolveLink('Toronto','Location'), [Link Calculated Cache] = ResolveLink('FirstName Test3 LastName Test3','Calculated Cache'), [Link CalculatedLink Cache] = ResolveLink('Brazil Cinchy','Cal Link Cache'), [Manager] = ResolveLink('Apple','Name'),[Person]= ResolveLink('Orange','Name'), [Role] = ResolveLink('QA','Name') WHERE [Id] = 5; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql statement Select [Job], [Link Calculated Cache], [Manager], [Person], [Role] FROM [Mock].[UpdateCAEmployee3] Where [Id] = 5 and validate text result Job,Link Calculated Cache,Manager,Person,RoleToronto,FirstName Test1 LastName Test1,Annie,Annie,HR with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement Select [Version],[Draft Version],[Job], [Link Calculated Cache], [Manager],[Person], [Role] FROM [Mock].[UpdateCAEmployee3] Where [Id] = 5 ORDER BY [Version],[Draft Version] and validate unordered result resultCATable17.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest @Bug @Ignore
Scenario: CA - As Builder, Update a MultiSelect Link cell
	When As User Builder Run cql statement Update [Mock].[UpdateCAEmployee3] SET [MSL] = ResolveLink('1,2','Cinchy Id') WHERE [Id] = 6; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql statement Select [MSL] FROM [Mock].[UpdateCAEmployee3] Where [Id] = 6 and validate text result MSL2020-03-03 00:00:00.0000000,2020-12-06 00:00:00.0000000 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement Select [MSL] FROM [Mock].[UpdateCAEmployee3] Where [Id] = 6 ORDER BY [Version],[Draft Version] and validate text result MSL with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As Builder, Update a Choice cell
	When As User Builder Run cql statement Update [Mock].[UpdateCAEmployee3] SET [Employee Term] = 'Part Time' WHERE [Id] = 7; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql statement Select [Employee Term] FROM [Mock].[UpdateCAEmployee3] Where [Id] = 7 and validate unordered text result Employee Term\nCo-op with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement Select [Employee Term] FROM [Mock].[UpdateCAEmployee3] Where [Id] = 7 ORDER BY [Version],[Draft Version] and validate unordered text result Employee Term\nCo-op\nCo-op\nCo-op\nCo-op\nCo-op\nPart Time with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As Builder, Update a MultiSelect Choice cell
	When As User Builder Run cql statement Update [Mock].[UpdateCAEmployee3] SET [MSC] = 'Dance,Jump,Play,Sleep' WHERE [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql statement Select [Id], [MSC] FROM [Mock].[UpdateCAEmployee3] Where [Id] = 8 and validate text result Id,MSC8, Jump, Sleep with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement Select [Id], [Version],[Draft Version], [MSC] FROM [Mock].[UpdateCAEmployee3] Where [Id] = 8 ORDER BY [Version],[Draft Version] and validate text result Id,Version,Draft Version,MSC\n8,1,0,Jump, Sleep\n8,1,1,Jump, Sleep\n8,1,2,Dance, Jump, Play, Sleep with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As Builder, Update a Hierarchy cell
	When As User Builder Run cql statement Update [Mock].[UpdateCAEmployee3] SET [Hlink] = ResolveLink('2','Id') WHERE [Id] = 9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql statement Select [Hlink] FROM [Mock].[UpdateCAEmployee3] Where [Id] = 9 and validate text result Hlink with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement Select [Hlink] FROM [Mock].[UpdateCAEmployee3] Where [Id] = 9 ORDER BY [Version],[Draft Version]; and validate text result Hlink2 with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest @Bug @Ignore
Scenario: CA - As Builder, Update a MultiSelect Hierarchy cell
	When As User Builder Run cql statement Update [Mock].[UpdateCAEmployee3] SET --[MSH] = ResolveLink('1,2,3','Cinchy Id') WHERE [Id] = 10; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql statement Select --[MSH] FROM [Mock].[UpdateCAEmployee3] Where [Id] = 10; and validate text result MSH with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement Select --[MSH] FROM [Mock].[UpdateCAEmployee3] Where [Id] = 10 ORDER BY [Version],[Draft Version]; and validate text result MSH with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As Builder, Update Simple Column cell
	When As User Builder Run cql statement Update [Mock].[UpdateCAEmployee3] SET [Start Date] = '15 Mar 2019', [Emergency Contact Number] = '23123123', [Salaried] = 'true' WHERE [Id] = 11; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql statement Select [Start Date] , [Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateCAEmployee3] Where [Id] = 11 and validate text result Start Date,Emergency Contact Number,Salaried2020-05-02 00:00:00,678678768,False with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement Select [Start Date],[Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateCAEmployee3] Where [Id] = 11 ORDER BY [Version],[Draft Version] and validate text result Start Date,Emergency Contact Number,Salaried2020-05-02 00:00:00,678678768,False2020-12-01 00:00:00,4545654656,False2019-03-15 00:00:00,23123123,True with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As Builder, Update Link cells
	When As User Builder Run cql statement Update [Mock].[UpdateCAEmployee3] SET [Job] = ResolveLink('Toronto','Location'), [Link Calculated Cache] = ResolveLink('FirstName Test3 LastName Test3','Calculated Cache'), [Link CalculatedLink Cache] = ResolveLink('Brazil Cinchy','Cal Link Cache'), [Manager] = ResolveLink('Apple','Name'),[Person]= ResolveLink('Orange','Name'), [Role] = ResolveLink('QA','Name') WHERE [Id] BETWEEN 12 AND 14; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql statement Select [Job], [Link Calculated Cache], [Manager], [Person], [Role] FROM [Mock].[UpdateCAEmployee3] WHERE [Id] BETWEEN 12 AND 14; and validate unordered text result Job,Link Calculated Cache,Manager,Person,Role\nToronto,FirstName Test3 LastName Test3,Orange,Orange,HR\nAjax,FirstNameTest LastNameTest,Annie,Annie,Dev\nAjax,FirstName Test1 LastName Test1,Annie,Annie,All Users with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement Select [Version],[Draft Version],[Job], [Link Calculated Cache], [Manager],[Person], [Role] FROM [Mock].[UpdateCAEmployee3] WHERE [Id] BETWEEN 12 AND 14 ORDER BY [Version],[Draft Version] and validate unordered result resultCATable18.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As Builder, Update Choice cells
	When As User Builder Run cql statement Update [Mock].[UpdateCAEmployee3] SET [Employee Term] = 'Part Time' WHERE [Id] BETWEEN 15 AND 17; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql statement Select [Employee Term] FROM [Mock].[UpdateCAEmployee3] WHERE [Id] BETWEEN 15 AND 17; and validate text result Employee TermFull TimePart TimeFull Time with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement Select [Version],[Draft Version],[Employee Term] FROM [Mock].[UpdateCAEmployee3] WHERE [Id] BETWEEN 15 AND 17 ORDER BY [Version],[Draft Version] and validate unordered result resultCATable19.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As Builder, Update MultiSelect Choice cells
	When As User Builder Run cql statement Update [Mock].[UpdateCAEmployee3] SET [MSC] = 'Dance,Jump,Play,Sleep' WHERE [Id] BETWEEN 18 AND 20; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql statement Select [Id], [MSC] FROM [Mock].[UpdateCAEmployee3] WHERE [Id] BETWEEN 18 AND 20; and validate unordered text result Id,MSC\n18,Dance, Jump, Play, Sleep\n19,Play\n20,Jump, Sleep with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement Select [Version],[Draft Version],[MSC] FROM [Mock].[UpdateCAEmployee3] WHERE [Id] BETWEEN 18 AND 20 ORDER BY [Version],[Draft Version] and validate unordered result resultCATable20.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As Builder, Update Hierarchy cells
	When As User Builder Run cql statement Update [Mock].[UpdateCAEmployee3] SET [Hlink] = ResolveLink('13','Id') WHERE [Id] BETWEEN 21 AND 23; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql statement Select [Hlink] FROM [Mock].[UpdateCAEmployee3] WHERE [Id] BETWEEN 21 AND 23; and validate text result Hlink with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement Select [Version],[Draft Version],[Hlink] FROM [Mock].[UpdateCAEmployee3] WHERE [Id] BETWEEN 21 AND 23 ORDER BY [Version],[Draft Version]; and validate unordered result resultCATable21.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As Builder, Update Simple Column cells
	When As User Builder Run cql statement Update [Mock].[UpdateCAEmployee3] SET [Start Date] = '15 Mar 2019', [Emergency Contact Number] = '23123123', [Salaried] = 'true' WHERE [Id] BETWEEN 24 AND 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql statement Select [Start Date], [Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateCAEmployee3] WHERE [Id] BETWEEN 24 AND 26; and validate unordered text result Start Date,Emergency Contact Number,Salaried\n2020-05-02 00:00:00,123213121,False\n2019-04-09 00:00:00,4545654656,True\n2018-10-11 00:00:00,678678768,True with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement Select [Version],[Draft Version],[Start Date] , [Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateCAEmployee3] WHERE [Id] BETWEEN 24 AND 26 ORDER BY [Version],[Draft Version] and validate unordered result resultCATable22.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: CA - As Builder, Update a row using INNER Join
	When As User Builder Run cql from file updateCATable9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data3  | 3                                                                                           |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test3 LastName Test3                                                              |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data9  | 13                                                                                          |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Orange                                                                                      |
		| data12 | QA                                                                                          |
	Then As User Builder Run cql from file selectCATable5.txt and validate unordered result resultCATable23.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User Builder Run cql from file selectCATable6000.txt and validate unordered result resultCATable24.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |

@Rest
Scenario: CA - As Builder, Update a row using LEFT Join
	When As User Builder Run cql from file updateCATable10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data3  | 3                                                                                           |
		| data4  | Ajax                                                                                        |
		| data5  | FirstName Test3 LastName Test3                                                              |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data9  | 13                                                                                          |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
	Then As User Builder Run cql from file selectCATable5.txt and validate unordered result resultCATable25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |
	Then As User Builder Run cql from file selectCATable6.txt and validate unordered result resultCATable26.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |

@Rest
Scenario: CA - As Builder, Update a row using RIGHT Join
	When As User Builder Run cql from file updateCATable11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data3  | 3                                                                                           |
		| data4  | Toronto                                                                                     |
		| data5  | FirstNameTest LastNameTest                                                                  |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data9  | 13                                                                                          |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
	Then As User Builder Run cql from file selectCATable5.txt and validate unordered result resultCATable27.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |
	Then As User Builder Run cql from file selectCATable6.txt and validate unordered result resultCATable28.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |

@Rest
Scenario: CA - As Builder, Update a row using FULL Join
	When As User Builder Run cql from file updateCATable12.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data3  | 3                                                                                           |
		| data4  | Toronto                                                                                     |
		| data5  | FirstNameTest LastNameTest                                                                  |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data9  | 13                                                                                          |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
	Then As User Builder Run cql from file selectCATable5.txt and validate unordered result resultCATable29.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |
	Then As User Builder Run cql from file selectCATable6.txt and validate unordered result resultCATable30.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |

@Rest @Bug @Ignore
Scenario: CA - As Builder, Update a row using CROSS Join
	When As User Builder Run cql from file updateCATable13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data3  | 3                                                                                           |
		| data4  | Toronto                                                                                     |
		| data5  | FirstNameTest LastNameTest                                                                  |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data9  | 13                                                                                          |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
	Then As User Builder Run cql from file selectCATable5.txt and validate unordered result resultCATable31.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |
	Then As User Builder Run cql from file selectCATable6.txt and validate unordered result resultCATable32.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |

@Rest
Scenario: CA - As Builder, Update rows using INNER Join
	When As User Builder Run cql from file updateCATable14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data3  | 11                                                                                          |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test1 LastName Test1                                                              |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data9  | 13                                                                                          |
		| data10 | 2020-12-06 00:00:00.0000000                                                                 |
		| data11 | Orange                                                                                      |
		| data12 | QA                                                                                          |
	Then As User Builder Run cql from file selectCATable7.txt and validate unordered result resultCATable33.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 29    |
	Then As User Builder Run cql from file selectCATable8.txt and validate unordered result resultCATable34.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 29    |

@Rest
Scenario: CA - As Builder, Update rows using LEFT Join
	When As User Builder Run cql from file updateCATable15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data3  | 11                                                                                          |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test1 LastName Test1                                                              |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data9  | 13                                                                                          |
		| data10 | 2020-12-06 00:00:00.0000000                                                                 |
		| data11 | Orange                                                                                      |
		| data12 | Dev                                                                                         |
	Then As User Builder Run cql from file selectCATable7.txt and validate unordered result resultCATable35.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 22    |
		| data2 | 25    |
	Then As User Builder Run cql from file selectCATable8.txt and validate unordered result resultCATable36.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 22    |
		| data2 | 25    |

@Rest
Scenario: CA - As Builder, Update rows using RIGHT Join
	When As User Builder Run cql from file updateCATable16.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data3  | 11                                                                                          |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test1 LastName Test1                                                              |
		| data6  | Ghana Shared                                                                                |
		| data7  | Apple                                                                                       |
		| data9  | 13                                                                                          |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Orange                                                                                      |
		| data12 | UserGroup                                                                                   |
	Then As User Builder Run cql from file selectCATable7.txt and validate unordered result resultCATable37.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 18    |
		| data2 | 21    |
	Then As User Builder Run cql from file selectCATable8.txt and validate unordered result resultCATable38.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 18    |
		| data2 | 21    |

@Rest
Scenario: CA - As Builder, Update rows using FULL Join
	When As User Builder Run cql from file updateCATable17.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data3  | 3                                                                                           |
		| data4  | Ajax                                                                                        |
		| data5  | FirstNameTest LastNameTest                                                                  |
		| data6  | Albania AutomationDomain                                                                    |
		| data7  | Grape                                                                                       |
		| data9  | 13                                                                                          |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | Dev                                                                                         |
	Then As User Builder Run cql from file selectCATable7.txt and validate unordered result resultCATable39.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 17    |
	Then As User Builder Run cql from file selectCATable8.txt and validate unordered result resultCATable40.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 17    |

@Rest @Bug @Ignore
Scenario: CA - As Builder, Update rows using CROSS Join
	When As User Builder Run cql from file updateCATable18.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data3  | 3                                                                                           |
		| data4  | Toronto                                                                                     |
		| data5  | FirstNameTest LastNameTest                                                                  |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data9  | 13                                                                                          |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
	Then As User Builder Run cql from file selectCATable7.txt and validate unordered result resultCATable41.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 10    |
		| data2 | 13    |
	Then As User Builder Run cql from file selectCATable8.txt and validate unordered result resultCATable42.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 10    |
		| data2 | 13    |