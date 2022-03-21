Feature: SQL Builder Update

@Rest
Scenario: RT - As Builder, Update a row using select INNER Join as a subquery
	When As User Builder Run cql from file updateRegularTable5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | All Edit View Row Filter12                                                                  |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test3 LastName Test3                                                              |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 12,All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Orange                                                                                      |
		| data12 | QA                                                                                          |
		| data13 | 1                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Automation1                                                                                 |
		| data16 | Full Time                                                                                   |
	Then As User Builder Run cql from file selectRegularTable3.txt and validate unordered result resultRegularTable1.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User Builder Run cql from file selectRegularTable4000.txt and validate unordered result resultRegularTable11.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |

@Rest
Scenario: RT - As Builder, Update a row using select LEFT Join as a subquery
	When As User Builder Run cql from file updateRegularTable9.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | All Edit View Row Filter12                                                                  |
		| data4  | Ajax                                                                                        |
		| data5  | FirstName Test3 LastName Test3                                                              |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 12,All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
		| data13 | false                                                                                       |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Full Time                                                                                   |
	Then As User Builder Run cql from file selectRegularTable3.txt and validate unordered result resultRegularTable100.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |
	Then As User Builder Run cql from file selectRegularTable4000.txt and validate unordered result resultRegularTable12.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |

@Rest
Scenario: RT - As Builder, Update a row using select RIGHT Join as a subquery
	When As User Builder Run cql from file updateRegularTable10.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | All Edit View Row Filter12                                                                  |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test LastName Test                                                                |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 12,All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
		| data13 | 1                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Part Time                                                                                   |
	Then As User Builder Run cql from file selectRegularTable3.txt and validate unordered result resultRegularTable102.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |
	Then As User Builder Run cql from file selectRegularTable4.txt and validate unordered result resultRegularTable13.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |

@Rest
Scenario: RT - As Builder, Update a row using select FULL Join as a subquery
	When As User Builder Run cql from file updateRegularTable11.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | All Edit View Row Filter12                                                                  |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test LastName Test                                                                |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 12,All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
		| data13 | 1                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Part Time                                                                                   |
	Then As User Builder Run cql from file selectRegularTable3.txt and validate unordered result resultRegularTable104.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |
	Then As User Builder Run cql from file selectRegularTable4.txt and validate unordered result resultRegularTable10.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |

@Rest
Scenario: RT - As Builder, Update a row using select CROSS Join as a subquery
	When As User Builder Run cql from file updateRegularTable12.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | All Edit View Row Filter12                                                                  |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test LastName Test                                                                |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 12,All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
		| data13 | true                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Full Time                                                                                   |
	Then As User Builder Run cql from file selectRegularTable3.txt and validate unordered result resultRegularTable106.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |
	Then As User Builder Run cql from file selectRegularTable4000.txt and validate unordered result resultRegularTable9.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |

@Rest
Scenario: RT - As Builder, Update a row using select WHERE IN as a subquery
	When As User Builder Run cql from file updateRegularTable6.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql from file selectRegularTable3.txt and validate unordered result resultRegularTable3.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |
	Then As User Builder Run cql from file selectRegularTable4000.txt and validate unordered result resultRegularTable16.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |

@Rest
Scenario: RT - As Builder, Update a row using select WHERE FROM as a subquery
	When As User Builder Run cql from file updateRegularTable7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql from file selectRegularTable3.txt and validate unordered result resultRegularTable5.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User Builder Run cql from file selectRegularTable4000.txt and validate unordered result resultRegularTable15.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |

@Rest
Scenario: RT - As Builder, Update a row using select WHERE ANY as a subquery
	When As User Builder Run cql from file updateRegularTable8.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql from file selectRegularTable3.txt and validate unordered result resultRegularTable7.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User Builder Run cql from file selectRegularTable4000.txt and validate unordered result resultRegularTable14.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |

@Rest
Scenario: RT - As Builder, Update a Link cell
	When As User Builder Run cql statement Update [Mock].[UpdateEmployee3] SET [Job] = ResolveLink('Toronto','Location'), [Link Calculated Cache] = ResolveLink('FirstName Test3 LastName Test3','Calculated Cache'), [Link CalculatedLink Cache] = ResolveLink('Brazil Cinchy','Cal Link Cache'), [Manager] = ResolveLink('Apple','Name'),[Person]= ResolveLink('Orange','Name'), [Role] = ResolveLink('QA','Name') WHERE [Id] = 5; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql statement Select [Job], [Link Calculated Cache], [Manager], [Person], [Role] FROM [Mock].[UpdateEmployee3] Where [Id] = 5 and validate text result Job,Link Calculated Cache,Manager,Person,RoleToronto,FirstName Test3 LastName Test3,Apple,Orange,QA with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement Select [Version],[Draft Version],[Job], [Link Calculated Cache], [Manager],[Person], [Role] FROM [Mock].[UpdateEmployee3] Where [Id] = 5 ORDER BY [Version],[Draft Version] and validate unordered result resultRegularTable17.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest @Bug @Ignore
Scenario: RT - As Builder, Update a MultiSelect Link cell
	When As User Builder Run cql statement Update [Mock].[UpdateEmployee3] SET [MSL] = ResolveLink('1,2','Cinchy Id') WHERE [Id] = 6; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql statement Select [MSL] FROM [Mock].[UpdateEmployee3] Where [Id] = 6 and validate text result MSL2020-03-03 00:00:00.0000000,2020-12-06 00:00:00.0000000 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement Select [MSL] FROM [Mock].[UpdateEmployee3] Where [Id] = 6 ORDER BY [Version],[Draft Version] and validate text result MSL with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: RT - As Builder, Update a Choice cell
	When As User Builder Run cql statement Update [Mock].[UpdateEmployee3] SET [Employee Term] = 'Part Time' WHERE [Id] = 7; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql statement Select [Employee Term] FROM [Mock].[UpdateEmployee3] Where [Id] = 7 and validate text result Employee TermPart Time with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement Select [Employee Term] FROM [Mock].[UpdateEmployee3] Where [Id] = 7 ORDER BY [Version],[Draft Version] and validate text result Employee TermCo-opCo-opCo-opPart Time with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: RT - As Builder, Update a MultiSelect Choice cell
	When As User Builder Run cql statement Update [Mock].[UpdateEmployee3] SET [MSC] = 'Dance,Jump,Play,Sleep' WHERE [Id] = 8; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql statement Select [Id], [MSC] FROM [Mock].[UpdateEmployee3] Where [Id] = 8 and validate unordered text result Id,MSC\n8,Dance, Jump, Play, Sleep with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement Select [Id], [Version],[Draft Version],[MSC] FROM [Mock].[UpdateEmployee3] Where [Id] = 8 ORDER BY [Id], [Version],[Draft Version] and validate unordered text result Id,Version,Draft Version,MSC\n8,1,0,Jump, Sleep\n8,2,0,\n8,3,0,\n8,4,0,Dance, Jump, Play, Sleep with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: RT - As Builder, Update a Hierarchy cell
	When As User Builder Run cql statement Update [Mock].[UpdateEmployee3] SET [Hlink] = ResolveLink('2','Cinchy Id') WHERE [Id] = 9; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql statement Select [Hlink] FROM [Mock].[UpdateEmployee3] Where [Id] = 9 and validate text result HlinkEditAll Edit Row Filter currentUserID12 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement Select [Hlink] FROM [Mock].[UpdateEmployee3] Where [Id] = 9 ORDER BY [Version],[Draft Version]; and validate text result Hlink12EditAll Edit Row Filter currentUserID12 with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest @Bug @Ignore
Scenario: RT - As Builder, Update a MultiSelect Hierarchy cell
	When As User Builder Run cql statement Update [Mock].[UpdateEmployee3] SET [MSH] = ResolveLink('1,2,3','Cinchy Id') WHERE [Id] = 10; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql statement Select [MSH] FROM [Mock].[UpdateEmployee3] Where [Id] = 10; and validate text result MSH with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement Select [MSH] FROM [Mock].[UpdateEmployee3] Where [Id] = 10 ORDER BY [Version],[Draft Version]; and validate text result MSH with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: RT - As Builder, Update Simple Column cell
	When As User Builder Run cql statement Update [Mock].[UpdateEmployee3] SET [Start Date] = '15 Mar 2019', [Emergency Contact Number] = '23123123', [Salaried] = 'true' WHERE [Id] = 11; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql statement Select [Start Date] , [Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateEmployee3] Where [Id] = 11 and validate text result Start Date,Emergency Contact Number,Salaried2019-03-15 00:00:00,23123123,True with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement Select [Start Date],[Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateEmployee3] Where [Id] = 11 ORDER BY [Version],[Draft Version] and validate text result Start Date,Emergency Contact Number,Salaried2019-04-09 00:00:00,123213121,False2019-04-09 00:00:00,123213121,False2019-04-09 00:00:00,123213121,False2019-03-15 00:00:00,23123123,True with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: RT - As Builder, Update Link cells
	When As User Builder Run cql statement Update [Mock].[UpdateEmployee3] SET [Job] = ResolveLink('Toronto','Location'), [Link Calculated Cache] = ResolveLink('FirstName Test3 LastName Test3','Calculated Cache'), [Link CalculatedLink Cache] = ResolveLink('Brazil Cinchy','Cal Link Cache'), [Manager] = ResolveLink('Apple','Name'),[Person]= ResolveLink('Orange','Name'), [Role] = ResolveLink('QA','Name') WHERE [Id] BETWEEN 12 AND 14; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql statement Select [Job], [Link Calculated Cache], [Manager], [Person], [Role] FROM [Mock].[UpdateEmployee3] WHERE [Id] BETWEEN 12 AND 14; and validate text result Job,Link Calculated Cache,Manager,Person,RoleToronto,FirstName Test3 LastName Test3,Apple,Orange,QAToronto,FirstName Test3 LastName Test3,Apple,Orange,QAToronto,FirstName Test3 LastName Test3,Apple,Orange,QA with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement Select [Version],[Draft Version],[Job], [Link Calculated Cache], [Manager],[Person], [Role] FROM [Mock].[UpdateEmployee3] WHERE [Id] BETWEEN 12 AND 14 ORDER BY [Version],[Draft Version] and validate unordered result resultRegularTable18.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: RT - As Builder, Update Choice cells
	When As User Builder Run cql statement Update [Mock].[UpdateEmployee3] SET [Employee Term] = 'Part Time' WHERE [Id] BETWEEN 15 AND 17; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql statement Select [Employee Term] FROM [Mock].[UpdateEmployee3] WHERE [Id] BETWEEN 15 AND 17; and validate text result Employee TermPart TimePart TimePart Time with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement Select [Version],[Draft Version],[Employee Term] FROM [Mock].[UpdateEmployee3] WHERE [Id] BETWEEN 15 AND 17 ORDER BY [Version],[Draft Version] and validate unordered result resultRegularTable19.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: RT - As Builder, Update MultiSelect Choice cells
	When As User Builder Run cql statement Update [Mock].[UpdateEmployee3] SET [MSC] = 'Dance,Jump,Play,Sleep' WHERE [Id] BETWEEN 18 AND 20; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql statement Select [Id], [MSC] FROM [Mock].[UpdateEmployee3] WHERE [Id] BETWEEN 18 AND 20; and validate unordered text result Id,MSC\n18,Dance, Jump, Play, Sleep\n19,Dance, Jump, Play, Sleep\n20,Dance, Jump, Play, Sleep with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement Select [Id], [Version],[Draft Version],[MSC] FROM [Mock].[UpdateEmployee3] WHERE [Id] BETWEEN 18 AND 20 ORDER BY [Version],[Draft Version] and validate unordered result resultRegularTable20.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: RT - As Builder, Update Hierarchy cells
	When As User Builder Run cql statement Update [Mock].[UpdateEmployee3] SET [Hlink] = ResolveLink('Edit Selected Edit Row Filter currentUsersGroups12','Employee ID') WHERE [Id] BETWEEN 21 AND 23; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql statement Select [Hlink] FROM [Mock].[UpdateEmployee3] WHERE [Id] BETWEEN 21 AND 23; and validate text result HlinkEdit Selected Edit Row Filter currentUsersGroups12Edit Selected Edit Row Filter currentUsersGroups12Edit Selected Edit Row Filter currentUsersGroups12 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement Select [Version],[Draft Version],[Hlink] FROM [Mock].[UpdateEmployee3] WHERE [Id] BETWEEN 21 AND 23 ORDER BY [Version],[Draft Version]; and validate unordered result resultRegularTable21.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: RT - As Builder, Update Simple Column cells
	When As User Builder Run cql statement Update [Mock].[UpdateEmployee3] SET [Start Date] = '15 Mar 2019', [Emergency Contact Number] = '23123123', [Salaried] = 'true' WHERE [Id] BETWEEN 24 AND 26; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User Builder Run cql statement Select [Start Date], [Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateEmployee3] WHERE [Id] BETWEEN 24 AND 26; and validate text result Start Date,Emergency Contact Number,Salaried2019-03-15 00:00:00,23123123,True2019-03-15 00:00:00,23123123,True2019-03-15 00:00:00,23123123,True with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
	Then As User Builder Run cql statement Select [Version],[Draft Version],[Start Date] , [Emergency Contact Number], [Salaried]  FROM [Mock].[UpdateEmployee3] WHERE [Id] BETWEEN 24 AND 26 ORDER BY [Version],[Draft Version] and validate unordered result resultRegularTable22.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |

@Rest
Scenario: RT - As Builder, Update a row using INNER Join
	When As User Builder Run cql from file updateRegularTable13.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data3  | All Edit View Row Filter12                                                                  |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test3 LastName Test3                                                              |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data9  | 12,All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Orange                                                                                      |
		| data12 | QA                                                                                          |
	Then As User Builder Run cql from file selectRegularTable5.txt and validate unordered result resultRegularTable23.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User Builder Run cql from file selectRegularTable6.txt and validate unordered result resultRegularTable24.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |

@Rest
Scenario: RT - As Builder, Update a row using LEFT Join
	When As User Builder Run cql from file updateRegularTable14.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data3  | All Edit View Row Filter12                                                                  |
		| data4  | Ajax                                                                                        |
		| data5  | FirstName Test3 LastName Test3                                                              |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data9  | 12,All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
	Then As User Builder Run cql from file selectRegularTable5.txt and validate unordered result resultRegularTable25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |
	Then As User Builder Run cql from file selectRegularTable6.txt and validate unordered result resultRegularTable26.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |

@Rest
Scenario: RT - As Builder, Update a row using RIGHT Join
	When As User Builder Run cql from file updateRegularTable15.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data3  | All Edit View Row Filter12                                                                  |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test LastName Test                                                                |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data9  | 12,All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
	Then As User Builder Run cql from file selectRegularTable5.txt and validate unordered result resultRegularTable27.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |
	Then As User Builder Run cql from file selectRegularTable6.txt and validate unordered result resultRegularTable28.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |

@Rest
Scenario: RT - As Builder, Update a row using FULL Join
	When As User Builder Run cql from file updateRegularTable16.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data3  | All Edit View Row Filter12                                                                  |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test LastName Test                                                                |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data9  | 12,All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
	Then As User Builder Run cql from file selectRegularTable5.txt and validate unordered result resultRegularTable29.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |
	Then As User Builder Run cql from file selectRegularTable6.txt and validate unordered result resultRegularTable30.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |

@Rest
Scenario: RT - As Builder, Update a row using CROSS Join
	When As User Builder Run cql from file updateRegularTable17.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data3  | All Edit View Row Filter12                                                                  |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test LastName Test                                                                |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data9  | 12,All Edit View Row Filter12,Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
	Then As User Builder Run cql from file selectRegularTable5.txt and validate unordered result resultRegularTable31.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |
	Then As User Builder Run cql from file selectRegularTable6.txt and validate unordered result resultRegularTable32.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |

@Rest
Scenario: RT - As Builder, Update rows using INNER Join
	When As User Builder Run cql from file updateRegularTable21.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data3  | 12                                                                                          |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test1 LastName Test1                                                              |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data9  | 12,viewonly12                                                                               |
		| data10 | 2020-12-06 00:00:00.0000000                                                                 |
		| data11 | Orange                                                                                      |
		| data12 | QA                                                                                          |
	Then As User Builder Run cql from file selectRegularTable7.txt and validate unordered result resultRegularTable33.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 29    |
	Then As User Builder Run cql from file selectRegularTable8.txt and validate unordered result resultRegularTable34.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 29    |

@Rest
Scenario: RT - As Builder, Update rows using LEFT Join
	When As User Builder Run cql from file updateRegularTable22.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data3  | 12                                                                                          |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test1 LastName Test1                                                              |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data9  | 12,viewonly12                                                                               |
		| data10 | 2020-12-06 00:00:00.0000000                                                                 |
		| data11 | Orange                                                                                      |
		| data12 | Dev                                                                                         |
	Then As User Builder Run cql from file selectRegularTable7.txt and validate unordered result resultRegularTable35.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 22    |
		| data2 | 25    |
	Then As User Builder Run cql from file selectRegularTable8.txt and validate unordered result resultRegularTable36.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 22    |
		| data2 | 25    |

@Rest
Scenario: RT - As Builder, Update rows using RIGHT Join
	When As User Builder Run cql from file updateRegularTable23.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data3  | 12                                                                                          |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test1 LastName Test1                                                              |
		| data6  | Ghana Shared                                                                                |
		| data7  | Apple                                                                                       |
		| data9  | 12,viewonly12                                                                               |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Orange                                                                                      |
		| data12 | UserGroup                                                                                   |
	Then As User Builder Run cql from file selectRegularTable7.txt and validate unordered result resultRegularTable37.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 18    |
		| data2 | 21    |
	Then As User Builder Run cql from file selectRegularTable8.txt and validate unordered result resultRegularTable38.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 18    |
		| data2 | 21    |

@Rest
Scenario: RT - As Builder, Update rows using FULL Join
	When As User Builder Run cql from file updateRegularTable24.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data3  | All Edit View Row Filter12                                                                  |
		| data4  | Ajax                                                                                        |
		| data5  | FirstName Test LastName Test                                                                |
		| data6  | Albania AutomationDomain                                                                    |
		| data7  | Grape                                                                                       |
		| data9  | All Edit View Row Filter12,viewonly12                                                       |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | Dev                                                                                         |
	Then As User Builder Run cql from file selectRegularTable7.txt and validate unordered result resultRegularTable39.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 17    |
	Then As User Builder Run cql from file selectRegularTable8.txt and validate unordered result resultRegularTable40.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 17    |

@Rest
Scenario: RT - As Builder, Update rows using CROSS Join
	When As User Builder Run cql from file updateRegularTable25.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data3  | All Edit View Row Filter12                                                                  |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test LastName Test                                                                |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data9  | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                               |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
	Then As User Builder Run cql from file selectRegularTable7.txt and validate unordered result resultRegularTable41.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 10    |
		| data2 | 13    |
	Then As User Builder Run cql from file selectRegularTable8000.txt and validate unordered result resultRegularTable42.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 10    |
		| data2 | 13    |