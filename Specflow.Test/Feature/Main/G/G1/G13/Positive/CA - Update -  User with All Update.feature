Feature: CA - Update - User with All Update

# Use Table UpdateCAEmployee19
# User - User with All

@Rest
Scenario: CA - As user with edit all columns and view all columns, Update a row using select INNER Join as a subquery
	When As User User with All Run cql from file updateCATable142.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
	Then As User User with All Run cql from file selectCATable112.txt and validate unordered result resultCATable180.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |
	Then As User User with All Run cql from file selectCATable113.txt and validate unordered result resultCATable181.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 1     |

@Rest
Scenario: CA - As user with edit all columns and view all columns, Update a row using select LEFT Join as a subquery
	When As User User with All Run cql from file updateCATable143.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
	Then As User User with All Run cql from file selectCATable112.txt and validate unordered result resultCATable182.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |
	Then As User User with All Run cql from file selectCATable113.txt and validate unordered result resultCATable183.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 33    |

@Rest
Scenario: CA - As user with edit all columns and view all columns, Update a row using select RIGHT Join as a subquery
	When As User User with All Run cql from file updateCATable144.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
	Then As User User with All Run cql from file selectCATable112.txt and validate unordered result resultCATable184.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |
	Then As User User with All Run cql from file selectCATable113.txt and validate unordered result resultCATable185.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 32    |

@Rest
Scenario: CA - As user with edit all columns and view all columns, Update a row using select FULL Join as a subquery
	When As User User with All Run cql from file updateCATable145.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
	Then As User User with All Run cql from file selectCATable112.txt and validate unordered result resultCATable186.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |
	Then As User User with All Run cql from file selectCATable113.txt and validate unordered result resultCATable187.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 31    |

@Rest
Scenario: CA - As user with edit all columns and view all columns, Update a row using select CROSS Join as a subquery
	When As User User with All Run cql from file updateCATable146.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
	Then As User User with All Run cql from file selectCATable112.txt and validate unordered result resultCATable188.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |
	Then As User User with All Run cql from file selectCATable113.txt and validate unordered result resultCATable189.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 30    |

@Rest
Scenario: CA - As user with edit all columns and view all columns, Update a row using select WHERE IN as a subquery
	When As User User with All Run cql from file updateCATable147.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User User with All Run cql from file selectCATable112.txt and validate unordered result resultCATable190.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |
	Then As User User with All Run cql from file selectCATable113.txt and validate unordered result resultCATable191.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 2     |

@Rest
Scenario: CA - As user with edit all columns and view all columns, Update a row using select WHERE FROM as a subquery
	When As User User with All Run cql from file updateCATable148.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User User with All Run cql from file selectCATable112.txt and validate unordered result resultCATable192.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |
	Then As User User with All Run cql from file selectCATable113.txt and validate unordered result resultCATable193.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 3     |

@Rest
Scenario: CA - As user with edit all columns and view all columns, Update a row using select WHERE ANY as a subquery
	When As User User with All Run cql from file updateCATable149.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value |
	Then As User User with All Run cql from file selectCATable112.txt and validate unordered result resultCATable194.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |
	Then As User User with All Run cql from file selectCATable113.txt and validate unordered result resultCATable195.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 4     |

@Rest
Scenario: CA - As user with edit all columns and view all columns, Update rows using select INNER Join as a subquery
	When As User User with All Run cql from file updateCATable150.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
	Then As User User with All Run cql from file selectCATable114.txt and validate unordered result resultCATable196.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 29    |
	Then As User User with All Run cql from file selectCATable115.txt and validate unordered result resultCATable197.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 26    |
		| data2 | 29    |

@Rest
Scenario: CA - As user with edit all columns and view all columns, Update rows using select LEFT Join as a subquery
	When As User User with All Run cql from file updateCATable151.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
	Then As User User with All Run cql from file selectCATable114.txt and validate unordered result resultCATable198.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 22    |
		| data2 | 25    |
	Then As User User with All Run cql from file selectCATable115.txt and validate unordered result resultCATable199.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 22    |
		| data2 | 25    |

@Rest
Scenario: CA - As user with edit all columns and view all columns, Update rows using select RIGHT Join as a subquery
	When As User User with All Run cql from file updateCATable152.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
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
	Then As User User with All Run cql from file selectCATable114.txt and validate unordered result resultCATable200.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 18    |
		| data2 | 21    |
	Then As User User with All Run cql from file selectCATable115.txt and validate unordered result resultCATable201.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 18    |
		| data2 | 21    |

@Rest
Scenario: CA - As user with edit all columns and view all columns, Update rows using select FULL Join as a subquery
	When As User User with All Run cql from file updateCATable153.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | 1                                                                                           |
		| data4  | Ajax                                                                                        |
		| data5  | FirstNameTest LastNameTest                                                                  |
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
	Then As User User with All Run cql from file selectCATable114.txt and validate unordered result resultCATable202.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 17    |
	Then As User User with All Run cql from file selectCATable115.txt and validate unordered result resultCATable203.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 14    |
		| data2 | 17    |

@Rest
Scenario: CA - As user with edit all columns and view all columns, Update rows using select CROSS Join as a subquery
	When As User User with All Run cql from file updateCATable154.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 100000                                                                                      |
		| data2  | 09090990090                                                                                 |
		| data3  | 1                                                                                           |
		| data4  | Toronto                                                                                     |
		| data5  | FirstNameTest LastNameTest                                                                  |
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
	Then As User User with All Run cql from file selectCATable114.txt and validate unordered result resultCATable204.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 10    |
		| data2 | 13    |
	Then As User User with All Run cql from file selectCATable115.txt and validate unordered result resultCATable205.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 10    |
		| data2 | 13    |

@Rest
Scenario: CA - As user with edit all columns and view all columns, Update rows using select WHERE FROM as a subquery 
	When As User User with All Run cql from file updateCATable155.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name   | Value                                                                                       |
		| data1  | 2                                                                                           |
		| data2  | 2                                                                                           |
		| data3  | 1                                                                                           |
		| data4  | Toronto                                                                                     |
		| data5  | FirstNameTest LastNameTest                                                                  |
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
	Then As User User with All Run cql from file selectCATable114.txt and validate unordered result resultCATable206.txt with ResultFormat = CSV and QueryType = Query Approved Data and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
		| data2 | 9     |
	Then As User User with All Run cql from file selectCATable115.txt and validate unordered result resultCATable207.txt with ResultFormat = CSV and QueryType = Including Version History and Timeout = 60 seconds
		| Name  | Value |
		| data1 | 5     |
		| data2 | 9     |

