Feature: SQL EditAll Update

# Use Table UpdateEmployee5
# User - EditAll

@Rest
Scenario: As user with edit all columns, Update a row using select INNER Join as a subquery
	When As User EditAll Run cql from file updateRegularTable120.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
	Then As User EditAll Run cql from file selectRegularTable106.txt and validate unordered result resultRegularTable140.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User EditAll Run cql from file selectRegularTable107.txt and validate unordered result resultRegularTable141.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |

@Rest
Scenario: As user with edit all columns, Update a row using select LEFT Join as a subquery
	When As User EditAll Run cql from file updateRegularTable121.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
	Then As User EditAll Run cql from file selectRegularTable106.txt and validate unordered result resultRegularTable142.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |
	Then As User EditAll Run cql from file selectRegularTable107.txt and validate unordered result resultRegularTable143.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |

@Rest
Scenario: As user with edit all columns, Update a row using select RIGHT Join as a subquery
	When As User EditAll Run cql from file updateRegularTable122.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
	Then As User EditAll Run cql from file selectRegularTable106.txt and validate unordered result resultRegularTable144.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |
	Then As User EditAll Run cql from file selectRegularTable107.txt and validate unordered result resultRegularTable145.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |

@Rest
Scenario: As user with edit all columns, Update a row using select FULL Join as a subquery
	When As User EditAll Run cql from file updateRegularTable123.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
	Then As User EditAll Run cql from file selectRegularTable106.txt and validate unordered result resultRegularTable146.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |
	Then As User EditAll Run cql from file selectRegularTable107.txt and validate unordered result resultRegularTable147.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |

@Rest
Scenario: As user with edit all columns, Update a row using select CROSS Join as a subquery
	When As User EditAll Run cql from file updateRegularTable124.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
	Then As User EditAll Run cql from file selectRegularTable106.txt and validate unordered result resultRegularTable148.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |
	Then As User EditAll Run cql from file selectRegularTable107.txt and validate unordered result resultRegularTable149.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |

@Rest
Scenario: As user with edit all columns, Update a row using select WHERE IN as a subquery
	When As User EditAll Run cql from file updateRegularTable125.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User EditAll Run cql from file selectRegularTable106.txt and validate unordered result resultRegularTable150.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |
	Then As User EditAll Run cql from file selectRegularTable107.txt and validate unordered result resultRegularTable151.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |

@Rest
Scenario: As user with edit all columns, Update a row using select WHERE FROM as a subquery
	When As User EditAll Run cql from file updateRegularTable126.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User EditAll Run cql from file selectRegularTable106.txt and validate unordered result resultRegularTable152.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User EditAll Run cql from file selectRegularTable107.txt and validate unordered result resultRegularTable153.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |

@Rest
Scenario: As user with edit all columns, Update a row using select WHERE ANY as a subquery
	When As User EditAll Run cql from file updateRegularTable127.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User EditAll Run cql from file selectRegularTable106.txt and validate unordered result resultRegularTable154.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User EditAll Run cql from file selectRegularTable107.txt and validate unordered result resultRegularTable155.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |

@Rest
Scenario: As user with edit all columns, Update rows using select INNER Join as a subquery
	When As User EditAll Run cql from file updateRegularTable128.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 1                                                                                           |
		| data2  | 1                                                                                           |
		| data3  | 12                                                                                          |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test1 LastName Test1                                                              |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 12,viewonly12                                                                               |
		| data10 | 2020-12-06 00:00:00.0000000                                                                 |
		| data11 | Orange                                                                                      |
		| data12 | QA                                                                                          |
		| data13 | true                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data16 | Part Time                                                                                   |
	Then As User EditAll Run cql from file selectRegularTable108.txt and validate unordered result resultRegularTable156.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 29    |
	Then As User EditAll Run cql from file selectRegularTable109.txt and validate unordered result resultRegularTable157.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 29    |

@Rest
Scenario: As user with edit all columns, Update rows using select LEFT Join as a subquery
	When As User EditAll Run cql from file updateRegularTable129.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 1                                                                                           |
		| data2  | 1                                                                                           |
		| data3  | 12                                                                                          |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test1 LastName Test1                                                              |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 12,viewonly12                                                                               |
		| data10 | 2020-12-06 00:00:00.0000000                                                                 |
		| data11 | Orange                                                                                      |
		| data12 | Dev                                                                                         |
		| data13 | true                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data16 | Part Time                                                                                   |
	Then As User EditAll Run cql from file selectRegularTable108.txt and validate unordered result resultRegularTable158.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 22    |
		| data2 | 25    |
	Then As User EditAll Run cql from file selectRegularTable109.txt and validate unordered result resultRegularTable159.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 22    |
		| data2 | 25    |

@Rest
Scenario: As user with edit all columns, Update rows using select RIGHT Join as a subquery
	When As User EditAll Run cql from file updateRegularTable130.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 1                                                                                           |
		| data2  | 1                                                                                           |
		| data3  | 12                                                                                          |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test1 LastName Test1                                                              |
		| data6  | Ghana Shared                                                                                |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | 12,viewonly12                                                                               |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Orange                                                                                      |
		| data12 | UserGroup                                                                                   |
		| data13 | false                                                                                       |
		| data14 | 15 Mar 2017                                                                                 |
		| data16 | Full Time                                                                                   |
	Then As User EditAll Run cql from file selectRegularTable108.txt and validate unordered result resultRegularTable160.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 18    |
		| data2 | 21    |
	Then As User EditAll Run cql from file selectRegularTable109.txt and validate unordered result resultRegularTable161.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 18    |
		| data2 | 21    |

@Rest
Scenario: As user with edit all columns, Update rows using select FULL Join as a subquery
	When As User EditAll Run cql from file updateRegularTable131.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | All Edit View Row Filter12                                                                  |
		| data4  | Ajax                                                                                        |
		| data5  | FirstName Test LastName Test                                                                |
		| data6  | Albania AutomationDomain                                                                    |
		| data7  | Grape                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | All Edit View Row Filter12,viewonly12                                                       |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | Dev                                                                                         |
		| data13 | true                                                                                        |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Part Time                                                                                   |
	Then As User EditAll Run cql from file selectRegularTable108.txt and validate unordered result resultRegularTable162.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 17    |
	Then As User EditAll Run cql from file selectRegularTable109.txt and validate unordered result resultRegularTable163.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 17    |

@Rest
Scenario: As user with edit all columns, Update rows using select CROSS Join as a subquery
	When As User EditAll Run cql from file updateRegularTable132.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | All Edit View Row Filter12                                                                  |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test LastName Test                                                                |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                               |
		| data10 | 2020-03-03 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | QA                                                                                          |
		| data13 | false                                                                                       |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Full Time                                                                                   |
	Then As User EditAll Run cql from file selectRegularTable108.txt and validate unordered result resultRegularTable164.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 10    |
		| data2 | 13    |
	Then As User EditAll Run cql from file selectRegularTable109.txt and validate unordered result resultRegularTable165.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 10    |
		| data2 | 13    |

@Rest
Scenario: As user with edit all columns, Update rows using select WHERE FROM as a subquery 
	When As User EditAll Run cql from file updateRegularTable133.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 2                                                                                           |
		| data2  | 2                                                                                           |
		| data3  | All Edit View Row Filter12                                                                  |
		| data4  | Toronto                                                                                     |
		| data5  | FirstName Test LastName Test                                                                |
		| data6  | Brazil Cinchy                                                                               |
		| data7  | Apple                                                                                       |
		| data8  | Play,Jump                                                                                   |
		| data9  | Edit Selected Edit Row Filter currentUsersGroups12,viewonly12                               |
		| data10 | 2020-12-06 00:00:00.0000000                                                                 |
		| data11 | Apple                                                                                       |
		| data12 | UserGroup                                                                                   |
		| data13 | false                                                                                       |
		| data14 | 15 Mar 2017                                                                                 |
		| data15 | Co-op                                                                                       |
		| data16 | 5                                                                                           |
		| data17 | 9                                                                                           |
	Then As User EditAll Run cql from file selectRegularTable108.txt and validate unordered result resultRegularTable166.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
		| data2 | 9     |
	Then As User EditAll Run cql from file selectRegularTable109.txt and validate unordered result resultRegularTable167.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
		| data2 | 9     |

