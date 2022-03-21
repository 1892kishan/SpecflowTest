Feature: CA - Update - EditAll Edit Row Filter Update

# Use Table UpdateCAEmployee6
# User - EditAll Edit Row Filter Simple Column Edit Row Filter Simple Column

@Rest
Scenario: As user with edit all columns with editable row filter, Update a row using select INNER Join as a subquery
	When As User EditAll Edit Row Filter Simple Column Run cql from file updateCATable134.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | 1                                                                                           |
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
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable110.txt and validate unordered result resultCATable170.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable111.txt and validate unordered result resultCATable171.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |

@Rest
Scenario: As user with edit all columns with editable row filter, Update a row using select LEFT Join as a subquery
	When As User EditAll Edit Row Filter Simple Column Run cql from file updateCATable135.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | 1                                                                                           |
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
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable110.txt and validate unordered result resultCATable142.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable111.txt and validate unordered result resultCATable143.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |

@Rest
Scenario: As user with edit all columns with editable row filter, Update a row using select RIGHT Join as a subquery
	When As User EditAll Edit Row Filter Simple Column Run cql from file updateCATable136.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | 1                                                                                           |
		| data4  | Toronto                                                                                     |
		| data5  | FirstNameTest LastNameTest                                                                  |
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
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable110.txt and validate unordered result resultCATable168.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable111.txt and validate unordered result resultCATable169.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |

@Rest
Scenario: As user with edit all columns with editable row filter, Update a row using select FULL Join as a subquery
	When As User EditAll Edit Row Filter Simple Column Run cql from file updateCATable137.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | 1                                                                                           |
		| data4  | Toronto                                                                                     |
		| data5  | FirstNameTest LastNameTest                                                                  |
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
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable110.txt and validate unordered result resultCATable172.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable111.txt and validate unordered result resultCATable173.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |

@Rest
Scenario: As user with edit all columns with editable row filter, Update a row using select CROSS Join as a subquery
	When As User EditAll Edit Row Filter Simple Column Run cql from file updateCATable138.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | 1                                                                                           |
		| data4  | Toronto                                                                                     |
		| data5  | FirstNameTest LastNameTest                                                                  |
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
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable110.txt and validate unordered result resultCATable148.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable111.txt and validate unordered result resultCATable149.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |

@Rest
Scenario: As user with edit all columns with editable row filter, Update a row using select WHERE IN as a subquery
	When As User EditAll Edit Row Filter Simple Column Run cql from file updateCATable139.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable110.txt and validate unordered result resultCATable150.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable111.txt and validate unordered result resultCATable151.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |

@Rest
Scenario: As user with edit all columns with editable row filter, Update a row using select WHERE FROM as a subquery
	When As User EditAll Edit Row Filter Simple Column Run cql from file updateCATable140.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable110.txt and validate unordered result resultCATable174.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable111.txt and validate unordered result resultCATable175.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |

@Rest
Scenario: As user with edit all columns with editable row filter, Update a row using select WHERE ANY as a subquery
	When As User EditAll Edit Row Filter Simple Column Run cql from file updateCATable141.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable110.txt and validate unordered result resultCATable176.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable111.txt and validate unordered result resultCATable177.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |

#@Rest
#Scenario: As EditAll Edit Row Filter Simple Column, Update rows using select INNER Join as a subquery
#	When As User EditAll Edit Row Filter Simple Column Run cql from file updateCATable142.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name   | Value                                                                                       |
#		| data1  | 1                                                                                           |
#		| data2  | 1                                                                                           |
#		| data3  | 12                                                                                          |
#		| data4  | Toronto                                                                                     |
#		| data5  | FirstName Test1 LastName Test1                                                              |
#		| data6  | Brazil Cinchy                                                                               |
#		| data7  | Apple                                                                                       |
#		| data8  | Play,Jump                                                                                   |
#		| data9  | 12,viewonly12                                                                               |
#		| data10 | 2020-12-06 00:00:00.0000000                                                                 |
#		| data11 | Orange                                                                                      |
#		| data12 | QA                                                                                          |
#		| data13 | true                                                                                        |
#		| data14 | 15 Mar 2017                                                                                 |
#		| data16 | Part Time                                                                                   |
#	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable108.txt and validate unordered result resultCATable156.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 26    |
#		| data2 | 29    |
#	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable109.txt and validate unordered result resultCATable157.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 26    |
#		| data2 | 29    |

#@Rest
#Scenario: As EditAll Edit Row Filter Simple Column, Update rows using select LEFT Join as a subquery
#	When As User EditAll Edit Row Filter Simple Column Run cql from file updateCATable143.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name   | Value                                                                                       |
#		| data1  | 1                                                                                           |
#		| data2  | 1                                                                                           |
#		| data3  | 12                                                                                          |
#		| data4  | Toronto                                                                                     |
#		| data5  | FirstName Test1 LastName Test1                                                              |
#		| data6  | Brazil Cinchy                                                                               |
#		| data7  | Apple                                                                                       |
#		| data8  | Play,Jump                                                                                   |
#		| data9  | 12,viewonly12                                                                               |
#		| data10 | 2020-12-06 00:00:00.0000000                                                                 |
#		| data11 | Orange                                                                                      |
#		| data12 | Dev                                                                                         |
#		| data13 | true                                                                                        |
#		| data14 | 15 Mar 2017                                                                                 |
#		| data16 | Part Time                                                                                   |
#	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable108.txt and validate unordered result resultCATable158.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 22    |
#		| data2 | 25    |
#	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable109.txt and validate unordered result resultCATable159.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 22    |
#		| data2 | 25    |

#@Rest
#Scenario: As EditAll Edit Row Filter Simple Column, Update rows using select RIGHT Join as a subquery
#	When As User EditAll Edit Row Filter Simple Column Run cql from file updateCATable144.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name   | Value                                                                                       |
#		| data1  | 1                                                                                           |
#		| data2  | 1                                                                                           |
#		| data3  | 12                                                                                          |
#		| data4  | Toronto                                                                                     |
#		| data5  | FirstName Test1 LastName Test1                                                              |
#		| data6  | Ghana Shared                                                                                |
#		| data7  | Apple                                                                                       |
#		| data8  | Play,Jump                                                                                   |
#		| data9  | 12,viewonly12                                                                               |
#		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
#		| data11 | Orange                                                                                      |
#		| data12 | UserGroup                                                                                   |
#		| data13 | false                                                                                       |
#		| data14 | 15 Mar 2017                                                                                 |
#		| data16 | Full Time                                                                                   |
#	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable108.txt and validate unordered result resultCATable160.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 18    |
#		| data2 | 21    |
#	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable109.txt and validate unordered result resultCATable161.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 18    |
#		| data2 | 21    |

#@Rest
#Scenario: As EditAll Edit Row Filter Simple Column, Update rows using select FULL Join as a subquery
#	When As User EditAll Edit Row Filter Simple Column Run cql from file updateCATable145.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name   | Value                                                                                       |
#		| data1  | 100000                                                                                      |
#		| data2  | 09090990090                                                                                 |
#		| data3  | All Edit View Row Filter12                                                                  |
#		| data4  | Ajax                                                                                        |
#		| data5  | FirstNameTest LastNameTest                                                                |
#		| data6  | Albania AutomationDomain                                                                    |
#		| data7  | Grape                                                                                       |
#		| data8  | Play,Jump                                                                                   |
#		| data9  | All Edit View Row Filter12,viewonly12                                                       |
#		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
#		| data11 | Apple                                                                                       |
#		| data12 | Dev                                                                                         |
#		| data13 | true                                                                                        |
#		| data14 | 15 Mar 2017                                                                                 |
#		| data15 | Part Time                                                                                   |
#	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable108.txt and validate unordered result resultCATable162.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 14    |
#		| data2 | 17    |
#	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable109.txt and validate unordered result resultCATable163.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 14    |
#		| data2 | 17    |

#@Rest
#Scenario: As EditAll Edit Row Filter Simple Column, Update rows using select CROSS Join as a subquery
#	When As User EditAll Edit Row Filter Simple Column Run cql from file updateCATable146.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name   | Value                                                                                       |
#		| data1  | 100000                                                                                      |
#		| data2  | 09090990090                                                                                 |
#		| data3  | All Edit View Row Filter12                                                                  |
#		| data4  | Toronto                                                                                     |
#		| data5  | FirstNameTest LastNameTest                                                                |
#		| data6  | Brazil Cinchy                                                                               |
#		| data7  | Apple                                                                                       |
#		| data8  | Play,Jump                                                                                   |
#		| data9  | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                               |
#		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
#		| data11 | Apple                                                                                       |
#		| data12 | QA                                                                                          |
#		| data13 | false                                                                                       |
#		| data14 | 15 Mar 2017                                                                                 |
#		| data15 | Full Time                                                                                   |
#	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable108.txt and validate unordered result resultCATable164.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 10    |
#		| data2 | 13    |
#	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable109.txt and validate unordered result resultCATable165.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 10    |
#		| data2 | 13    |

#@Rest
#Scenario: As EditAll Edit Row Filter Simple Column, Update rows using select WHERE FROM as a subquery 
#	When As User EditAll Edit Row Filter Simple Column Run cql from file updateCATable147.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name   | Value                                                                                       |
#		| data1  | 2                                                                                           |
#		| data2  | 2                                                                                           |
#		| data3  | All Edit View Row Filter12                                                                  |
#		| data4  | Toronto                                                                                     |
#		| data5  | FirstNameTest LastNameTest                                                                |
#		| data6  | Brazil Cinchy                                                                               |
#		| data7  | Apple                                                                                       |
#		| data8  | Play,Jump                                                                                   |
#		| data9  | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                               |
#		| data10 | 2020-12-06 00:00:00.0000000                                                                 |
#		| data11 | Apple                                                                                       |
#		| data12 | UserGroup                                                                                   |
#		| data13 | false                                                                                       |
#		| data14 | 15 Mar 2017                                                                                 |
#		| data15 | Co-op                                                                                       |
#		| data16 | 5                                                                                           |
#		| data17 | 9                                                                                           |
#	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable108.txt and validate unordered result resultCATable166.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 5     |
#		| data2 | 9     |
#	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectCATable109.txt and validate unordered result resultCATable167.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 5     |
#		| data2 | 9     |

