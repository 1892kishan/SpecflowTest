Feature: SQL EditAll Edit Row Filter Update

# Use Table UpdateEmployee6
# User - EditAll Edit Row Filter Simple Column Edit Row Filter Simple Column

@Rest
Scenario: As user with edit all columns with editable row filter, Update a row using select INNER Join as a subquery
	When As User EditAll Edit Row Filter Simple Column Run cql from file updateRegularTable134.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable110.txt and validate unordered result resultRegularTable170.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable111.txt and validate unordered result resultRegularTable171.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |

@Rest
Scenario: As user with edit all columns with editable row filter, Update a row using select LEFT Join as a subquery
	When As User EditAll Edit Row Filter Simple Column Run cql from file updateRegularTable135.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable1100.txt and validate unordered result resultRegularTable142.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable111.txt and validate unordered result resultRegularTable143.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |

@Rest
Scenario: As user with edit all columns with editable row filter, Update a row using select RIGHT Join as a subquery
	When As User EditAll Edit Row Filter Simple Column Run cql from file updateRegularTable136.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
		| data16 | Automation32                                                                                |
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable110.txt and validate unordered result resultRegularTable168.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable111.txt and validate unordered result resultRegularTable169.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |

@Rest
Scenario: As user with edit all columns with editable row filter, Update a row using select FULL Join as a subquery
	When As User EditAll Edit Row Filter Simple Column Run cql from file updateRegularTable137.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
		| data16 | Automation31                                                                                |
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable110.txt and validate unordered result resultRegularTable172.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable111.txt and validate unordered result resultRegularTable173.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |

@Rest
Scenario: As user with edit all columns with editable row filter, Update a row using select CROSS Join as a subquery
	When As User EditAll Edit Row Filter Simple Column Run cql from file updateRegularTable138.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable1100.txt and validate unordered result resultRegularTable148.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable1110.txt and validate unordered result resultRegularTable149.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |
#Salaried  Column should contain 0.5 for Approved Record
@Rest
Scenario: As user with edit all columns with editable row filter, Update a row using select WHERE IN as a subquery
	When As User EditAll Edit Row Filter Simple Column Run cql from file updateRegularTable139.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable1100.txt and validate unordered result resultRegularTable150.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable111.txt and validate unordered result resultRegularTable151.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |
#Salaried  Column should contain 0.5 for Approved Record
@Rest
Scenario: As user with edit all columns with editable row filter, Update a row using select WHERE FROM as a subquery
	When As User EditAll Edit Row Filter Simple Column Run cql from file updateRegularTable140.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable110.txt and validate unordered result resultRegularTable1740.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable111.txt and validate unordered result resultRegularTable175.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |

#Salaried  Column should contain 0.5 for Approved Record
@Rest
Scenario: As user with edit all columns with editable row filter, Update a row using select WHERE ANY as a subquery
	When As User EditAll Edit Row Filter Simple Column Run cql from file updateRegularTable141.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name | Value |
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable110.txt and validate unordered result resultRegularTable1760.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable111.txt and validate unordered result resultRegularTable177.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |

#@Rest
#Scenario: As EditAll Edit Row Filter Simple Column, Update rows using select INNER Join as a subquery
#	When As User EditAll Edit Row Filter Simple Column Run cql from file updateRegularTable142.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
#	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable108.txt and validate unordered result resultRegularTable156.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 26    |
#		| data2 | 29    |
#	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable109.txt and validate unordered result resultRegularTable157.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 26    |
#		| data2 | 29    |

#@Rest
#Scenario: As EditAll Edit Row Filter Simple Column, Update rows using select LEFT Join as a subquery
#	When As User EditAll Edit Row Filter Simple Column Run cql from file updateRegularTable143.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
#	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable108.txt and validate unordered result resultRegularTable158.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 22    |
#		| data2 | 25    |
#	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable109.txt and validate unordered result resultRegularTable159.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 22    |
#		| data2 | 25    |

#@Rest
#Scenario: As EditAll Edit Row Filter Simple Column, Update rows using select RIGHT Join as a subquery
#	When As User EditAll Edit Row Filter Simple Column Run cql from file updateRegularTable144.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
#	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable108.txt and validate unordered result resultRegularTable160.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 18    |
#		| data2 | 21    |
#	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable109.txt and validate unordered result resultRegularTable161.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 18    |
#		| data2 | 21    |

#@Rest
#Scenario: As EditAll Edit Row Filter Simple Column, Update rows using select FULL Join as a subquery
#	When As User EditAll Edit Row Filter Simple Column Run cql from file updateRegularTable145.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name   | Value                                                                                       |
#		| data1  | 100000                                                                                      |
#		| data2  | 09090990090                                                                                 |
#		| data3  | All Edit View Row Filter12                                                                  |
#		| data4  | Ajax                                                                                        |
#		| data5  | FirstName Test LastName Test                                                                |
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
#	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable108.txt and validate unordered result resultRegularTable162.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 14    |
#		| data2 | 17    |
#	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable109.txt and validate unordered result resultRegularTable163.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 14    |
#		| data2 | 17    |

#@Rest
#Scenario: As EditAll Edit Row Filter Simple Column, Update rows using select CROSS Join as a subquery
#	When As User EditAll Edit Row Filter Simple Column Run cql from file updateRegularTable146.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name   | Value                                                                                       |
#		| data1  | 100000                                                                                      |
#		| data2  | 09090990090                                                                                 |
#		| data3  | All Edit View Row Filter12                                                                  |
#		| data4  | Toronto                                                                                     |
#		| data5  | FirstName Test LastName Test                                                                |
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
#	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable108.txt and validate unordered result resultRegularTable164.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 10    |
#		| data2 | 13    |
#	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable109.txt and validate unordered result resultRegularTable165.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 10    |
#		| data2 | 13    |

#@Rest
#Scenario: As EditAll Edit Row Filter Simple Column, Update rows using select WHERE FROM as a subquery 
#	When As User EditAll Edit Row Filter Simple Column Run cql from file updateRegularTable147.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name   | Value                                                                                       |
#		| data1  | 2                                                                                           |
#		| data2  | 2                                                                                           |
#		| data3  | All Edit View Row Filter12                                                                  |
#		| data4  | Toronto                                                                                     |
#		| data5  | FirstName Test LastName Test                                                                |
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
#	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable108.txt and validate unordered result resultRegularTable166.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 5     |
#		| data2 | 9     |
#	Then As User EditAll Edit Row Filter Simple Column Run cql from file selectRegularTable109.txt and validate unordered result resultRegularTable167.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
#		| Name  | Value |
#		| data1 | 5     |
#		| data2 | 9     |

