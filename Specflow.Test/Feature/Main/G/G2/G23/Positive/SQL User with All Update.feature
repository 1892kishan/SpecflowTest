Feature: SQL User with All Update

# Use Table UpdateEmployee19
# User - User with All
@Rest
Scenario: As user with edit all columns and view all columns, Update a row using select INNER Join as a subquery
	When As User User with All Run cql from file updateRegularTable142.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
		| data13 | true                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Automation1                                                                                 |
		| data16 | Full Time                                                                                   |
	Then As User User with All Run cql from file selectRegularTable112.txt and validate unordered result resultRegularTable180.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User User with All Run cql from file selectRegularTable113.txt and validate unordered result resultRegularTable181.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |

@Rest
Scenario: As user with edit all columns and view all columns, Update a row using select LEFT Join as a subquery
	When As User User with All Run cql from file updateRegularTable143.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
		| data15 | Automation33                                                                                |
		| data16 | Full Time                                                                                   |
	Then As User User with All Run cql from file selectRegularTable112.txt and validate unordered result resultRegularTable182.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |
	Then As User User with All Run cql from file selectRegularTable113.txt and validate unordered result resultRegularTable183.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |

@Rest
Scenario: As user with edit all columns and view all columns, Update a row using select RIGHT Join as a subquery
	When As User User with All Run cql from file updateRegularTable144.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
		| data15 | Part Time                                                                                   |
		| data16 | Automation32                                                                                |
	Then As User User with All Run cql from file selectRegularTable112.txt and validate unordered result resultRegularTable184.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |
	Then As User User with All Run cql from file selectRegularTable113.txt and validate unordered result resultRegularTable185.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |

@Rest
Scenario: As user with edit all columns and view all columns, Update a row using select FULL Join as a subquery
	When As User User with All Run cql from file updateRegularTable145.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
		| data15 | Part Time                                                                                   |
		| data16 | Automation31                                                                                |
	Then As User User with All Run cql from file selectRegularTable112.txt and validate unordered result resultRegularTable186.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |
	Then As User User with All Run cql from file selectRegularTable113.txt and validate unordered result resultRegularTable187.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |

@Rest
Scenario: As user with edit all columns and view all columns, Update a row using select CROSS Join as a subquery
	When As User User with All Run cql from file updateRegularTable146.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
		| data16 | Automation30                                                                                |
	Then As User User with All Run cql from file selectRegularTable112.txt and validate unordered result resultRegularTable188.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |
	Then As User User with All Run cql from file selectRegularTable113.txt and validate unordered result resultRegularTable189.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |

@Rest
Scenario: As user with edit all columns and view all columns, Update a row using select WHERE IN as a subquery
	When As User User with All Run cql from file updateRegularTable147.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User User with All Run cql from file selectRegularTable112.txt and validate unordered result resultRegularTable190.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |
	Then As User User with All Run cql from file selectRegularTable113.txt and validate unordered result resultRegularTable191.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |

@Rest
Scenario: As user with edit all columns and view all columns, Update a row using select WHERE FROM as a subquery
	When As User User with All Run cql from file updateRegularTable148.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User User with All Run cql from file selectRegularTable112.txt and validate unordered result resultRegularTable192.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User User with All Run cql from file selectRegularTable113.txt and validate unordered result resultRegularTable193.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |

@Rest
Scenario: As user with edit all columns and view all columns, Update a row using select WHERE ANY as a subquery
	When As User User with All Run cql from file updateRegularTable149.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User User with All Run cql from file selectRegularTable112.txt and validate unordered result resultRegularTable194.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User User with All Run cql from file selectRegularTable113.txt and validate unordered result resultRegularTable195.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |

@Rest
Scenario: As user with edit all columns and view all columns, Update rows using select INNER Join as a subquery
	When As User User with All Run cql from file updateRegularTable150.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                          |
		| data1  | 1                              |
		| data2  | 1                              |
		| data3  | 12                             |
		| data4  | Toronto                        |
		| data5  | FirstName Test1 LastName Test1 |
		| data6  | Brazil Cinchy                  |
		| data7  | Apple                          |
		| data8  | Play,Jump                      |
		| data9  | 12,viewonly12                  |
		| data10 | 2020-12-06 00:00:00.0000000    |
		| data11 | Orange                         |
		| data12 | QA                             |
		| data13 | true                           |
		| data14 | 15 Mar 2017                    |
		| data16 | Part Time                      |
	Then As User User with All Run cql from file selectRegularTable114.txt and validate unordered result resultRegularTable196.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 29    |
	Then As User User with All Run cql from file selectRegularTable115.txt and validate unordered result resultRegularTable197.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 29    |

@Rest
Scenario: As user with edit all columns and view all columns, Update rows using select LEFT Join as a subquery
	When As User User with All Run cql from file updateRegularTable151.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                          |
		| data1  | 1                              |
		| data2  | 1                              |
		| data3  | 12                             |
		| data4  | Toronto                        |
		| data5  | FirstName Test1 LastName Test1 |
		| data6  | Brazil Cinchy                  |
		| data7  | Apple                          |
		| data8  | Play,Jump                      |
		| data9  | 12,viewonly12                  |
		| data10 | 2020-12-06 00:00:00.0000000    |
		| data11 | Orange                         |
		| data12 | Dev                            |
		| data13 | true                           |
		| data14 | 15 Mar 2017                    |
		| data16 | Part Time                      |
	Then As User User with All Run cql from file selectRegularTable114.txt and validate unordered result resultRegularTable198.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 22    |
		| data2 | 25    |
	Then As User User with All Run cql from file selectRegularTable115.txt and validate unordered result resultRegularTable199.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 22    |
		| data2 | 25    |

@Rest
Scenario: As user with edit all columns and view all columns, Update rows using select RIGHT Join as a subquery
	When As User User with All Run cql from file updateRegularTable152.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                          |
		| data1  | 1                              |
		| data2  | 1                              |
		| data3  | 12                             |
		| data4  | Toronto                        |
		| data5  | FirstName Test1 LastName Test1 |
		| data6  | Ghana Shared                   |
		| data7  | Apple                          |
		| data8  | Play,Jump                      |
		| data9  | 12,viewonly12                  |
		| data10 | 2020-03-03 00:00:00.0000000    |
		| data11 | Orange                         |
		| data12 | UserGroup                      |
		| data13 | false                          |
		| data14 | 15 Mar 2017                    |
		| data16 | Full Time                      |
	Then As User User with All Run cql from file selectRegularTable114.txt and validate unordered result resultRegularTable200.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 18    |
		| data2 | 21    |
	Then As User User with All Run cql from file selectRegularTable115.txt and validate unordered result resultRegularTable201.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 18    |
		| data2 | 21    |

@Rest
Scenario: As user with edit all columns and view all columns, Update rows using select FULL Join as a subquery
	When As User User with All Run cql from file updateRegularTable153.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                 |
		| data1  | 100000                                |
		| data2  | 09090990090                           |
		| data3  | All Edit View Row Filter12            |
		| data4  | Ajax                                  |
		| data5  | FirstName Test LastName Test          |
		| data6  | Albania AutomationDomain              |
		| data7  | Grape                                 |
		| data8  | Play,Jump                             |
		| data9  | All Edit View Row Filter12,viewonly12 |
		| data10 | 2020-03-03 00:00:00.0000000           |
		| data11 | Apple                                 |
		| data12 | Dev                                   |
		| data13 | true                                  |
		| data14 | 15 Mar 2017                           |
		| data15 | Part Time                             |
	Then As User User with All Run cql from file selectRegularTable114.txt and validate unordered result resultRegularTable202.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 17    |
	Then As User User with All Run cql from file selectRegularTable115.txt and validate unordered result resultRegularTable203.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 17    |

@Rest
Scenario: As user with edit all columns and view all columns, Update rows using select CROSS Join as a subquery
	When As User User with All Run cql from file updateRegularTable154.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                         |
		| data1  | 100000                                                        |
		| data2  | 09090990090                                                   |
		| data3  | All Edit View Row Filter12                                    |
		| data4  | Toronto                                                       |
		| data5  | FirstName Test LastName Test                                  |
		| data6  | Brazil Cinchy                                                 |
		| data7  | Apple                                                         |
		| data8  | Play,Jump                                                     |
		| data9  | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| data10 | 2020-03-03 00:00:00.0000000                                   |
		| data11 | Apple                                                         |
		| data12 | QA                                                            |
		| data13 | false                                                         |
		| data14 | 15 Mar 2017                                                   |
		| data15 | Full Time                                                     |
	Then As User User with All Run cql from file selectRegularTable114.txt and validate unordered result resultRegularTable204.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 10    |
		| data2 | 13    |
	Then As User User with All Run cql from file selectRegularTable115.txt and validate unordered result resultRegularTable205.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 10    |
		| data2 | 13    |

@Rest
Scenario: As user with edit all columns and view all columns, Update rows using select WHERE FROM as a subquery
	When As User User with All Run cql from file updateRegularTable155.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                         |
		| data1  | 2                                                             |
		| data2  | 2                                                             |
		| data3  | All Edit View Row Filter12                                    |
		| data4  | Toronto                                                       |
		| data5  | FirstName Test LastName Test                                  |
		| data6  | Brazil Cinchy                                                 |
		| data7  | Apple                                                         |
		| data8  | Play,Jump                                                     |
		| data9  | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12 |
		| data10 | 2020-12-06 00:00:00.0000000                                   |
		| data11 | Apple                                                         |
		| data12 | UserGroup                                                     |
		| data13 | false                                                         |
		| data14 | 15 Mar 2017                                                   |
		| data15 | Co-op                                                         |
		| data16 | 5                                                             |
		| data17 | 9                                                             |
	Then As User User with All Run cql from file selectRegularTable114.txt and validate unordered result resultRegularTable206.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
		| data2 | 9     |
	Then As User User with All Run cql from file selectRegularTable115.txt and validate unordered result resultRegularTable207.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
		| data2 | 9     |

#Branch CIN-00293 on hold
@Rest @CIN-00293 @Ignore
Scenario: RT - As user with edit all and view all, Update Multi Link Column where Edit row filter is based on Multi Link Column
	When As User User with All Run cql statement Update t set t.[Admin Groups] = '1,1,15,15', t.[Write Groups]= '1,1,15,15' from [Cinchy].[Data Sync Configurations] t where t.[Cinchy id] = 1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User User with All Run cql statement SELECT [Admin Groups], [Config ID], [Config Version], [Execute Groups], [Name], [Read Groups], [Sync GUID], [Write Groups] FROM [Cinchy].[Data Sync Configurations] WHERE [Cinchy Id] =1; and validate unordered result resultCIN293.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#Table alias required for this query. Please provide an alias to proceed
@Rest @CIN-00293
Scenario: UPDATE SET Multi-select link column as a user with View all columns and Edit all columns with editable row filter based on multi select link column
	When As User Ben Run cql statement Update [QA].[CIN293 LinkTable] set [MSL] = '1,1'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Ben Run cql statement Select [Name],Editable([MSL]) as Result ,[MSL] FROM [QA].[CIN293 LinkTable] and validate unordered text result Name,Result,MSL\na,0,2\nb,1,1\nc,1,1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |

#Table alias required for this query. Please provide an alias to proceed
@Rest @CIN-00293
Scenario: UPDATE SET Multi-select link column as a user with edit selected columns with editable row filter based on multi select link column and view selected columns
	When As User Ann Run cql statement Update [QA].[CIN293 LinkTable] set [MSL] = '2,1'; with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User Ann Run cql statement Select [Name],Editable([MSL]) as Result,[MSL] FROM [QA].[CIN293 LinkTable] and validate unordered text result Name,Result,MSL\na,1,2\nc,0,1 with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |